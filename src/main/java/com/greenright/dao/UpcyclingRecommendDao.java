package com.greenright.dao;

import com.greenright.domain.UpcyclingRecommend;

public interface UpcyclingRecommendDao {
  
  int insertRecommend (UpcyclingRecommend upcyclingRecommend) throws Exception;
  int deleteRecommend (UpcyclingRecommend upcyclingRecommend) throws Exception;
  int deleteAllRecommend(int memberNo) throws Exception;
  int CountRecommend (int productNo)throws Exception; 
  int CountRecommendForCheck (UpcyclingRecommend upcyclingRecommend) throws Exception;
  
}
