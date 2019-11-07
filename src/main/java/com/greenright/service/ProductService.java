package com.greenright.service;

import java.util.List;
import com.greenright.domain.Product;

public interface ProductService {
  void insert(Product product) throws Exception;
  Product get(int no) throws Exception;
  List<Product> list() throws Exception;
}
