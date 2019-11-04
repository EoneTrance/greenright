package com.greenright.web;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

public class MemberControllerBak {

  @Resource
  private MemberService memberService;

  @GetMapping("form")
  public void form() {
  }

  @PostMapping("join")
  public void add(Member member) throws Exception {
    memberService.insert(member);
  }

  @GetMapping("list")
  public void list(Model model, String keyword) throws Exception {
    List<Member> members = new ArrayList<>();
    members = memberService.list(keyword);
    model.addAttribute("members", members);
  }
  
  @GetMapping("findId")
  public void findId() {
  }
  
  @PostMapping("foundId")
  public void foundId(Model model, Member member) throws Exception {
    Member foundMember = memberService.getAccount(member);
    model.addAttribute("foundMember",foundMember);
  }
  
  @GetMapping("findPassword")
  public void findPassword() {
  }
}
