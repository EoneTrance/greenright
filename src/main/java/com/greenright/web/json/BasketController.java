package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Basket;
import com.greenright.domain.Member;
import com.greenright.service.BasketService;
import com.greenright.service.MemberService;
import com.greenright.service.ProductOptionItemService;
import com.greenright.service.ProductOptionService;
import com.greenright.service.ProductService;

@RestController("json.BasketController")
@RequestMapping("/json/basket")
public class BasketController {

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

  @GetMapping("add")
  public JsonResult add(HttpSession session, Basket basket) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    basket.setMemberNo(loginUser.getNo());
    try {
      if (basketService.insert(basket) == 1) {
        return new JsonResult().setState(JsonResult.SUCCESS);
      } else {
        return new JsonResult().setState(JsonResult.FAILURE);
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

//  @GetMapping("list")
//  public JsonResult list(HttpSession session, Model model) throws Exception {
//    Member loginUser = (Member) session.getAttribute("loginUser");
//
//    List<Basket> baskets = basketService.list(loginUser.getNo());
//    List<ProductOptionItem> optionItems = new ArrayList<>();
//    List<ProductOption> options = new ArrayList<>();
//    List<Product> products = new ArrayList<>();
//    List<Member> members = new ArrayList<>();
//    for (Basket basket : baskets) {
//      optionItems.add(productOptionItemService.get(basket.getOptionItemNo()));
//    }
//    for (ProductOptionItem optionItem : optionItems) {
//      options.add(productOptionService.get(optionItem.getOptionsNo()));
//    }
//    for (ProductOption option : options) {
//      products.add(productService.get(option.getProductNo()));
//    }
//    for (Product product : products) {
//      members.add(memberService.get(product.getMemberNo()));
//    }
//
//    List<Object> basketList = new ArrayList<>();
//    for (int i = 0; i < baskets.size(); i++) {
//      Map<String, Object> basket = new HashMap<>();
//      basket.put("optionItemNo", optionItems.get(i).getNo());
//      basket.put("optionItemMatter", optionItems.get(i).getOptionItemMatter());
//      basket.put("optionItemPrice", optionItems.get(i).getOptionsPrice());
//      basket.put("optionItemQuantity", optionItems.get(i).getOptionsQuantity());
//      basket.put("optionName", options.get(i).getOptionName());
//      basket.put("productNo", products.get(i).getNo());
//      basket.put("productName", products.get(i).getProductName());
//      basket.put("productPrice", products.get(i).getPrice());
//      basket.put("basketQuantity", baskets.get(i).getQuantity());
//      basket.put("sellerName", members.get(i).getName());
//      basketList.add(basket);
//    }
//
//    try {
//      if (basketList.size() != 0) {
//        return new JsonResult().setState(JsonResult.SUCCESS).setResult(basketList);
//      } else {
//        return new JsonResult().setState(JsonResult.FAILURE);
//      }
//    } catch (Exception e) {
//      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
//    }
//  }
  
  @GetMapping("list")
  public JsonResult list(HttpSession session) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    List<Basket> basketList = basketService.list(loginUser.getNo());
    try {
      if (basketList.size() > 0) {
        return new JsonResult().setState(JsonResult.SUCCESS).setResult(basketList);
      } else {
        return new JsonResult().setState(JsonResult.FAILURE);
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
}