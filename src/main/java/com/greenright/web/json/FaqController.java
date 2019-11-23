package com.greenright.web.json;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Faq;
import com.greenright.service.FaqService;

@RestController("json.FAQController")
@RequestMapping("/json/faq")
public class FaqController {

  @Resource private FaqService faqService;
  
  
  @PostMapping("add")
  public JsonResult add(Faq faq) throws Exception {
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
      Faq faq = faqService.get(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(faq);
      
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("list")
  public JsonResult list(
      @RequestParam(defaultValue = "1") int pageNo,
      @RequestParam(defaultValue = "10") int pageSize,
      String keyword,
      String questionType) throws Exception {
    
    if(pageSize < 10 || pageSize > 20) {
      pageSize = 10;
    }
    
    int size = faqService.size(keyword, questionType);
    int totalPage = size / pageSize;
    if(size % pageSize > 0) {
      totalPage++;
    }
    
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
    
    try {
    List<Faq> faqs = faqService.list(pageNo, pageSize, keyword, questionType);
    
    HashMap<String,Object> result = new HashMap<>();
    result.put("faqs", faqs);
    result.put("pageNo", pageNo);
    result.put("pageSize", pageSize);
    result.put("totalPage", totalPage);
    result.put("size", size);
    result.put("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
    result.put("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
    
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(result);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  
  @PostMapping("update")
  public JsonResult update(Faq faq) throws Exception {
    try {
      faqService.update(faq);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
 }
