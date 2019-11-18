package com.greenright.service;

import com.greenright.domain.UpcyclingRecommend;

public interface UpcyclingRecommendService {
  
  int insert(UpcyclingRecommend upcyclingRecommend) throws Exception;
  int delete(UpcyclingRecommend upcyclingRecommend) throws Exception;
  
  int deleteAll(int memberNo) throws Exception;
  
  int checkNum(int productNo)throws Exception;
  int checkRecommendForCheck(UpcyclingRecommend upcyclingRecommend)throws Exception;
  
}
