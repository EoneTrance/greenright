package com.greenright.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.greenright.domain.Member;
import com.greenright.domain.Order;
import com.greenright.domain.OrderProduct;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.service.BasketService;
import com.greenright.service.MemberService;
import com.greenright.service.OrderService;
import com.greenright.service.ProductOptionItemService;
import com.greenright.service.ProductOptionService;
import com.greenright.service.ProductService;

@Controller
@RequestMapping("order")
public class OrderController {
  
  @Resource
  private OrderService orderService;
  
  @Resource
  private BasketService basketService;
  
  @Resource
  private ProductOptionItemService productOptionItemService;
  
  @Resource
  private ProductOptionService productOptionService;
  
  @Resource
  private ProductService productService;
  
  @Resource
  private MemberService memberService;
  
  @SuppressWarnings("unchecked")
  @PostMapping("form")
  public void form(HttpSession session, Model model, String orderListJson) throws Exception {
    Gson gson = new Gson();
    ArrayList<Map<String, String>> orderListmap = gson.fromJson(orderListJson, ArrayList.class);
    
    List<ProductOptionItem> optionItems = new ArrayList<>();
    List<ProductOption> options = new ArrayList<>();
    List<Product> products = new ArrayList<>();
    List<Member> sellers = new ArrayList<>();
    
    for (Map<String,String> order : orderListmap) {
      ProductOptionItem optionItem = productOptionItemService.get(Integer.parseInt(order.get("optionItemNo")));
      optionItem.setOptionsQuantity(Integer.parseInt(order.get("quantity")));
      optionItems.add(optionItem);
    }
    for (ProductOptionItem optionItem : optionItems) {
      options.add(productOptionService.get(optionItem.getOptionsNo()));
    }
    for (ProductOption option : options) {
      products.add(productService.get(option.getProductNo()));
    }
    for (Product product : products) {
      sellers.add(memberService.get(product.getMemberNo()));
    }
    
    List<Object> orderList = new ArrayList<>();
    for (int i = 0; i < orderListmap.size(); i++) {
      Map<String, Object> order = new HashMap<>();
      order.put("optionItemNo", optionItems.get(i).getNo());
      order.put("optionItemMatter", optionItems.get(i).getOptionItemMatter());
      order.put("optionItemPrice", optionItems.get(i).getOptionsPrice());
      order.put("optionItemQuantity", optionItems.get(i).getOptionsQuantity());
      order.put("optionName", options.get(i).getOptionName());
      order.put("productNo", products.get(i).getNo());
      order.put("productName", products.get(i).getProductName());
      order.put("productPrice", products.get(i).getPrice());
      order.put("sellerName", sellers.get(i).getName());
      orderList.add(order);
    }
    
    model.addAttribute("orderList", gson.toJson(orderList));
    model.addAttribute("title", " - 주문하기");
  }
  
  @ResponseBody
  @PostMapping("add")
  public void add (HttpSession session, Model model, Order order, String optionItemList) throws Exception {
    
    Gson gson = new Gson();
    
    Member member = (Member)session.getAttribute("loginUser");
    
    ProductOptionItem[] ItemList = gson.fromJson(optionItemList, ProductOptionItem[].class);
    
    order.setMemberNo(member.getNo());
    order.setPaymentFlag(order.getPaymentWay().equals("vbank") ? 0 : 1);
    
    List<OrderProduct> orderProducts = new ArrayList<>();
    for (ProductOptionItem item : ItemList) {
      OrderProduct orderProduct = new OrderProduct();
      ProductOptionItem optionItem = new ProductOptionItem();
      
      optionItem = productOptionItemService.get(item.getNo());
      orderProduct.setOrderNo(order.getNo());
      orderProduct.setOptionItemNo(optionItem.getNo());
      orderProduct.setPrice(item.getOptionsPrice());
      orderProduct.setQuantity(item.getOptionsQuantity());
      orderProducts.add(orderProduct);
    }
    order.setOrderProducts(orderProducts);
    
    orderService.insert(order);
    
    Order getOrderDate = orderService.findBy(order.getNo());
    order.setPaymentDate(getOrderDate.getPaymentDate());
    
    session.setAttribute("order", order);
  }
  
  @GetMapping("result")
  public void result () throws Exception {
  }
}
