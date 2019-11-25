package com.greenright.service;

import com.greenright.domain.WishList;

public interface WishListService {
  int insert(WishList wishList) throws Exception;
  int count(int no) throws Exception;
}
