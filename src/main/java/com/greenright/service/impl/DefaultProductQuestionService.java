package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.ProductQuestionDao;
import com.greenright.domain.ProductQuestion;
import com.greenright.service.ProductQuestionService;

@Service
public class DefaultProductQuestionService implements ProductQuestionService {

  @Resource
  ProductQuestionDao productQuestionDao;

  @Override
  public void insert(ProductQuestion productQuestion) throws Exception {
    productQuestionDao.add(productQuestion);
  }

  @Override
  public List<ProductQuestion> get(int no) throws Exception {
    return productQuestionDao.get(no);
  }

  @Override
  public ProductQuestion getOneQuestion(int questionNo) throws Exception {
    return productQuestionDao.getOneQuestion(questionNo);
  }

}
