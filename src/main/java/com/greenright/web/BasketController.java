package com.greenright.web;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("basket")
public class BasketController {

  @GetMapping("list")
  public void list(HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 장바구니");
  }
}
