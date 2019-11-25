package com.greenright.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.PrivateBoardAnswersDao;
import com.greenright.domain.PrivateBoardAnswers;
import com.greenright.service.PrivateBoardAnswersService;

@Service
public class DefaultPrivateBoardAnswersService implements PrivateBoardAnswersService {
  
  @Resource
  PrivateBoardAnswersDao privateBoardAnswersDao;
  
  @Override
  public void insert(PrivateBoardAnswers privateBoardAnswers) throws Exception {
    privateBoardAnswersDao.insert(privateBoardAnswers);
  }
  
  @Override
  public void delete(int no) throws Exception {
    if(privateBoardAnswersDao.delete(no) == 0) {
      throw new Exception ("해당데이터가 없습니다.");
    }
    privateBoardAnswersDao.delete(no);
  }
}
