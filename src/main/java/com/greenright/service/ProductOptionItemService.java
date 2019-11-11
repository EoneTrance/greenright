package com.greenright.service;

import com.greenright.domain.ProductOptionItem;

public interface ProductOptionItemService {
  void deleteoptionitems(int no) throws Exception;
  String searchItemNo(int no) throws Exception;
  ProductOptionItem searchItemAll(int no) throws Exception;
}
