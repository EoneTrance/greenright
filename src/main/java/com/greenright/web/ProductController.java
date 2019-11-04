package com.greenright.web;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Product;
import com.greenright.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
  @Resource
  private ProductService productService;
  @Resource
  private ProductFileWriter productFileWriter;

  @GetMapping("form")
  public void form() {
  }

  @PostMapping("add")
  public String add(Product product, MultipartFile[] filePath) throws Exception {
    product.setFiles(productFileWriter.getProductFiles(filePath));
    productService.insert(product);
    return "redirect:/greenright/main";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Product product = productService.get(no);
    System.out.println(product);
    model.addAttribute("product", product);
  }
  

}

