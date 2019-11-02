package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Product;

public interface ProductDao {
  int insert(Product product) throws Exception;
  Product findWithFilesBy(int no) throws Exception;
  List<Product> findAllWithFile() throws Exception;
}
