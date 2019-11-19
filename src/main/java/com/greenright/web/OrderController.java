package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.service.BasketService;

@Controller
@RequestMapping("order")
public class OrderController {
  
  @Resource
  BasketService basketService;
  
  @GetMapping("form")
  public void list(HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 주문하기");
  }
}
