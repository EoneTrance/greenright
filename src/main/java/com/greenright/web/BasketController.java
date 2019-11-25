package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Basket;
import com.greenright.domain.Member;
import com.greenright.service.BasketService;

@Controller
@RequestMapping("basket")
public class BasketController {

  @Resource
  BasketService basketService;
  
  @GetMapping("list")
  public void list(HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 장바구니");
  }
  
  @ResponseBody
  @GetMapping("delete")
  public  void delete(HttpSession session, int[] optionItemNoList) throws Exception {
    Member member = (Member)session.getAttribute("loginUser");
    for (int optionItemNo : optionItemNoList) {
      Basket basket = new Basket();
      basket.setOptionItemNo(optionItemNo);
      basket.setMemberNo(member.getNo());
      basketService.delete(basket);
    }
  }
}
