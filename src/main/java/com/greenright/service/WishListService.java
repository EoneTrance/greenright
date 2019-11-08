package com.greenright.service;

import java.util.List;
import com.greenright.domain.WishList;

public interface WishListService {
  int insert(WishList wishList) throws Exception;
  int insertFull(WishList wishList) throws Exception;
  int count(int no) throws Exception;
  List<WishList> list(int no) throws Exception;
}
