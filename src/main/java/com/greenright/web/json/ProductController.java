package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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
  public JsonResult searchbyGroup(int no) throws Exception{
    try {
      List<Product> products = productService.searchbyGroup(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  @GetMapping("searchbyCategory")
  public JsonResult searchbyCategory(int no) throws Exception{
    try {
      List<Product> products = productService.searchbyCategory(no);
      return new JsonResult().setState(JsonResult.SUCCESS).setResult(products);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }

  @GetMapping("search")
  public JsonResult search(int no)throws Exception{
    try {
      List<Product> products;
      if(no<19) {
        products = productService.searchbyGroup(no);
      }else if(no==23){
        products = productService.listBySeller(1);
      } else {
        products = productService.searchbyCategory(no-18);
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
  
  @GetMapping("addCart")
  public JsonResult addCart(int no) throws Exception{
    try {
      productPhotoService.deletephotos(no);
      return new JsonResult().setState(JsonResult.SUCCESS);
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
}
