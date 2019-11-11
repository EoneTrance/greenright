package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  @Resource
  private MemberService memberService;
  
  @GetMapping("")
  public void mypage(Member member) throws Exception {
  }
  
  @GetMapping("memberinfo")
  public void memberinfo(Model model) throws Exception {
  }
  
  @GetMapping("userinfo")
  public void userinfo(Model model) throws Exception {
    model.addAttribute("title", " - 기본정보");
  }
  
  @PostMapping("update")
  public String update(Member member, HttpSession session) throws Exception {
    memberService.update(member);
    Member loginUser = memberService.getUserInfo(member);
    session.setAttribute("loginUser", loginUser);
    return "mypage/userinfo";
  }
  
  @GetMapping("order")
  public void order(Member member, HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 구매내역");
//    Member loginUser = memberService.getUserInfo(member);
//    session.setAttribute("loginUser", loginUser);
  }
  
  @GetMapping("sale")
  public void sale(Member member, HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 판매내역");
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
}

