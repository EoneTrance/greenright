package com.greenright.web.json;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Basket;
import com.greenright.domain.Member;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.domain.Seller;
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
  public JsonResult add(HttpSession session, int no) throws Exception {
    Member loginUser = (Member)session.getAttribute("loginUser");
    ProductOptionItem optionItem = productOptionItemService.get(no);
    optionItem.setOptionsQuantity(1);
    Basket basket = new Basket();
    
    basket.setMemberNo(loginUser.getNo());
    basket.setOptionItemNo(optionItem.getNo());
    basket.setQuantity("1");
    basket.setProductOptionItem(optionItem);
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
  
  @GetMapping("list")
  public JsonResult list(HttpSession session, Model model) throws Exception {
    Member loginUser = (Member)session.getAttribute("loginUser");
    
    List<Basket> baskets = basketService.list(loginUser.getNo());
    List<ProductOptionItem> optionItems = new ArrayList<>();
    List<ProductOption> optnions = new ArrayList<>();
    List<Product> products = new ArrayList<>();
    List<Member> members = new ArrayList<>();
    for (Basket basket : baskets) {
      optionItems.add(productOptionItemService.get(basket.getOptionItemNo()));
    }
    for (ProductOptionItem optionItem : optionItems) {
      optnions.add(productOptionService.get(optionItem.getOptionsNo()));
    }
    for (ProductOption option : optnions) {
      products.add(productService.get(option.getProductNo()));
    }
    for (Product product : products) {
      members.add(memberService.get(product.getMemberNo()));
    }
    
    List<Object> basketList = new ArrayList<>();
    for (int i = 0; i < baskets.size(); i++) {
      List<Object> basket = new ArrayList<>();
      basket.add(optionItems.get(i));
      basket.add(optnions.get(i));
      basket.add(products.get(i));
      basket.add(baskets.get(i));
      basket.add(members.get(i));
      basketList.add(basket);
    }
    
    try {
      if (basketList.size() != 0) {
        return new JsonResult().setState(JsonResult.SUCCESS).setResult(basketList);
      } else {
        return new JsonResult().setState(JsonResult.FAILURE);
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
