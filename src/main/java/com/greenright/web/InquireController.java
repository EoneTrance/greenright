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
import com.greenright.domain.PrivateBoard;
import com.greenright.service.PrivateBoardService;

@Controller
@RequestMapping("/mypage/inquire")
public class InquireController {
  @Resource
  private PrivateBoardService privateBoardService;

  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list")
  public void inquire(
      @RequestParam(defaultValue = "1") int pageNo, 
      @RequestParam(defaultValue = "5") int pageSize, 
      Model model, HttpSession session) throws Exception {
   
    // 총 페이지 개수 알아내기
    if (pageSize < 5 || pageSize > 20) {
      pageSize = 5;
    }
    int size = privateBoardService.size();
    int totalPage = size / pageSize; // 13 / 5 = 2.x
    if (size % pageSize > 0) {
      totalPage++;
      
    }
    
    // 요청하는 페이지 번호가 유효하지 않을 때는 기본 값으로 1페이지로 지정한다.
    if (pageNo < 1 || pageNo > totalPage) {
      pageNo = 1;
    }
      
   
    session.setAttribute("no", 1);
    int no = (int)session.getAttribute("no");
    
    
    List<PrivateBoard> privateBoards = privateBoardService.list(no,pageNo, pageSize, null);
    model.addAttribute("boards", privateBoards);
    model.addAttribute("pageNo", pageNo);
    model.addAttribute("pageSize", pageSize);
    model.addAttribute("totalPage", totalPage);
    model.addAttribute("size", size);
    model.addAttribute("beginPage", (pageNo - 2) > 0 ? (pageNo - 2) : 1);
    model.addAttribute("endPage", (pageNo + 2) < totalPage ? (pageNo + 2) : totalPage);

  }

  @PostMapping("add")
  public String add(PrivateBoard privateBoard, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    privateBoard.setMemberNo((int)session.getAttribute("no"));
    privateBoardService.insert(privateBoard);
    return "redirect:list";
  }
  
  

  @GetMapping("detail")
  public String detail(Model model, int no, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    PrivateBoard privateBoard = privateBoardService.get(no);
    int memberNo = (int)session.getAttribute("no");
    if(memberNo!=privateBoard.getMemberNo())
      return "redirect:list";
    model.addAttribute("privateBoard",privateBoard);
    return "mypage/inquire/detail";
  }
  
  @GetMapping("select1")
  public void select1(Model model, String answer) throws Exception {
    List<PrivateBoard> privateBoards = privateBoardService.select1(answer);
    model.addAttribute("privateBoards", privateBoards);
    model.addAttribute("tf","미답변");
  }
  
  @PostMapping("add/mamager")
  public String managerInsert(PrivateBoard privateBoard, HttpSession session) throws Exception {
    /* session.setAttribute("no", 1); */
    /* privateBoard.setMemberNo((int)session.getAttribute("no")); */
    privateBoardService.managerInsert(privateBoard);
    return "redirect:list";
  }

}

