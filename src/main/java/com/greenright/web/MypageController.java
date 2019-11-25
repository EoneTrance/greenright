package com.greenright.web;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greenright.domain.Member;
import com.greenright.domain.OrderProduct;
import com.greenright.domain.Product;
import com.greenright.domain.Seller;
import com.greenright.service.LikeService;
import com.greenright.service.MemberService;
import com.greenright.service.OrderProductService;
import com.greenright.service.OrderService;
import com.greenright.service.ProductService;
import com.greenright.service.SellerService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
  @Resource
  private MemberService memberService;

  @Resource
  private SellerService sellerService;
  
  @Resource
  private OrderProductService orderProductService;
  
  @Resource
  private OrderService orderService;
  
  @Resource
  private ProductService productService;
  
  @Resource
  private LikeService likeService;
  
  @GetMapping("")
  public void mypage(Member member) throws Exception {}

  @GetMapping("userinfo")
  public void userinfo(HttpSession session, Model model) throws Exception {
    model.addAttribute("title", " - 기본정보");

  }

  @GetMapping("sellerinfo")
  public String sellerinfo(HttpSession session, Model model) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    if (loginUser.getMemberClass() != 2) {
      return "redirect:userinfo";
    }
    model.addAttribute("title", " - 판매회원 정보");
    return "mypage/sellerinfo";
  }

  @GetMapping("order")
  public void order(HttpSession session, Model model) throws Exception {
    Member member = (Member)session.getAttribute("loginUser");
    List<OrderProduct> orderProductList = orderProductService.getByMember(member.getNo());
    model.addAttribute("orderProductList", orderProductList);
    model.addAttribute("title", " - 구매내역");
  }

  @GetMapping("sale")
  public String sale(HttpSession session, Model model) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    if (loginUser.getMemberClass() != 2) {
      return "redirect:userinfo";
    }
    Member member = (Member)session.getAttribute("loginUser");
    List<OrderProduct> saleProductList = orderProductService.getBySeller(member.getNo());
    model.addAttribute("saleProductList", saleProductList);
    model.addAttribute("title", " - 판매내역");
    return "mypage/sale";
  }
  
  @GetMapping("wishlist")
  public void wishlist(HttpSession session,Model model) throws Exception {
    model.addAttribute("title", " - 관심상품");
    Member member = (Member)session.getAttribute("loginUser");
    List<Product> productList = likeService.findAll(member.getNo());
    model.addAttribute("productList",productList);
    
  }

  @GetMapping("conversion")
  public String conversion(HttpSession session, Model model) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    if (loginUser.getMemberClass() != 1) {
      return "redirect:sellerinfo";
    }
    model.addAttribute("title", " - 회원 전환");
    return "mypage/conversion";
  }
  
  @GetMapping("exhibition")
  public String exhibition(HttpSession session, Model model) throws Exception {
    Member loginUser = (Member) session.getAttribute("loginUser");
    if (loginUser.getMemberClass() != 2) {
      return "redirect:userinfo";
    }
    model.addAttribute("title", " - 개인전 관리");
    List<Product> productList= productService.getUpcyclingByMemberNo((loginUser).getNo());
    model.addAttribute("productList",productList);
    return "mypage/exhibition";
  }
  
  @GetMapping("manage")
  public String main(Model model,HttpSession session) throws Exception {
    Seller loginSeller = (Seller)session.getAttribute("loginSeller");
    if(loginSeller ==null) {
      return "redirect:/greenright/main";
    }
    Member member=  (Member)session.getAttribute("loginUser");
    List<Product> products = productService.listBySeller(member.getNo());
    model.addAttribute("products", products);
    return "mypage/manage";
  }

}

