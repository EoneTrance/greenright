package com.greenright.service;

import java.util.List;
import com.greenright.domain.Product;

public interface ProductService {
  void insert(Product product) throws Exception;
  Product get(int no) throws Exception;
  Product getforPhoto(int no) throws Exception;
  List<Product> list() throws Exception;
  List<Product> listBySeller(int no) throws Exception;
  List<Product> searchbyGroup(int no) throws Exception;
  List<Product> searchbyCategory(int no) throws Exception;
  void delete (int no)throws Exception;
  void update(Product product,String optionName[],String optionItemMatter[]) throws Exception;
  List<Product> gettopbyCategoryNum(int no) throws Exception;
  List<Product> upcyclingList() throws Exception;
  Product MostRecommend (int no) throws Exception;
  List<Product> getByMemberNo(int memberNo) throws Exception;
}
