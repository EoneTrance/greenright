package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.domain.ProductOptionItem;
import com.greenright.service.ProductOptionItemService;
@Service
public class DefaultProductOptionItemService implements ProductOptionItemService{
@Resource private ProductOptionItemDao productOptionItemDao;
  @Override
  public void deleteoptionitems(int no) throws Exception {
    productOptionItemDao.delete(no);    
  }
  @Override
  public String searchItemNo(int no) throws Exception {
    return productOptionItemDao.searchItem(no);
  }
  @Override
  public ProductOptionItem searchItemAll(int no) throws Exception {
    return productOptionItemDao.searchItemAll(no);
  }
}
