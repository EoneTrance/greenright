package com.greenright.dao;

import com.greenright.domain.PrivateBoardAnswers;

public interface PrivateBoardAnswersDao {
  void insert(PrivateBoardAnswers privateBoardAnswers) throws Exception;
  int delete(int no) throws Exception;
}
