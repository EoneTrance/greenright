package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Category;
import com.greenright.domain.Member;
import com.greenright.service.CategoryService;
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
  @PostMapping("update")
  public String update(Member member) throws Exception{
    memberService.update(member);
    return "redirect:memberinfo?no=1";
  }
  
  @Resource
  private CategoryService categoryService;
  @GetMapping("categoryinfo")
  public void categoryinfo(Model model) throws Exception {
    List<Category> category = categoryService.list();
    model.addAttribute("category",category);
  }
  
}
