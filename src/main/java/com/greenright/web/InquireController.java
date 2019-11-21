package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.greenright.domain.Member;
import com.greenright.domain.PrivateBoard;
import com.greenright.domain.PrivateBoardAnswers;
import com.greenright.service.PrivateBoardAnswersService;
import com.greenright.service.PrivateBoardService;

@Controller
@RequestMapping("/inquire")
public class InquireController {
  @Resource private PrivateBoardService privateBoardService;
  @Resource private PrivateBoardAnswersService privateBoardAnswersService;

  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list") public void inquire(
    @RequestParam(defaultValue = "1") int pageNo, 
    @RequestParam(defaultValue = "5") int pageSize, 
    String questionType,
    String answerTF,
    Model model, HttpSession session) throws Exception {
    if (pageSize < 5 || pageSize > 20)
      pageSize = 5;
    
    int size = privateBoardService.size(questionType);
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0)
      totalPage++;
    
    if (pageNo < 1 || pageNo > totalPage)
      pageNo = 1;
    
    Member member = (Member)session.getAttribute("loginUser");
    if(member != null) {
    int no = member.getNo();
    int manager = member.getMemberClass();
    List<PrivateBoard> privateBoards = null;
    if(manager == 0) {
      privateBoards = privateBoardService.managerList(pageNo, pageSize, null, null);
    } else {
      privateBoards = privateBoardService.list(no, pageNo, pageSize, null, null);
    }
     
    model.addAttribute("boards", privateBoards);
    model.addAttribute("pageNo", pageNo);
    model.addAttribute("pageSize", pageSize);
    model.addAttribute("totalPage", totalPage);
    model.addAttribute("size", size);
    model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
    model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);
    }
  }

  @PostMapping("add")
  public String add(PrivateBoard privateBoard, HttpSession session) throws Exception {
    int no = ((Member)session.getAttribute("loginUser")).getNo();
    privateBoard.setMemberNo(no);
    privateBoardService.insert(privateBoard);
    return "redirect:list";
    
  }
  
  

  @GetMapping("detail")
  public String detail(Model model, int no, HttpSession session) throws Exception {
    int memberNo = ((Member)session.getAttribute("loginUser")).getNo();
    int manager = ((Member)session.getAttribute("loginUser")).getMemberClass();
    PrivateBoard privateBoard = privateBoardService.get(no); 
  
    if(memberNo==privateBoard.getMemberNo() || manager == 0 ) {
      model.addAttribute("privateBoard",privateBoard);
      return "inquire/detail";
    } else {
      return "redirect:list";
    }
  }
  
  
  @PostMapping("manager/add")
  @ResponseBody
  public String manageradd(PrivateBoardAnswers privateBoardAnswers, HttpSession session) throws Exception {
    privateBoardAnswersService.insert(privateBoardAnswers);
    return "redirect:list";
  }
 
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    PrivateBoard privateBoard = privateBoardService.get(no);
    privateBoard.setAnswerTrueFalse("미답변");
    privateBoardService.stateUpdate(privateBoard);
    privateBoardAnswersService.delete(no);
    return "redirect:detail?no="+no;
    
  }
  
 

}