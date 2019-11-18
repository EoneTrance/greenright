package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.domain.ProductOptionItem;
import com.greenright.service.ProductOptionItemService;
@Service
public class DefaultProductOptionItemService implements ProductOptionItemService{
  
@Resource
private ProductOptionItemDao ProductOptionItemDao;

  @Override
  public void deleteoptionitems(int no) throws Exception {
    ProductOptionItemDao.delete(no);    
  }
  
  @Override
  public ProductOptionItem get(int no) throws Exception {
    return ProductOptionItemDao.findBy(no);
  }

  @Override
  public List<ProductOptionItem> list(int no) throws Exception {
    return ProductOptionItemDao.findAll(no);
  }

}
