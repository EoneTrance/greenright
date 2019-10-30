package com.greenright.web;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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
      Product product,String[] optionName, String[] optionContents)throws Exception {
    product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
    ArrayList<ProductOption> pList = new ArrayList<>();
    for(String optionN : optionName) {
      ProductOption productOption = new ProductOption();
      productOption.setOptionName(optionN);
      pList.add(productOption);
    }
    int count =-1;
    ArrayList<ProductOptionItem> poiList = null;
    for(int i =0; i<optionContents.length; i++) {
      ProductOptionItem  productOptionItem = new ProductOptionItem();
      if(optionContents[i].equals("divide")) {
        poiList = new ArrayList<>();
        count++;
      }else {
        productOptionItem.setOptionItemMatter(optionContents[i]);
        poiList.add(productOptionItem);
       ProductOption pOption = pList.get(count);
       pOption.setOptionItem(poiList);
       pList.set(count, pOption);
      }
    }
    product.setOptions(pList);
    productService.insert(product);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Product product = productService.get(no);
    System.out.println(product);
    model.addAttribute("product", product);
  }
}

