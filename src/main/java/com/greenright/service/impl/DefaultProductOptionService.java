package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductOptionDao;
import com.greenright.dao.ProductOptionItemDao;
import com.greenright.domain.ProductOption;
import com.greenright.service.ProductOptionService;

@Service
public class DefaultProductOptionService implements ProductOptionService {

  @Resource
  private ProductOptionDao productOptionDao;

  @Resource
  private ProductOptionItemDao productOptionItemDao;

  @Override
  public void deleteoptions(int no) throws Exception {
    productOptionItemDao.deleteAll(no);
    productOptionDao.delete(no);

  }

  @Override
  public ProductOption get(int no) throws Exception {
    return productOptionDao.findBy(no);
  }

}
