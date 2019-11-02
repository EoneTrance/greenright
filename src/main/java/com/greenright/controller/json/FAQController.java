package com.greenright.controller.json;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.FAQ;
import com.greenright.service.FAQService;

@RestController("json.FAQController")
@RequestMapping("/json/faq")
public class FAQController {

  @Resource private FAQService faqService;
  
  
  @PostMapping("add")
  public JsonResult add(FAQ faq) throws Exception {
    try {
      faqService.insert(faq);
      return new JsonResult().setState(JsonResult.SUCCESS);
    
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE)
          .setMessage(e.getMessage());
    }
  }
  
  @GetMapping("delete")
  public JsonResult delete(int no) throws Exception {
    try {
      faqService.delete(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    
    } catch (Exception e) {
      return new JsonResult()
          .setState(JsonResult.FAILURE)
          .setMessage(e.getMessage());
    }
  }
  
  @GetMapping("detail")
  public JsonResult detail(int no) throws Exception {
    try {
      FAQ faq = faqService.get(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(faq);
      
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("list")
  public JsonResult list() throws Exception {
    try {
      List<FAQ> faqs = faqService.list();
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(faqs);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("search")
  public JsonResult searach(String keyword) throws Exception{
    try {
      List<FAQ> faqs = faqService.search(keyword);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(faqs);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @PostMapping("update")
  public JsonResult update(FAQ faq) throws Exception {
    try {
      faqService.update(faq);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
 }
