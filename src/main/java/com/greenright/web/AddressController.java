package com.greenright.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/address")
public class AddressController {
  
  @GetMapping("/daumJuso")
  public void jusoPopup() {
  }
}
