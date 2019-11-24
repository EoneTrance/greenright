package com.greenright.service;

import java.util.List;
import com.greenright.domain.ProductOptionItem;

public interface ProductOptionItemService {
  void deleteoptionitems(int no) throws Exception;

  ProductOptionItem get(int no) throws Exception;

  List<ProductOptionItem> list(int no) throws Exception;
}
