package com.greenright.dao;

import java.util.List;
import com.greenright.domain.ProductOption;

public interface ProductOptionDao {
  int insert(ProductOption option)throws Exception;
  int delete(int no) throws Exception;
  int deleteAll(int no) throws Exception;
  List<ProductOption> getProductOptionItemNum(int no) throws Exception;
}
