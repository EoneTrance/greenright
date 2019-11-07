package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Category;
import com.greenright.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
  
  @Resource
  private CategoryService categoryService;
 

  @GetMapping("form")
  public void form() {
  } 
  @GetMapping("list")
  public void list(Model model) throws Exception {
    List<Category> category = categoryService.findAll();
    model.addAttribute("category",category);
  }
  
  @PostMapping("add")
  public String add(Category category) throws Exception {
    categoryService.insert(category);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int id) throws Exception {
    categoryService.delete(id);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) 
      throws Exception {
    Category category = categoryService.get(no);
    model.addAttribute("category", category);
  }
  
  
  @PostMapping("update")
  public String update(Category category) 
      throws Exception {
    categoryService.update(category);
    return "redirect:list";
  }
  
  

}
