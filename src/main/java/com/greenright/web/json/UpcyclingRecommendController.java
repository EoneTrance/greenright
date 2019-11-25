package com.greenright.web.json;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Member;
import com.greenright.domain.UpcyclingRecommend;
import com.greenright.service.UpcyclingRecommendService;

@RestController("json.UpcyclingRecommendController")
@RequestMapping("/json/UpcyclingRecommend")
public class UpcyclingRecommendController {
  @Resource private UpcyclingRecommendService upcyclingRecommendService;
  
  
  @PostMapping("increaseRecommend")
  public JsonResult increaseRecommend(HttpSession Session,UpcyclingRecommend upcyclingRecommend)throws Exception{
    Member member =(Member)Session.getAttribute("loginUser");
    int a = member.getNo() ;
    
    upcyclingRecommend.setUpcyclingRecommendMemberNo(a);
    try {
      upcyclingRecommendService.add(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("decreaseRecommend")
  public JsonResult decreaseRecommend(HttpSession Session,UpcyclingRecommend upcyclingRecommend)throws Exception{
    Member member =(Member)Session.getAttribute("loginUser");
    int a = member.getNo() ;
    
    upcyclingRecommend.setUpcyclingRecommendMemberNo(a);
    try {
      upcyclingRecommendService.delete(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("getRecommendNum")
  public JsonResult getRecommendNum (int upcyclingRecommendProductNo) throws Exception{
    try {
      int Num  = upcyclingRecommendService.getRecommendNumbyProductNo(upcyclingRecommendProductNo);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(Num);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  
  
  @PostMapping("checkLike")
  public JsonResult checkLike(HttpSession Session,UpcyclingRecommend upcyclingRecommend)throws Exception{
    Member member =(Member)Session.getAttribute("loginUser");
    int b = member.getNo() ;
    upcyclingRecommend.setUpcyclingRecommendMemberNo(b);
    try {
      int a = upcyclingRecommendService.checkRecommendForCheck(upcyclingRecommend);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(a);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
