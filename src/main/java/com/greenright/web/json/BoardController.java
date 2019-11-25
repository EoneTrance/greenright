package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Board;
import com.greenright.service.BoardService;
import com.greenright.web.BoardPhotoWriter;

@RestController("json.BoardController")
@RequestMapping("/json/board")
public class BoardController {
  @Resource private BoardService boardService;
  @Resource private BoardPhotoWriter boardPhotoWriter;
  @GetMapping("search1")
  public JsonResult search1(String title,int pageNo, int pageSize) throws Exception {
    try {
      List<Board> members = boardService.search1(title,pageNo,pageSize);
      return new JsonResult()
          .setState(JsonResult.SUCCESS)
          .setResult(members);

    } catch (Exception e) {
      return new JsonResult()
          .setState(JsonResult.FAILURE)
          .setMessage(e.getMessage());
    }
  }
  @GetMapping("search2")
  public JsonResult search2(String title,int pageNo, int pageSize) throws Exception {
    try {
      List<Board> members = boardService.search2(title,pageNo,pageSize);
      return new JsonResult()
          .setState(JsonResult.SUCCESS)
          .setResult(members);

    } catch (Exception e) {
      return new JsonResult()
          .setState(JsonResult.FAILURE)
          .setMessage(e.getMessage());
    }
  }
  @GetMapping("search3")
  public JsonResult search3(String title,int pageNo, int pageSize) throws Exception {
    try {
      List<Board> members = boardService.search3(title,pageNo,pageSize);
      return new JsonResult()
          .setState(JsonResult.SUCCESS)
          .setResult(members);

    } catch (Exception e) {
      return new JsonResult()
          .setState(JsonResult.FAILURE)
          .setMessage(e.getMessage());
    }
  }
  
}
