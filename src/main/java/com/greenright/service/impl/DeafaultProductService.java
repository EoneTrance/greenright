package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.ProductDao;
import com.greenright.dao.ProductOptionDao;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.dao.ProductPhotoDao;
import com.greenright.domain.Product;
import com.greenright.domain.ProductOption;
import com.greenright.domain.ProductPhoto;
import com.greenright.service.ProductService;
@Service
public class DeafaultProductService implements ProductService{
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
     
   }
   
  }

}
