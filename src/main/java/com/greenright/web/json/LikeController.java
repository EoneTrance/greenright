package com.greenright.web.json;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Like;
import com.greenright.domain.Member;
import com.greenright.service.LikeService;

@RestController("json.LikeController")
@RequestMapping("/json/Like")
public class LikeController {
  @Resource private LikeService likeservice;
  
  @PostMapping("increaseLike")
  public JsonResult increaseLike(HttpSession session,Like like)throws Exception{
    try {
      Member member = (Member) session.getAttribute("loginUser");
      like.setMemberNo(member.getNo());
      likeservice.add(like);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("decreaseLike")
  public JsonResult decreaseLike(HttpSession session,Like like)throws Exception{
    try {
     Member member = (Member) session.getAttribute("loginUser");
     like.setMemberNo(member.getNo());
      likeservice.delete(like);
      return new JsonResult().setResult(JsonResult.SUCCESS);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE);
    }
  }
  @PostMapping("checkLike")
  public JsonResult checkLike(HttpSession session,Like like)throws Exception{
    try {
      Member member = (Member) session.getAttribute("loginUser");
      like.setMemberNo(member.getNo());
      int a = likeservice.check(like);
      return new JsonResult().setResult(JsonResult.SUCCESS).setResult(a);
    }catch (Exception e) {
      return new JsonResult().setResult(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
}
