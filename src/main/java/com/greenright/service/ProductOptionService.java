package com.greenright.service;

import com.greenright.domain.ProductOption;

public interface ProductOptionService {
  void deleteoptions(int no) throws Exception;
  ProductOption get(int no) throws Exception;
}
