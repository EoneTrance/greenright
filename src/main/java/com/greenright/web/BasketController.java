package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Basket;
import com.greenright.service.BasketService;

@Controller
@RequestMapping("basket")
public class BasketController {
  
  @Resource
  BasketService basketService;
  
  @GetMapping("list")
  public void basket(Model model, int no) throws Exception {
    List<Basket> baskets = basketService.list(no);
    model.addAttribute(baskets);
    model.addAttribute("title", " - 장바구니");
  }
}
