package com.greenright.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  
  @Autowired
  private MemberService memberService;
  
  
  @GetMapping("memberinfo")
  public void memberinfo(Model model, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    Member member = memberService.get((int)session.getAttribute("no"));
    model.addAttribute("member", member);  
  }
  
  @GetMapping("memberinfo2")
  public void memberinfo2(Model model, int no) throws Exception {
    Member member = memberService.get(no);
    model.addAttribute("member", member);  
  }
  
  @GetMapping("test")
  public void test(Model model, int no) throws Exception {
    Member member = memberService.get(no);
    model.addAttribute("member", member);  
  }
  
  @PostMapping("update")
  public String update(Member member) throws Exception {
    memberService.update(member);
    return "/mypage/update";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    memberService.delete(no);
    return "/mypage/deleteOK";
  }
  
}
