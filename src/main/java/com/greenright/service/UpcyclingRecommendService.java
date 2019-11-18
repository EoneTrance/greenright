package com.greenright.service;

import com.greenright.domain.UpcyclingRecommend;

public interface UpcyclingRecommendService {
  int add(UpcyclingRecommend upcyclingRecommend) throws Exception;
  int delete(UpcyclingRecommend upcyclingRecommend) throws Exception;
  int checkRecommendForCheck(UpcyclingRecommend upcyclingRecommend) throws Exception;
}
