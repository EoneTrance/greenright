package com.greenright.web.json;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.PrivateBoard;
import com.greenright.service.PrivateBoardService;


@RestController("json.InquireController")
@RequestMapping("/mypage/json/inquire")
public class InquireController {
  

  @Resource private PrivateBoardService privateBoardService;

  @GetMapping("list")
  public JsonResult inquire(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      HttpSession session,
      String questionType) throws Exception {
   
    // 총 페이지 개수 알아내기
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = privateBoardService.size();
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
      
    }
    
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
      
   
    session.setAttribute("no", 1);
    int no = (int)session.getAttribute("no");
    
    try {
    List<PrivateBoard> privateBoards = privateBoardService.list(no,pageNo, pageSize, questionType);
    
    HashMap<String,Object> result = new HashMap<>();
    result.put("privateBoards", privateBoards);
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




}
