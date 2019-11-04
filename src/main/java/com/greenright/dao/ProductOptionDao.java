package com.greenright.dao;

import com.greenright.domain.ProductOption;

public interface ProductOptionDao {
  int insert(ProductOption option)throws Exception;
  int delete(int no) throws Exception;
  int deleteAll(int no) throws Exception;
  int[] getProductOptionItemNum(int no) throws Exception;
}
