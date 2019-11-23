package com.greenright.service;

import java.util.List;
import com.greenright.domain.Like;
import com.greenright.domain.Product;

public interface LikeService {

  void add(Like like) throws Exception;

  void delete(Like like)throws Exception;

  int check(Like like)throws Exception;
  
  List<Product>findAll(int memberNo)throws Exception;
  
  List<Like> findLikeProduct(int memberNo) throws Exception;
  
}
