package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Like;
import com.greenright.domain.Member;
import com.greenright.domain.Product;
import com.greenright.service.LikeService;
import com.greenright.service.ProductService;
import com.greenright.service.WishListService;

@Controller
public class MainController {
  

  @Resource ProductService productService;
  @Resource WishListService wishListService;
  @Resource private LikeService likeService;
  
  @RequestMapping("/main")
  public void main(Model model, HttpSession session) throws Exception {
    List<Product> products = productService.bestProductList();
    if(session.getAttribute("loginUser") == null) {
      
    } else {
      List<Like> likeList = likeService.findLikeProduct(((Member)session.getAttribute("loginUser")).getNo());
      for(int i=0;i<products.size();i++) {
        for(int j=0;j<likeList.size();j++) {
          if(products.get(i).getNo() == likeList.get(j).getProductNo()) {
            products.get(i).setLikeCheck(1);
          }
        }
      }
    }
    model.addAttribute("products", products);
  }
  
  @RequestMapping("/shop")
  public void shop(Model model, HttpSession session) throws Exception {
    List<Product> products = productService.list();
    if(session.getAttribute("loginUser") == null) {
      
    } else {
      List<Like> likeList = likeService.findLikeProduct(((Member)session.getAttribute("loginUser")).getNo());
      for(int i=0;i<products.size();i++) {
        for(int j=0;j<likeList.size();j++) {
          if(products.get(i).getNo() == likeList.get(j).getProductNo()) {
            products.get(i).setLikeCheck(1);
          }
        }
      }
    }
    model.addAttribute("products", products);
  }
}


