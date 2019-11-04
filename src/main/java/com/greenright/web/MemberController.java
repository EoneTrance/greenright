package com.greenright.web;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;
import com.greenright.service.impl.UserMailSendService;

@Controller
@RequestMapping("member")
public class MemberController {

  @Resource
  private MemberService memberService;

  @Resource
  private UserMailSendService mailSender;

  @GetMapping("form")
  public void form() {
  }

  @PostMapping("join")
  public String join(Member member) throws Exception {
    memberService.insert(member);
    mailSender.mailSendWithUserKey(member, UserMailSendService.JOIN);
    return "member/wellcome";
  }

  @GetMapping("list")
  public void list(Model model, String keyword) throws Exception {
    List<Member> members = new ArrayList<>();
    members = memberService.list(keyword);
    model.addAttribute("members", members);
  }

  @GetMapping("mailAuthentication")
  public String mailAuthentication(Member member) throws Exception {
    if (mailSender.setState(member, UserMailSendService.JOIN) != 1) {
      return "auth/invalidAuth";
    }
    return "member/mailAuthentication";
  }
  
  @GetMapping("wellcome")
  public void wellcome(Member member) {
  }
  
  @PostMapping("findAccount/*")
  public String findAccount(Model model, String foundId) {
    model.addAttribute("path", "findPw");
    model.addAttribute("foundId", foundId);
    return "member/findAccount";
  }

  @GetMapping("findAccount/*")
  public String findAccount(Model model, HttpServletRequest request) {
    if (request.getRequestURI().endsWith("id")) {
      model.addAttribute("path", "findId");
    } else if (request.getRequestURI().endsWith("pw")) {
      model.addAttribute("path", "findPw");
    }
    return "member/findAccount";
  }

  @PostMapping("findResult/*")
  public String findResult(Model model, Member member, HttpServletRequest request) throws Exception {
    Member foundMember;
    if (request.getRequestURI().endsWith("id")) {
      foundMember = memberService.getAccount(member);
      model.addAttribute("path", "findId");
      if (foundMember != null) {
        model.addAttribute("foundMember",foundMember);
      }
    } else if (request.getRequestURI().endsWith("pw")) {
      foundMember = memberService.getAccountWithId(member);
      model.addAttribute("path", "findPw");
      if (foundMember != null) {
        model.addAttribute("foundMember",foundMember);
        mailSender.mailSendWithUserKey(foundMember, UserMailSendService.FINDACCOUNT);
      }
    }
    return "member/findResult";
  }

  @GetMapping("changePassword")
  public String changePassword(Member member) throws Exception {
    if (mailSender.setState(member, UserMailSendService.FINDACCOUNT) != 1) {
      return "auth/invalidAuth";
    }
    return "member/changePassword";
  }

  @PostMapping("changeResult")
  public String changeResult(Member member) throws Exception {
    if (memberService.passwordUpdate(member) != 1) {
      return "auth/invalidAuth";
    }
    return "member/changeResult";
  }
}
