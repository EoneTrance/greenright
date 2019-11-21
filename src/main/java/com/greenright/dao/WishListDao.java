package com.greenright.dao;

import com.greenright.domain.WishList;

public interface WishListDao {
  int insert(WishList wishList) throws Exception;
  int count(int no) throws Exception;
}
