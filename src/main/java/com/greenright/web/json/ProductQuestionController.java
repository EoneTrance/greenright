package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Member;
import com.greenright.domain.ProductQuestion;
import com.greenright.service.ProductQuestionService;

@RestController("json.ProductQuestionController")
@RequestMapping("/json/ProductQuestion")
public class ProductQuestionController {

  @Resource ProductQuestionService productQuestionService;
  
  @PostMapping("add")
public JsonResult add(ProductQuestion productQuestion,HttpSession session) throws Exception{
  try {
    Member member = (Member)session.getAttribute("loginUser");
    productQuestion.setMemberNo(member.getNo());
    productQuestionService.insert(productQuestion);
    return new JsonResult().setResult(JsonResult.SUCCESS);
  }catch(Exception e) {
    return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
  }
}
  @GetMapping("getQuestion")
  public JsonResult getQuestion(int no)throws Exception{
    try {
      List<ProductQuestion>ProductQuestionList = productQuestionService.get(no);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(ProductQuestionList);
    }catch(Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("getOneQuestion")
  public JsonResult getOnteQuestion (int questionNo) throws Exception{
    try{
     ProductQuestion productQuestion= productQuestionService.getOneQuestion(questionNo);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(productQuestion);
      }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
}
