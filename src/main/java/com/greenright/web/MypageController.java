package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.domain.ProductOptionItem;
import com.greenright.domain.WishProduct;
import com.greenright.service.MemberService;
import com.greenright.service.ProductOptionItemService;
import com.greenright.service.WishListService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  @Resource private MemberService memberService;
  @Resource private WishListService wishListService;
  @Resource private ProductOptionItemService productOptionItemService;
  
  @GetMapping("memberinfo")
  public void memberinfo(Model model) throws Exception {
  }
  
  @GetMapping("userinfo")
  public void userinfo(Model model) throws Exception {
  }
  
  @PostMapping("update")
  public String update(Member member, HttpSession session) throws Exception {
    memberService.update(member);
    Member loginUser = memberService.getUserInfo(member);
    session.setAttribute("loginUser", loginUser);
    return "mypage/userinfo";
  }
  
  @GetMapping("mypage")
  public void mypage(Member member, HttpSession session) throws Exception {
    Member loginUser = memberService.getUserInfo(member);
    session.setAttribute("loginUser", loginUser);
  }
  
  @GetMapping("order")
  public void order(Member member, HttpSession session) throws Exception {
//    Member loginUser = memberService.getUserInfo(member);
//    session.setAttribute("loginUser", loginUser);
  }
  
  @PostMapping("update2")
  @ResponseBody
  public String update2(Member member
) throws Exception {
    Member loginMember = memberService.login(member);
    if(loginMember != null) {
      return "success";
    } else {
      return "fail";
    }
  }
  
  @GetMapping("wishlist")
  public void wishlist(Model model, HttpSession session) throws Exception {
    if(session.getAttribute("loginUser") != null) {
      int no = ((Member)session.getAttribute("loginUser")).getNo();
      List<WishProduct> wishLists =  wishListService.list(no);
      
      for(WishProduct wishlist : wishLists) {
        if(wishlist.getOptionItemNo() == 0) {
          wishlist.setOptionName("없음");
          continue;
        }
        ProductOptionItem ProductOptionItem = productOptionItemService.searchItemAll(wishlist.getOptionItemNo());
        wishlist.setOptionName(ProductOptionItem.getOptionItemMatter());
        wishlist.setOptionPrice(ProductOptionItem.getOptionsPrice());
      }
      model.addAttribute("wishLists", wishLists);
    }
  }

}

