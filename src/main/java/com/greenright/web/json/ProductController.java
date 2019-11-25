package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Member;
import com.greenright.domain.Product;
import com.greenright.service.ProductOptionItemService;
import com.greenright.service.ProductOptionService;
import com.greenright.service.ProductPhotoService;
import com.greenright.service.ProductService;

@RestController("json.ProductController")
@RequestMapping("/json/Product")
public class ProductController {

  @Resource private ProductService productService;
  @Resource private ProductOptionService productOptionService;
  @Resource private ProductOptionItemService productOptionItemService;
  @Resource private ProductPhotoService productPhotoService;
  @GetMapping("searchbyGroup")
  public JsonResult searchbyGroup(int no,HttpSession session) throws Exception{
    try {
      Member member= (Member)session.getAttribute("loginUser");
      int memberNo =member.getNo();
      List<Product> products = productService.searchbyGroup(no,memberNo);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("searchbyCategory")
  public JsonResult searchbyCategory(int no,HttpSession session) throws Exception{
    try {
      Member member= (Member)session.getAttribute("loginUser");
      int memberNo =member.getNo();
      List<Product> products = productService.searchbyCategory(no,memberNo);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

  @GetMapping("search")
  public JsonResult search(int no,HttpSession session)throws Exception{
    try {
      Member member = (Member)session.getAttribute("loginUser");
      int memberNo =member.getNo();
      List<Product> products;
      if(no<19) {
        products = productService.searchbyGroup(18,memberNo);
      }else if(no==23){
        products = productService.listBySeller(memberNo);
      } else {
        products = productService.searchbyCategory(no-18,memberNo);
      }
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

  @GetMapping("deleteoptions")
  public JsonResult deleteoptions(int no) throws Exception{
    try {
      productOptionService.deleteoptions(no); 
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("deleteoptionitems")
  public JsonResult deleteoptionitems(int no) throws Exception{
    try {
      productOptionItemService.deleteoptionitems(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

  @GetMapping("deletephotos")
  public JsonResult deletephotos(int no) throws Exception{
    try {
      productPhotoService.deletephotos(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("searchbyCategoryForMain")
  public JsonResult searchbyCategoryForMain(int no,HttpSession session) throws Exception{
    try {
      List<Product> products = productService.searchbyCategoryForMain(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("searchbyGroupForMain")
  public JsonResult searchbyGroupForMain(int no,HttpSession session) throws Exception{
    try {
      List<Product> products = productService.searchbyGroupForMain(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @PostMapping("deleteProduct")
  public JsonResult deleteProduct(int productNo) throws Exception{
    try {
      productService.delete(productNo);
      return new JsonResult().setState(JsonResult.SUCCESS);
    }catch(Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage()); 
    }
  }
  
 @GetMapping("addCart")
public JsonResult addCart(int no) throws Exception {
  try {
    productPhotoService.deletephotos(no);
    return new JsonResult().setState(JsonResult.SUCCESS);
  } catch (Exception e) {
    return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
  }
}
}
