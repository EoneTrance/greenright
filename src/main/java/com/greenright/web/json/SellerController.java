package com.greenright.web.json;

import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.greenright.domain.Seller;
import com.greenright.service.SellerService;

@RestController("json.SellerController")
@RequestMapping("/json/seller")
public class SellerController {
  
  @Resource
  SellerService sellerService;
  
  @GetMapping("checkDuplicateTel")
  public JsonResult checkDuplicateTel(String tel) throws Exception {
    Seller result = sellerService.getTel(tel);
    try {
      if (result != null) {
        return new JsonResult().setState(JsonResult.SUCCESS).setResult(result).setMessage("exist");
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
  @GetMapping("checkDuplicateAccount")
  public JsonResult checkDuplicateAccount(String accountNum) throws Exception {
    Seller result = sellerService.getAccount(accountNum);
    try {
      if (result != null) {
        return new JsonResult().setState(JsonResult.SUCCESS).setResult(result).setMessage("exist");
      } else {
        return new JsonResult().setState(JsonResult.SUCCESS).setMessage("notExist");
      }
    } catch (Exception e) {
      return new JsonResult().setState(JsonResult.FAILURE).setMessage(e.getMessage());
    }
  }
  
}
