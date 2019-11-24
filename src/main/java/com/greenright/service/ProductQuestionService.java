package com.greenright.service;

import java.util.List;
import com.greenright.domain.ProductQuestion;

public interface ProductQuestionService {
  void insert(ProductQuestion productQuestion) throws Exception;

  List<ProductQuestion> get(int no) throws Exception;

  ProductQuestion getOneQuestion(int questionNo) throws Exception;
}
