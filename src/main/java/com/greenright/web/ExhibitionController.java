package com.greenright.web;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Product;
import com.greenright.service.ProductService;
import com.greenright.service.UpcyclingRecommendService;

@Controller
@RequestMapping("/exhibition")
public class ExhibitionController {

  @Resource 
  ProductService productService;
  @Resource
  UpcyclingRecommendService upcyclingRecommendService;
  @RequestMapping("/list")
  public void list(Model model) throws Exception {
    List<Product> products = productService.upcyclingList();
    List<Product> pro = new ArrayList<>();
        for(Product a : products) {
          // 회원번호만 불러오는 부분 
      int memberNo = a.getMemberNo();
      Product product =  productService.MostRecommend(memberNo);
      int no =  product.getNo();
      Product pprroo = productService.get(no);
      pprroo.setRecommendCount(product.getRecommendCount());
      System.out.println(pprroo.toString());
      pro.add(pprroo);
      }
      model.addAttribute("products",pro);

    //model.addAttribute("products", products);
  }
 @GetMapping("/detail")
 public void detail (Model model,int memberNo) throws Exception{
   List<Product>productList = productService.getByMemberNo(memberNo);
   for(Product a : productList) {
     System.out.println(a.toString());
   }
   model.addAttribute("productList",productList);
   
 }
  
  
}