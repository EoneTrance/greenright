package com.greenright.web.json;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Basket;
import com.greenright.domain.Member;
import com.greenright.domain.Product;
import com.greenright.service.BasketService;
import com.greenright.service.ProductService;

@RestController("json.BasketController")
@RequestMapping("/json/basket")
public class BasketController {
  
  @Resource
  private BasketService basketService;
  
  @Resource
  private ProductService productService;
  
  @GetMapping("add")
  public JsonResult add(HttpSession session, int productNo) throws Exception {
    Member loginUser = (Member)session.getAttribute("loginUser");
    Product foundProduct = productService.get(productNo);
    Basket basket = new Basket();
    System.out.println(foundProduct);
    basket.setMemberNo(loginUser.getNo());
    basket.setProduct(foundProduct);
    try {
      if (basketService.insert(basket) != 1) {
        return new JsonResult().setState(JsonResult.SUCCESS);
      } else {
        return new JsonResult().setState(JsonResult.FAILURE);
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
