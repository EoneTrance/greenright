package com.greenright.dao;

import java.util.List;
import com.greenright.domain.ProductOptionItem;

public interface ProductOptionItemDao {
  int insert(ProductOptionItem productOptionItem) throws Exception;
  ProductOptionItem findBy(int no);
  int delete(int no) throws Exception;
  int deleteAll(int no) throws Exception;
  int update(ProductOptionItem productOptionItem)throws Exception;
  List<ProductOptionItem> findAll(int no)throws Exception;
}
