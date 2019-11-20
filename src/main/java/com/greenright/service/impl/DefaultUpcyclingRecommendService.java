package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.UpcyclingRecommendDao;
import com.greenright.domain.UpcyclingRecommend;
import com.greenright.service.UpcyclingRecommendService;
@Service
public class DefaultUpcyclingRecommendService implements UpcyclingRecommendService{

  @Resource private UpcyclingRecommendDao upcyclingRecommendDao;
  
  @Override
  public int add(UpcyclingRecommend upcyclingRecommend) throws Exception {
    return upcyclingRecommendDao.insertRecommend(upcyclingRecommend);
  }

  @Override
  public int delete(UpcyclingRecommend upcyclingRecommend) throws Exception {
    return upcyclingRecommendDao.deleteRecommend(upcyclingRecommend);
  }

  @Override
  public int checkRecommendForCheck(UpcyclingRecommend upcyclingRecommend) throws Exception {
    return upcyclingRecommendDao.CountRecommendForCheck(upcyclingRecommend);
  }

  @Override
  public int getRecommendNumbyProductNo(int productNo) throws Exception {
    return upcyclingRecommendDao.CountRecommend(productNo);
  }

}