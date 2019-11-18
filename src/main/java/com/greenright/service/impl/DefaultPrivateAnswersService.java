package com.greenright.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import com.greenright.dao.PrivateAnswersDao;
import com.greenright.domain.PrivateAnswers;
import com.greenright.service.privateAnswersService;

public class DefaultPrivateAnswersService implements privateAnswersService {

  @Autowired
  private PrivateAnswersDao privateAnswersDao;
  
  @Override
  public void insert(PrivateAnswers privateAnswers) throws Exception {
    privateAnswersDao.insert(privateAnswers);
  }

}
