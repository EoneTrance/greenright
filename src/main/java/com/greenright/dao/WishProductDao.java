package com.greenright.dao;

import java.util.List;

import com.greenright.domain.WishProduct;

public interface WishProductDao {
  int insert(WishProduct wishList) throws Exception;
  int insertFull(WishProduct wishList) throws Exception;
  int count(int no) throws Exception;
  List<WishProduct> findAll(int no) throws Exception;
}
