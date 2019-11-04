package com.greenright.web;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
@Resource
private ProductService productService;
@Resource
private ProductPhotoWriter productPhotoWriter;

@GetMapping("form")
public void form() { }
@Transactional
@PostMapping("add")
public String add (MultipartFile[] photoPath,
    Product product,String[]optionName,String[]optionItem)throws Exception {
  //해결 해야할 문제 여러가지의 옵션이 여러가지의 옵션아이템을 처리해야하는데 현상태에서는 불가능하다 . 
  //1: 한개의 옵션의 대하여 몇개의 옵션항목을 가지고있을지 알지못함
  //
  product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
  ArrayList<ProductOption> pList = new ArrayList<>();
  for(int i =0; i<optionName.length;i++) {
    ProductOption productOption = new ProductOption();
    productOption.setProductNo(product.getNo());
    productOption.setOptionName(optionName[i]);
    pList.add(productOption);
  }
//  ArrayList<ProductOptionItem> poList = new ArrayList<>();
//  int  j =0;
//  for(int i =0; i<optionItem.length-1;i++) {
//    if(optionItem[i].equals("divide")) {
//       j = pList.get(0).getNo();
//    }else {
//      ProductOptionItem poi = new ProductOptionItem() ;
//      poi.setOptionItemMatter(optionItem[i]);
//      poi.setOptionsNo(j);
//      poList.add(e)
//    
//    }
//  }
  
  
  product.setOptions(pList);
  productService.insert(product);
  return "redirect:list";
}
}
