package com.greenright.service;

import com.greenright.domain.Recommend;

public interface RecommendService {
  int insert(Recommend recommend) throws Exception;
  void delete(Recommend recommend) throws Exception;
  int checkNum(int recommendBoardNo)throws Exception;
  int checkRecommendForCheck(Recommend recommend)throws Exception;
}
