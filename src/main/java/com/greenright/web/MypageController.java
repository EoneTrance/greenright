package com.greenright.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  @Resource
  private MemberService memberService;
  
  @GetMapping("memberinfo")
  public void memberinfo(Model model, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    Member member = memberService.get((int)session.getAttribute("no"));
    model.addAttribute("member",member);
  }
  @PostMapping("update")
  public String update(Member member) throws Exception {
    memberService.update(member);
    return "redirect:memberinfo";
  }
  
  @PostMapping("update2")
  @ResponseBody
  public String update2(@RequestParam(value = "id", required = false) String id, @RequestParam(value = "pw", required = false) String pw
) throws Exception {
    int pwcheck = memberService.pwcheck(id, pw);
    if(pwcheck == 1) {
      return "success";
    } else {
      return "fail";
    }
  }

}

