package com.greenright.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenright.domain.Member;
import com.greenright.service.MemberService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  @Resource
  private MemberService memberService;
  @GetMapping("memberinfo")
  public void memberinfo(Model model, int no) throws Exception {
    Member member = memberService.get(no);
    model.addAttribute("member",member);
  }
}
