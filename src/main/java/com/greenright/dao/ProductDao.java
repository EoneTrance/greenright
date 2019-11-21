package com.greenright.dao;

import java.util.HashMap;
import java.util.List;
import com.greenright.domain.Product;

public interface ProductDao {
  int insert(Product product)throws Exception;
  Product findWithFilesBy(int no) throws Exception;
  Product findForPhoto(int no) throws Exception;
  List<Product> findAllWithFile() throws Exception;
  List<Product> findByGroupNo(HashMap<String, Object> param) throws Exception;
  List<Product> findByCategoryNo(HashMap<String, Object> param) throws Exception;
  List<Product> findAllBySeller(int no) throws Exception;
  int delete (int no) throws Exception;
  int update(Product product) throws Exception;
  int getgroupNo(int no) throws Exception;
  List<Product> getTopOnGroup(int a) throws Exception;
  List<Product> findAllUpcycling() throws Exception;
  Product MostRecommend(int no) throws Exception;
  List<Product> findAllByMemberNo(int memberNo) throws Exception;
  int increseRecommendCount (int productNo) throws Exception;
  int decreseRecommendCount (int productNo) throws Exception;
  List<Product> searchbyCategoryForMain(int no) throws Exception;
  List<Product> searchbyGroupForMain(int no) throws Exception;
}
