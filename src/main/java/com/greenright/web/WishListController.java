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
    WishList wl = new WishList();
    wl.setMemberId(((Member)session.getAttribute("loginUser")).getNo());
    wl.setProductId(productNo);
    return wishListService.insert(wl);
  }
  
  @ResponseBody
  @GetMapping("add2")
  public int add2(@RequestParam(value = "productNo", required = false) int productNo,
                  @RequestParam(value = "itemNo", required = false) int itemNo,
                  @RequestParam(value = "quantity", required = false) int quantity,HttpSession session) throws Exception {
    WishList wl = new WishList();
    wl.setMemberId(((Member)session.getAttribute("loginUser")).getNo());
    wl.setProductId(productNo);
    wl.setItemNo(itemNo);
    wl.setQuantity(quantity);
    return wishListService.insertFull(wl);
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
