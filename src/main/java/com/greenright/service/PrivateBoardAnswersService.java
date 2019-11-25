package com.greenright.service;

import com.greenright.domain.PrivateBoardAnswers;

public interface PrivateBoardAnswersService {
  void insert(PrivateBoardAnswers privateBoardAnswers) throws Exception;
  void delete(int no) throws Exception;
}
