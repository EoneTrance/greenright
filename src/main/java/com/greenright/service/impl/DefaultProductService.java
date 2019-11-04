package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.ProductDao;
import com.greenright.dao.ProductFileDao;
import com.greenright.domain.Product;
import com.greenright.domain.ProductFile;
import com.greenright.service.ProductService;

@Service
public class DefaultProductService implements ProductService {
  
  @Resource
  ProductDao productDao;
  @Resource
  ProductFileDao productFileDao;
  
  @Transactional
  @Override
  public void insert(Product product) throws Exception {
    if(product.getFiles().size() == 0) {
      throw new Exception("사진 파일 없음!");
    }
    productDao.insert(product);
    product.getFiles().get(0).setProductNo(product.getNo());
    productFileDao.insertTrue(product.getFiles().remove(0));
    for (ProductFile file : product.getFiles()) {
      file.setProductNo(product.getNo());
      productFileDao.insert(file);
    }
  }
  
  @Override
  public Product get(int no) throws Exception {
    return productDao.findWithFilesBy(no);
  }
  
  @Override
  public List<Product> list() throws Exception {
    return productDao.findAllWithFile();
  }

}
