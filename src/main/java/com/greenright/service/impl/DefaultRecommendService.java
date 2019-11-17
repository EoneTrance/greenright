package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.RecommendDao;
import com.greenright.domain.Recommend;
import com.greenright.service.RecommendService;

@Service
public class DefaultRecommendService implements RecommendService {

  @Resource private RecommendDao recommendDao;

  @Override
  public int insert(Recommend recommend) throws Exception {
    recommendDao.insertRecommend(recommend);
    return recommendDao.CountRecommend(recommend.getRecommendBoardNo());
  }

  @Override
  public int delete(Recommend recommend) throws Exception {
    recommendDao.deleteRecommend(recommend);
    return recommendDao.CountRecommend(recommend.getRecommendBoardNo());
  }

  @Override
  public int checkNum(int recommendBoardNo) throws Exception {
   return recommendDao.CountRecommend(recommendBoardNo);
  }
  
  public int checkRecommendForCheck(Recommend recommend)throws Exception {
    return recommendDao.CountRecommendForCheck(recommend);
  }


}
