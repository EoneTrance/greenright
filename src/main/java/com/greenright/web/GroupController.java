package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Group;
import com.greenright.service.GroupService;

@Controller
@RequestMapping("/group")
public class GroupController {

  @Resource
  private GroupService groupService;
  
  @GetMapping("form")
  public void form() {
  } 
  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Group> group = groupService.findAll();
    model.addAttribute("group",group);
  }
  
  @PostMapping("add")
  public String add(Group group) throws Exception {
    groupService.insert(group);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int id) throws Exception {
    groupService.delete(id);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) 
      throws Exception {
    Group group = groupService.get(no);
    model.addAttribute("group", group);
  }
  
  
  @PostMapping("update")
  public String update(Group group) 
      throws Exception {
    groupService.update(group);
    return "redirect:list";
  }
}
