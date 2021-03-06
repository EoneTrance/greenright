package com.greenright.service;

import java.util.List;
import com.greenright.domain.Product;

public interface ProductService {
  void insert(Product product) throws Exception;
  Product get(int no) throws Exception;
  Product getforPhoto(int no) throws Exception;
  List<Product> list() throws Exception;
  List<Product> bestProductList() throws Exception;
  List<Product> listBySeller(int no) throws Exception;
  List<Product> searchbyGroup(int no, int memberNo) throws Exception;
  List<Product> searchbyCategory(int no, int memberNo) throws Exception;
  void delete (int no)throws Exception;
  void update(Product product,String optionName[],String optionItemMatter[]) throws Exception;
  List<Product> gettopbyCategoryNum(int no) throws Exception;
  List<Product> upcyclingList() throws Exception;
  Product MostRecommend (int no) throws Exception;
  List<Product> getByMemberNo(int memberNo) throws Exception;
  List<Product> searchbyCategoryForMain(int no) throws Exception;
  List<Product> searchbyGroupForMain(int no) throws Exception;
  List<Product> getUpcyclingByMemberNo(int no) throws Exception;
  void addProductRecommend(int productNo) throws Exception;
  void decreaseProductRecommend(int productNo) throws Exception;
  List<Product> getallDetailPhoto(int no) throws Exception;
}
