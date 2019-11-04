package com.greenright.dao;

import com.greenright.domain.ProductOptionItem;

public interface ProductOptionItemDao {
  int insert(ProductOptionItem productOptionItem) throws Exception;
  int delete(int no) throws Exception;
  int deleteAll(int no) throws Exception;
}
