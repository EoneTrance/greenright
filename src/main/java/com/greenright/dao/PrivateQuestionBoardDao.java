package com.greenright.dao;

import java.util.List;
import com.greenright.domain.PrivateQuestionBoard;

public interface PrivateQuestionBoardDao {

  int insert(PrivateQuestionBoard privateQuestionBoard) throws Exception;

  List<PrivateQuestionBoard> findAll() throws Exception;

  PrivateQuestionBoard findBy(int no) throws Exception;

  int update(PrivateQuestionBoard board) throws Exception;

  int delete(int no) throws Exception;
}
