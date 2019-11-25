package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.domain.WishList;
import com.greenright.service.WishListService;

@Controller
@RequestMapping("mypage/wishlist")
public class WishListController {
  @Resource
  private WishListService wishListService;

  @ResponseBody
  @GetMapping("add")
  public int add(@RequestParam(value = "productNo", required = false) int productNo, HttpSession session) throws Exception {
    //세션 구현 시 세션에서 member_id을 받아온다.
    WishList wl = new WishList();
    wl.setMemberId(3);
    wl.setProducId(productNo);
    return wishListService.insert(wl);
  }
  
  @ResponseBody
  @GetMapping("count")
  public int count(HttpSession session) throws Exception {
    if(session.getAttribute("loginUser") != null)
      return wishListService.count(((Member)session.getAttribute("loginUser")).getNo());
    else
      return 0;
  }

}
