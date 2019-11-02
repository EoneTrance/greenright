package com.greenright.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.PrivateQuestionBoard;
import com.greenright.service.PrivateQuestionBoardService;

@Controller
@RequestMapping("/private_question")
public class PrivateQuestionBoardController {

  @Autowired
  private PrivateQuestionBoardService privateQuestionBoardService;
  
  @GetMapping("privateform")
  public void privateform() {
    
  }
  
//  @PostMapping("privatequestionadd")
//  public String privatequestionadd(PrivateQuestionBoard privateQuestionBoard) throws Exception {
//    privateQuestionBoardService.insert(privateQuestionBoard);
//    return "redirect:privatequestionlist";
//  }
  
  @GetMapping("privatequestionlist")
  public void privatequestionlist(Model model) throws Exception{
    List<PrivateQuestionBoard> boards = privateQuestionBoardService.list();
    model.addAttribute("boards", boards);
  }
  
  
  //테스트용
  @PostMapping("privatequestionadd")
  public String privatequestionadd(PrivateQuestionBoard privateQuestionBoard) throws Exception {
    privateQuestionBoardService.insert(privateQuestionBoard);
    return "redirect:privatequestionlist2";
  }
  
  //테스트용
  @GetMapping("privatequestionlist2")
  public void privatequestionlist2(Model model) throws Exception{
    List<PrivateQuestionBoard> boards = privateQuestionBoardService.list();
    model.addAttribute("boards", boards);
  }
  
  
}
