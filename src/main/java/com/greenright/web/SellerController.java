package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Member;
import com.greenright.domain.Seller;
import com.greenright.service.MemberService;
import com.greenright.service.SellerService;

@Controller
@RequestMapping("seller")
public class SellerController {

  @Resource
  private SellerService sellerService;

  @Resource
  private MemberService memberService;
  
  @Transactional
  @PostMapping("conversion")
  public String conversion(HttpSession session, Seller seller) throws Exception {
    Member member = (Member)session.getAttribute("loginUser");
    seller.setNo(member.getNo());
    if (sellerService.insert(seller) == 1) {
      member.setMemberClass(2);
      memberService.updateClass(member);
      Seller loginSeller = sellerService.get(member.getNo());
      session.setAttribute("loginSeller", loginSeller);
    }
    return "redirect:../mypage/sellerinfo";
  }
  
  @PostMapping("update")
  public String update(HttpSession session, Seller seller) throws Exception {
    Member loginUser = (Member)session.getAttribute("loginUser");
    seller.setNo(loginUser.getNo());
    if (sellerService.update(seller) == 1) {
      Seller loginSeller = sellerService.get(loginUser.getNo());
      session.setAttribute("loginSeller", loginSeller);
    }
    return "redirect:../mypage/sellerinfo";
  }
}
