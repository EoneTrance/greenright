package com.greenright.service;

import java.util.List;

import com.greenright.domain.WishProduct;

public interface WishListService {
  int insert(WishProduct wishList) throws Exception;
  int insertFull(WishProduct wishList) throws Exception;
  int count(int no) throws Exception;
  List<WishProduct> list(int no) throws Exception;
  int delete(int no) throws Exception;
}
