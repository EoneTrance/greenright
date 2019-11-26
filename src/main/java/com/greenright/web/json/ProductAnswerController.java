package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.ProductAnswer;
import com.greenright.service.ProductAnswerService;

@RestController("json.ProductAnswerController")
@RequestMapping("/json/ProductAnswer")
public class ProductAnswerController {
  
  @Resource ProductAnswerService productAnswerService;
  
  //맨처음에 상품 에 따라 상품 질문을 가져올때 상품 질문 번호에 따른 상품 답변도 같이 가져오도록 => productqUestion 에서 처리 
  //상품 질문 번호에 따라 답변을 가져오는 메서드 상품 질문에 대한 답변을 올리면 바로 질문에 답변이 달리게 할려면 필요함 . 
  //상품 질문 번호로 답변할수있게만드는 메서드
  @PostMapping("add")
  public JsonResult  add(ProductAnswer productAnswer) throws Exception {
    try {
      productAnswerService.add(productAnswer);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  
}
