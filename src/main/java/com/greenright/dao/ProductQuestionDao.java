package com.greenright.dao;

import java.util.List;
import com.greenright.domain.ProductQuestion;

public interface ProductQuestionDao {

  void add(ProductQuestion productQuestion) throws Exception;

  List<ProductQuestion> get(int no) throws Exception;
}
