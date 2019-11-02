package com.greenright.service;

import java.util.List;
import com.greenright.domain.PrivateQuestionBoard;

public interface PrivateQuestionBoardService {
  
  List<PrivateQuestionBoard> list() throws Exception;
  PrivateQuestionBoard get(int no) throws Exception;
  void insert(PrivateQuestionBoard privateQuestionBoard) throws Exception;
  void update(PrivateQuestionBoard privateQuestionBoard) throws Exception;
  void delete(int no) throws Exception;

}
