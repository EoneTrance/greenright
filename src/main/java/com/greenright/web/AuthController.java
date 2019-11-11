package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;
import com.greenright.service.impl.UserMailSendService;

@Controller
@RequestMapping("auth")
public class AuthController {

  @Resource
  MemberService memberService;

  @Resource
  UserMailSendService mailSender;

  @GetMapping("form")
  public void form(Model model, HttpServletRequest request) throws Exception {
    model.addAttribute("title", " - 로그인");
  }

  @PostMapping("login")
  public String login(HttpServletResponse response, HttpServletRequest request,
      HttpSession session, Model model, Member member)
      throws Exception {
    Cookie cookie = new Cookie("id", member.getId());
    cookie.setMaxAge(60 * 60 * 24 * 30);
    response.addCookie(cookie);

    Member loginUser = memberService.login(member);
    session.setAttribute("loginUser", loginUser);
    String redirectURI = (String)request.getSession().getAttribute("redirectURI");
    if (redirectURI.indexOf("auth") != -1 || redirectURI == null) {
      redirectURI = "/greenright/main";
    }
    return "redirect:" + redirectURI;
  }
  
  @GetMapping("logout")
  public String logout(HttpSession session, HttpServletRequest request) throws Exception {
    session.invalidate();
    request.getHeader("referer");
    return "redirect:" + request.getHeader("referer");
  }
}