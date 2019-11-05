package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.ProductDao;
import com.greenright.dao.ProductOptionDao;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.dao.ProductPhotoDao;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductOptionItem;
import com.greenright.domain.ProductPhoto;
import com.greenright.service.ProductService;
@Service
public class DefaultProductService implements ProductService{
  @Resource private ProductDao productDao;
  @Resource private ProductPhotoDao productPhotoDao;
  @Resource private ProductOptionDao optionDao;
  @Resource private ProductOptionItemDao optionItemDao;


  @Transactional
  @Override
  public void insert(Product product) throws Exception {
    if(product.getPhotos().size()==0) {
      throw new Exception("사진파일없음");
    }
    productDao.insert(product);
    for(ProductPhoto photo: product.getPhotos()) {
      photo.setProductNo(product.getNo());
      productPhotoDao.insert(photo);
    }
    for(ProductOption option: product.getOptions()) {
      option.setProductNo(product.getNo());
      optionDao.insert(option);
      for(ProductOptionItem optionItem : option.getOptionItem()) {
        System.out.println(option.getNo());
        optionItem.setOptionsNo(option.getNo());
        optionItemDao.insert(optionItem);
      }
    }

  }

  @Override
  public Product get(int no) throws Exception {
    return productDao.findWithFilesBy(no);
  }
  @Override
  public Product getforPhoto(int no) throws Exception {
    return productDao.findForPhoto(no);
  }

  @Override
  public List<Product> list() throws Exception {
    return productDao.findAllWithFile();
  }

  @Override
  public List<Product> searchbyGroup(int no) throws Exception {
    return productDao.findByGroupNo(no);
  }

  @Override
  public List<Product> searchbyCategory(int no) throws Exception{
    return productDao.findByCategoryNo(no);
  }

  @Override
  public List<Product> listBySeller(int no) throws Exception {
    return productDao.findAllBySeller(no);
  }
  @Transactional
  @Override
  public void delete(int no) throws Exception {
    List<ProductOption> options = optionDao.getProductOptionItemNum(no);
    for(ProductOption a : options) {
      optionItemDao.deleteAll(a.getNo());
    }
    optionDao.deleteAll(no);
    productPhotoDao.deleteAll(no);
    productDao.delete(no);
  }
  @Transactional
  @Override
  public void update(Product product
      ,String ProductOptionNo[],String ProductOptionItemNo[]) throws Exception {
    ProductOption productOption = new ProductOption();
    for(int i = 0 ; i<ProductOptionNo.length; i++) {
      System.out.print(ProductOptionNo[i]+"---------------------------------------------");
      System.out.println(i);
      if(i%2==0) {
        productOption.setOptionName(ProductOptionNo[i]);
      }else {
        productOption.setNo(Integer.parseInt(ProductOptionNo[i]));
        optionDao.update(productOption);
      }

    }
    System.out.println("a");
    ProductOptionItem productOptionItem = new ProductOptionItem();
    for(int i =0 ; i<ProductOptionItemNo.length; i++) {
      System.out.print(ProductOptionItemNo[i]+"---------------------------------------------");
      System.out.println(i);
      if(i%3==0) {
        productOptionItem.setOptionItemMatter(ProductOptionItemNo[i]);
      }else if(i%3==1) {
        productOptionItem.setNo(Integer.parseInt(ProductOptionItemNo[i]));
      }else {
        productOptionItem.setOptionsNo(Integer.parseInt(ProductOptionItemNo[i]));
        optionItemDao.update(productOptionItem);
      }
    }

    productDao.update(product);
    for (ProductPhoto photo : product.getPhotos()) {
      photo.setProductNo(product.getNo()); 
      productPhotoDao.insert(photo);
    }
  }
}
//1122 : 옵션 변경할값 
//144 : 옵션을 어디서 변경할건지 위치 
//5566 : 옵션 변경할값
//145  : 옵션을 어디서 변경할건지 위치

//33  :옵션 항목 변경할값 
//173 : 옵션항목 어디서 변경할건지 위치
//144 : 옵션항목을 어디다 저장할건지 번호 
//44
//174
//144
//77
//175
//145
//88
//176
//145

