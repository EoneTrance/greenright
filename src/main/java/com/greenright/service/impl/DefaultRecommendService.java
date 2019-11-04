package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.RecommendDao;
import com.greenright.service.RecommendService;

@Service
public class DefaultRecommendService implements RecommendService {

  @Resource private RecommendDao recommendDao;


  @Override
  public void insert(int boardNo, int memberNo) throws Exception {
    
  }

  @Override
  public void delete(int boardNo, int memberNo) throws Exception {
    
  }


}
