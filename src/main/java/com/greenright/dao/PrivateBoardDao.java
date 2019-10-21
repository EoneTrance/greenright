package com.greenright.dao;

import java.util.List;
import com.greenright.domain.PrivateBoard;

public interface PrivateBoardDao {
  List<PrivateBoard> findAll(int no) throws Exception;
  void insert(PrivateBoard privateBoard) throws Exception;
  PrivateBoard findBy(int no) throws Exception;
}
