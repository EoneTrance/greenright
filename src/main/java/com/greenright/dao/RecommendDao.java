package com.greenright.dao;

import com.greenright.domain.Recommend;

public interface RecommendDao {
  int insertRecommend (Recommend recommend) throws Exception;
  int deleteRecommend (Recommend recommend) throws Exception;
  int deleteRecommendByNum(int no) throws Exception;
  int CountRecommend (int recommendBoardNo)throws Exception; 
  int CountRecommendForCheck (Recommend recommend) throws Exception;
  }
