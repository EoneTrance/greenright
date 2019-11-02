package com.greenright.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {

  
  @GetMapping("main")
  public void main(Model model, HttpSession session) throws Exception {

  }
  
  @GetMapping("generic")
  public void generic(Model model, HttpSession session) throws Exception {

  }
  @GetMapping("elements")
  public void gallery(Model model, HttpSession session) throws Exception {
    
  }
  
  @GetMapping("faq")
  public void faq(Model model, HttpSession session) throws Exception {
    
  }
  
}
