package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Product;

public interface ProductDao {
  int insert(Product product) throws Exception;

  Product findWithFilesBy(int no) throws Exception;

  Product findForPhoto(int no) throws Exception;

  List<Product> findAllWithFile() throws Exception;

  List<Product> findByGroupNo(int no) throws Exception;

  List<Product> findByCategoryNo(int no) throws Exception;

  List<Product> findAllBySeller(int no) throws Exception;

  int delete(int no) throws Exception;

  int update(Product product) throws Exception;

  int getgroupNo(int no) throws Exception;

  List<Product> getTopOnGroup(int a) throws Exception;;
}
