package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.domain.WishProduct;
import com.greenright.service.WishListService;

@Controller
@RequestMapping("mypage/checkout")
public class CheckoutController {
  @Resource
  private WishListService wishListService;

  
  @ResponseBody
  @GetMapping("count")
  public int count(HttpSession session) throws Exception {
    if(session.getAttribute("loginUser") != null)
      return wishListService.count(((Member)session.getAttribute("loginUser")).getNo());
    else
      return 0;
  }

}
