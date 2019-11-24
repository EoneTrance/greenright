package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.PrivateBoard;
import com.greenright.service.PrivateBoardService;

@Controller
@RequestMapping("/mypage/inquire")
public class InquireController {
  @Resource
  private PrivateBoardService privateBoardService;

  @GetMapping("form")
  public void form() {}

  @GetMapping("list")
  public void inquire(Model model, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    int no = (int) session.getAttribute("no");
    List<PrivateBoard> privateBoards = privateBoardService.list(no);
    model.addAttribute("boards", privateBoards);

  }

  @PostMapping("add")
  public String add(PrivateBoard privateBoard, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    privateBoard.setMemberNo((int) session.getAttribute("no"));
    privateBoardService.insert(privateBoard);
    return "redirect:list";
  }

  @GetMapping("detail")
  public String detail(Model model, int no, HttpSession session) throws Exception {
    session.setAttribute("no", 1);
    PrivateBoard privateBoard = privateBoardService.get(no);
    int memberNo = (int) session.getAttribute("no");
    if (memberNo != privateBoard.getMemberNo())
      return "redirect:list";
    model.addAttribute("privateBoard", privateBoard);
    return "mypage/inquire/detail";
  }

}

