package com.greenright.web;

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
      Product product,String[] optionName, String[] optionContents,String[] optionprice
      ,String[] optionquantity)throws Exception {
    product.setPhotos(productPhotoWriter.getPhotoFiles(photoPath));
    ArrayList<ProductOption> pList = new ArrayList<>();
    if(optionName.length!=1) {
    for(int i =1 ; i<optionName.length ; i++) {
      ProductOption productOption = new ProductOption();
      productOption.setOptionName(optionName[i]);
      pList.add(productOption);
    }
    }
    int count =-1;
    ArrayList<ProductOptionItem> poiList = null;
    if(optionContents.length!=1) {
    for(int i =1; i<optionContents.length; i++) {
      ProductOptionItem  productOptionItem = new ProductOptionItem();
      if(optionContents[i].equals("divide")) {
        poiList = new ArrayList<>();
        count++;
      }else {
        productOptionItem.setOptionItemMatter(optionContents[i]);
        productOptionItem.setOptionsPrice(Integer.parseInt(optionprice[i]));
        productOptionItem.setOptionsquantity(Integer.parseInt(optionquantity[i]));
        poiList.add(productOptionItem);
       ProductOption pOption = pList.get(count);
       pOption.setOptionItem(poiList);
       pList.set(count, pOption);
      }
    }
    }
    product.setOptions(pList);
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
  public void buydetail(Model model, int no) throws Exception {
    Product product = productService.get(no);
    Product productPhoto = productService.getforPhoto(no);
    model.addAttribute("productPhoto", productPhoto);
    model.addAttribute("product", product);
  }
  
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    productService.delete(no);

    return "redirect:manage";
  }
  @RequestMapping("manage")
  public void main(Model model,HttpSession session) throws Exception {
    
    //int no =(Integer)session.getAttribute("SellerNo");
    //List<Product> products = productService.listBySeller(no);
    List<Product> products = productService.listBySeller(1);
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

}