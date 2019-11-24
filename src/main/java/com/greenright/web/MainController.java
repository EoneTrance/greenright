package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Product;
import com.greenright.service.ProductService;

@Controller
public class MainController {

  @Resource
  ProductService productService;

  @RequestMapping("/main")
  public void main(Model model) throws Exception {
    List<Product> products = productService.list();
    model.addAttribute("products", products);
  }
}
