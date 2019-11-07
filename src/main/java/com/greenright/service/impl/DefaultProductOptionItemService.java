package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.service.ProductOptionItemService;
@Service
public class DefaultProductOptionItemService implements ProductOptionItemService{
@Resource private ProductOptionItemDao ProductOptionItemDao;
  @Override
  public void deleteoptionitems(int no) throws Exception {
    ProductOptionItemDao.delete(no);    
  }

}
