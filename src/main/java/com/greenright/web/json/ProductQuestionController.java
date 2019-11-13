package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.ProductQuestion;
import com.greenright.service.ProductQuestionService;

@RestController("json.ProductQuestionController")
@RequestMapping("/json/ProductQuestion")
public class ProductQuestionController {

  @Resource ProductQuestionService productQuestionService;
  
  @PostMapping("add")
public JsonResult add(ProductQuestion productQuestion) throws Exception{
  try {
    productQuestionService.insert(productQuestion);
    return new JsonResult().setResult(JsonResult.SUCCESS);
  }catch(Exception e) {
    return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
  }
}
}
