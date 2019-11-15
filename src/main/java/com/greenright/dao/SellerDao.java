package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Seller;

public interface SellerDao {
  int insert(Seller seller) throws Exception;
  List<Seller> findAll(String keyword) throws Exception;
  Seller findBy(int no) throws Exception;
  Seller findInfoAll(Seller seller) throws Exception;
  Seller findTel(String cellPhone) throws Exception;
  int update(Seller seller) throws Exception;
  int delete(int no) throws Exception;
  Seller findAccount(String accountNum);
}
