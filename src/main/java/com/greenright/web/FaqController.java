package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Faq;
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
  public String add(Faq faq) throws Exception {
    faqService.insert(faq);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    faqService.delete(no);
    return "redirect:list";
  }
  
  
  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Faq> faqs = faqService.list();
    model.addAttribute("faqs",faqs);
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Faq faq = faqService.get(no);
    model.addAttribute("faq", faq);
  }
  
  
  @GetMapping("search")
  public void search(Model model, String keyword) throws Exception {
    List<Faq> faqs = faqService.search(keyword);
    model.addAttribute("faqs", faqs);
    
  }
  
  @PostMapping("update")
  public String update(Faq faq) throws Exception {
    faqService.update(faq);
    return "redirect:list";
  }
  
  
  
  
  
}
