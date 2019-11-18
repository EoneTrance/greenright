package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.PrivateBoard;

public interface PrivateBoardDao {
  List<PrivateBoard> findAll(Map<String,Object> param) throws Exception;
  void insert(PrivateBoard privateBoard) throws Exception;
  PrivateBoard findBy(int no) throws Exception;
  int countAll(Map<String,Object> param) throws Exception;
  List<PrivateBoard> findByKeyword1(String answer) throws Exception;
}