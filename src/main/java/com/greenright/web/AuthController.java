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
import com.greenright.domain.Seller;
import com.greenright.service.MemberService;
import com.greenright.service.SellerService;
import com.greenright.service.impl.UserMailSendService;

@Controller
@RequestMapping("auth")
public class AuthController {

  @Resource
  MemberService memberService;

  @Resource
  SellerService sellerService;
  
  @Resource
  UserMailSendService mailSender;

  @GetMapping("form")
  public String form(HttpSession session, Model model) throws Exception {
    if (session.getAttribute("loginUser") != null) {
      return "redirect:/greenright/main";
    }
    model.addAttribute("title", " - 로그인");
    return "auth/form";
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
    if(loginUser.getMemberClass()==2) {
      Seller loginSeller = sellerService.get(loginUser.getNo());
      if (loginSeller != null) {
        session.setAttribute("loginSeller", loginSeller);
      }
    }
    
    
    String redirectURI = (String)request.getSession().getAttribute("redirectURI");
    if (redirectURI == null || redirectURI.indexOf("auth") != -1) {
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
  
  @GetMapping("mailAuthentication")
  public String mailAuthentication(Member member) throws Exception {
    if (mailSender.setState(member, UserMailSendService.JOIN) != 1) {
      return "auth/invalidAuth";
    }
    return "auth/mailAuthentication";
  }
  
  @GetMapping("wellcome")
  public void wellcome(Model model) {
  }
}