package com.greenright.dao;

import java.util.List;

import com.greenright.domain.WishList;

public interface WishListDao {
  int insert(WishList wishList) throws Exception;
  int insertFull(WishList wishList) throws Exception;
  int count(int no) throws Exception;
  List<WishList> findAll(int no) throws Exception;
}
