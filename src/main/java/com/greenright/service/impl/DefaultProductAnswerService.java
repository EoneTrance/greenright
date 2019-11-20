package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductAnswerDao;
import com.greenright.domain.ProductAnswer;
import com.greenright.service.ProductAnswerService;
@Service
public class DefaultProductAnswerService implements ProductAnswerService {
  
  @Resource private ProductAnswerDao productAnswerDao;
  
  @Override
  public void add(ProductAnswer productAnswer) throws Exception {
    productAnswerDao.insert(productAnswer);
  }

}
