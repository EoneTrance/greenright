package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Like;
import com.greenright.service.LikeService;

@Controller
@RequestMapping("like")
public class LikeController {
  
  @Resource private LikeService likeService;
  
  @ResponseBody
  @GetMapping("productlist")
  public List<Like> productlist(@RequestParam(value = "userNo", required = false) int userNo) throws Exception {
    return likeService.findLikeProduct(userNo);
  }
}
