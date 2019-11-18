package com.greenright.service;

import java.util.List;
import com.greenright.domain.Seller;

public interface SellerService {
  List<Seller> list(String keyword) throws Exception;
  Seller get(int no) throws Exception;
  Seller getInfoAll(Seller seller) throws Exception;
  Seller getTel(String tel) throws Exception;
  int insert(Seller seller) throws Exception;
  int update(Seller seller) throws Exception;
  int delete(int no) throws Exception;
  Seller getAccount(String accountNum);
}
