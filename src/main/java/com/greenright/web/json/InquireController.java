package com.greenright.web.json;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.PrivateBoard;
import com.greenright.domain.PrivateBoardAnswers;
import com.greenright.service.PrivateBoardAnswersService;
import com.greenright.service.PrivateBoardService;


@RestController("json.InquireController")
@RequestMapping("/json/inquire")
public class InquireController {
  

  @Resource private PrivateBoardService privateBoardService;
  @Resource private PrivateBoardAnswersService privateBoardAnswersService;

  @GetMapping("list")
  public JsonResult inquire(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      String questionType,
      String answerTF,
      HttpSession session
     ) throws Exception {
   
    // 총 페이지 개수 알아내기
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = privateBoardService.size(questionType);
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
    List<PrivateBoard> privateBoards = privateBoardService.list(no, pageNo, pageSize, questionType, answerTF);
    
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
  
  @PostMapping("manager/add")
  @ResponseBody
  @Transactional
  public JsonResult manageradd(@RequestBody PrivateBoardAnswers privateBoardAnswers, HttpSession session) throws Exception {
    PrivateBoard privateBoard = privateBoardService.get(privateBoardAnswers.getPrivateQuestion());
    privateBoard.setAnswerTrueFalse("답변완료");
    privateBoardAnswersService.insert(privateBoardAnswers);
    privateBoardService.stateUpdate(privateBoard);
    
    return new JsonResult().setState(JsonResult.SUCCESS);
  }
  
  /*
   * @GetMapping("manager/delete")
   * 
   * @ResponseBody
   * 
   * @Transactional public JsonResult delete(int no, @RequestBody PrivateBoardAnswers
   * privateBoardAnswers) throws Exception { PrivateBoard privateBoard =
   * privateBoardService.get(privateBoardAnswers.getPrivateQuestion());
   * privateBoard.setAnswerTrueFalse("미답변");
   * 
   * privateBoardAnswersService.delete(no); return new JsonResult().setState(JsonResult.SUCCESS);
   * 
   * }
   */  
  
}
