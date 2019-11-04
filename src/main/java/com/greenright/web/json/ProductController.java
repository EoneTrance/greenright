package com.greenright.web.json;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Product;
import com.greenright.service.ProductService;

@RestController("json.ProductController")
@RequestMapping("/json/Product")
public class ProductController {
  
  @Resource private ProductService productService;
  
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
  
  
}
