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
import com.greenright.service.MemberService;
import com.greenright.service.OrderProductService;
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
  private OrderProductService orderProductService;
  
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

    for (Map<String, String> order : orderListmap) {
      ProductOptionItem optionItem =
          productOptionItemService.get(Integer.parseInt(order.get("optionItemNo")));
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
      order.put("productPhoto", products.get(i).getPhotos().get(0).getPhotoPath());
      order.put("sellerName", sellers.get(i).getName());
      orderList.add(order);
    }

    model.addAttribute("orderList", gson.toJson(orderList));
    model.addAttribute("title", " - 주문하기");
  }

  @ResponseBody
  @PostMapping("add")
  public void add(HttpSession session, Model model, Order order, String optionItemList)
      throws Exception {

    Gson gson = new Gson();
    ProductOptionItem[] ItemList = gson.fromJson(optionItemList, ProductOptionItem[].class);

    Member member = (Member) session.getAttribute("loginUser");
    order.setMemberNo(member.getNo());
    order.setPaymentFlag(order.getPaymentWay().equals("vbank") ? 0 : 1);
    
    String paymentWay;
    switch (order.getPaymentWay()) {
      case "samsung" : paymentWay = "삼성페이";
      case "card" : paymentWay = "카드";
      case "trans" : paymentWay = "실시간 계좌이체";
      case "vbank" : paymentWay = "무통장 입금 (가상계좌)";
      case "phone" : paymentWay = "휴대폰 소액결제";
      default : paymentWay = "카드";
    }
    order.setPaymentWay(paymentWay);
    
    List<OrderProduct> orderProductList = new ArrayList<>();
    for (ProductOptionItem item : ItemList) {
      OrderProduct orderProduct = new OrderProduct();

      orderProduct.setOrderNo(order.getNo());
      orderProduct.setOptionItemNo(item.getNo());
      orderProduct.setPrice(item.getOptionsPrice());
      orderProduct.setQuantity(item.getOptionsQuantity());
      orderProductList.add(orderProduct);
    }
    order.setOrderProductList(orderProductList);
    
    orderService.insert(order);
    
    session.setAttribute("orderNo", order.getNo());
  }

  @GetMapping("result")
  public void result(HttpSession session, Model model) throws Exception {
    model.addAttribute("title"," - 주문 완료");
    session.getAttribute("orderNo");
    int no = (Integer)session.getAttribute("orderNo");
    
    List<OrderProduct> orderProductList = orderProductService.get(no);
    Order order = orderService.get(no);
    
    String orderProduct = 
        orderProductList.get(0).getProductOptionItem().getProductOption().getProduct().getProductName() + "["
      + orderProductList.get(0).getProductOptionItem().getOptionItemMatter() + "]";
    if (orderProductList.size() > 1) {
      orderProduct += " 외 " + (orderProductList.size() - 1) + "건";
    }
    model.addAttribute("order", order);
    model.addAttribute("orderProduct", orderProduct);
    model.addAttribute("numberOfOrders", orderProductList.size());
  }
}
