package com.greenright.service;

import com.greenright.domain.Like;

public interface LikeService {

  void add(Like like) throws Exception;

  void delete(Like like)throws Exception;

  int check(Like like)throws Exception;

}
