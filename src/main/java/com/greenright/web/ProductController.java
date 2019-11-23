package com.greenright.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Like;
import com.greenright.domain.Member;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.domain.Review;
import com.greenright.domain.Seller;
import com.greenright.service.LikeService;
import com.greenright.service.MemberService;
import com.greenright.service.ProductQuestionService;
import com.greenright.service.ProductService;
import com.greenright.service.ReviewService;

@Controller
@RequestMapping("/product")
public class ProductController {
  @Resource
  private ProductService productService;
  @Resource
  private ProductPhotoWriter productPhotoWriter;
  @Resource
  private ReviewService reviewService;
  @Resource
  private ProductQuestionService productQuestionService;
  @Resource
  private ProductDetailPhotoWriter productDetailPhotoWriter;
  @Resource
  private LikeService likeService;
  @Resource
  private MemberService memberService;
  
  @GetMapping("form")
  public String form(HttpSession session) { 
    Seller loginSeller = (Seller)session.getAttribute("loginSeller");
    if(loginSeller ==null) {
      return "redirect:/greenright/main";
    }
    return "product/form";
    
    
  }
  @GetMapping("upcyclingform")
  public String upcyclingform(HttpSession session) {
    Seller loginSeller = (Seller)session.getAttribute("loginSeller");
    if(loginSeller ==null) {
      return "redirect:/greenright/main";
    }
    return "product/upcyclingform";
  }
  @Transactional
  @PostMapping("upcyclingadd")
  public String upcuclcingadd(Product product,MultipartFile[] photoPath,HttpSession session,MultipartFile[] productDetailPhoto) throws Exception {
    Member member =(Member)session.getAttribute("loginUser");
    int a= member.getNo();
    product.setGroupNo(18);
    product.setQuantity(1);
    product.setOrigin("한국");
    product.setMemberNo(a);
    product.setDetailPhotos(productDetailPhotoWriter.getPhotoFiles(productDetailPhoto));
    product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
    product.setDiy(1);
    product.setExpirationDate(new Date(20190101));
    System.out.println(product.toString());
    productService.insert(product);
    return "redirect:manage";
  }
  
  @Transactional
  @PostMapping("add")
  public String add (MultipartFile[] photoPath,HttpSession session,
      Product product,String optionName, String[] optionContents,String[] optionprice
      ,String[] optionquantity,MultipartFile[] productDetailPhoto)throws Exception {
    if(photoPath !=null) {
    // 사진 처리하는 부분 
    product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
    }
    if(productDetailPhoto != null) {
      product.setDetailPhotos(productDetailPhotoWriter.getPhotoFiles(productDetailPhoto));
    }
    
    if(optionName!=null && optionContents !=null && optionprice !=null) {
    //옵션 처리하는 부분
    ArrayList<ProductOption> pList = new ArrayList<>();
    ProductOption productOption = new ProductOption();
    productOption.setOptionName(optionName);
    List<ProductOptionItem> poiList = new ArrayList<>();
    for(int i =0 ; i<optionContents.length; i++) {
      ProductOptionItem productOptionItem = new ProductOptionItem();
      productOptionItem.setOptionItemMatter(optionContents[i]);
      productOptionItem.setOptionsPrice(Integer.parseInt(optionprice[i]));
      productOptionItem.setOptionsquantity(Integer.parseInt(optionquantity[i]));
      poiList.add(productOptionItem);
    }
    productOption.setOptionItem(poiList);
    pList.add(productOption);
    product.setOptions(pList);
    }
    
    //상품 등록하는 부분 
    Member member =(Member) session.getAttribute("loginUser");
    product.setMemberNo(member.getNo());
    productService.insert(product);
    return "redirect:manage";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Product product = productService.get(no);
    Product productPhoto = productService.getforPhoto(no);
    model.addAttribute("productPhoto", productPhoto);
    model.addAttribute("product", product);
  }
  
  @GetMapping("buydetail")
  public void buydetail(Model model, int no,HttpSession session) throws Exception {
    Product product = productService.get(no);
    Product productPhoto = productService.getforPhoto(no);
    List<Product>productLiST = productService.gettopbyCategoryNum(no);
    Member member = (Member) session.getAttribute("loginUser");
    String memberNo = member.getId();
    System.out.println(memberNo);
    int memberClass = member.getMemberClass();
    
    model.addAttribute("memberNo",memberNo);
    model.addAttribute("memberClass",memberClass);
    model.addAttribute("productPhoto", productPhoto);
    model.addAttribute("product", product);
    model.addAttribute("productLiST",productLiST);
  }
  
  
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    productService.delete(no);

    return "redirect:manage";
  }
  @RequestMapping("manage")
  public void main(Model model,HttpSession session) throws Exception {
   Member member=  (Member)session.getAttribute("loginUser");
    int a = member.getNo();
    List<Product> products = productService.listBySeller(a);
    model.addAttribute("products", products);
    System.out.println(products.toString());
  }
  @Transactional
  @PostMapping("update")
  public String update(HttpServletRequest request, Product product, MultipartFile[] photoPath
      ,String optionName[],String optionItemMatter[])
      throws Exception {
    product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
    
    productService.update(product,optionName,optionItemMatter);

    return "redirect:manage";
  
}   
  @PostMapping("review/check")
  @ResponseBody
  public int ReviewCheck(Review review) throws Exception{
    return reviewService.checkReview(review);
  }
  
  @RequestMapping("/main")
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