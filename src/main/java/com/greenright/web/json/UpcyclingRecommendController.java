package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.UpcyclingRecommend;
import com.greenright.service.UpcyclingRecommendService;

@RestController("json.UpcyclingRecommendController")
@RequestMapping("/json/UpcyclingRecommend")
public class UpcyclingRecommendController {
  @Resource private UpcyclingRecommendService upcyclingRecommendService;
  
  
  @PostMapping("increaseLike")
  public JsonResult increaseRecommend(UpcyclingRecommend upcyclingRecommend)throws Exception{
    try {
      upcyclingRecommendService.add(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("decreaseLike")
  public JsonResult decreaseLike(UpcyclingRecommend upcyclingRecommend)throws Exception{
    try {
      upcyclingRecommendService.delete(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("checkLike")
  public JsonResult checkLike(UpcyclingRecommend upcyclingRecommend)throws Exception{
    try {
      int a = upcyclingRecommendService.checkRecommendForCheck(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(a);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
