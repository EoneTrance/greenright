package com.greenright.web;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.greenright.domain.Faq;
import com.greenright.domain.Member;
import com.greenright.service.FaqService;

@Controller
@RequestMapping("/faq")
public class FaqController {
  
  @Autowired
  private FaqService faqService;
  
  @GetMapping("form")
  public void form() {
  }
  
  @PostMapping("add")
  public String add(HttpServletRequest request, HttpSession session, Faq faq) throws Exception {
    Member loginUser = (Member)session.getAttribute("loginUser");
    if(loginUser.getMemberClass() != 0) {
      return "redirect:list";
    }
    faq.setMemberNo(loginUser.getNo());
    faqService.insert(faq);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no, HttpSession session) throws Exception {
    if(((Member)session.getAttribute("loginUser")).getMemberClass() == 0) {
      faqService.delete(no);
    }
    return "redirect:list";
  }
  
  
  @GetMapping("list")
  public void list(
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "5") int pageSize,
      Model model,
      HttpSession session) throws Exception {
    
    if(pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    
    int size = faqService.size(null, null);
    int totalPage = size / pageSize;
    if (size % pageSize > 0) {
      totalPage++;
    }
    
    if(pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
    List<Faq> faqs = faqService.list(pageNo, pageSize, null, null);
    model.addAttribute("faqs", faqs);
    model.addAttribute("pageNo", pageNo);
    model.addAttribute("pageSize", pageSize);
    model.addAttribute("totalPage", totalPage);
    model.addAttribute("size", size);
    model.addAttribute("beginPage", (pageNo -2) > 0 ? (pageNo - 2) : 1);
    model.addAttribute("endPage", (pageNo + 4) < totalPage ? (pageNo + 4) : totalPage);
    model.addAttribute("memberClass", session.getAttribute("memberClass"));
//    model.addAttribute("beginPage", (pageNo -2) > 0 ? (pageNo - 2) : 1);
//    model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
    
  }
  
  
  
  
  @GetMapping("detail")
  public void detail(Model model, int no, HttpSession session) throws Exception {
    session.getAttribute("loginUser");
    Faq faq = faqService.get(no);
    model.addAttribute("faq", faq);
  }
  
  
//  @GetMapping("search")
//  public void search(Model model, String keyword) throws Exception {
//    List<Faq> faqs = faqService.search(keyword);
//    model.addAttribute("faqs", faqs);
//    
//  }
  
  @PostMapping("update")
  public String update(Faq faq, HttpSession session) throws Exception {
    
    if(((Member)session.getAttribute("loginUser")).getMemberClass() == 0) {
      faqService.update(faq);
    }
    return "redirect:list";
  }
  
  
  
  
  
}
