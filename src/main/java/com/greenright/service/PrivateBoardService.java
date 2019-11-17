package com.greenright.service;

import java.util.List;
import com.greenright.domain.PrivateBoard;

public interface PrivateBoardService {
  List<PrivateBoard> list(int no,int pageNo, int pageSize, String questionType) throws Exception;
  void insert(PrivateBoard privateBoard) throws Exception;
  PrivateBoard get(int no) throws Exception;
  int size() throws Exception;
  List<PrivateBoard> select1(String answer) throws Exception;
  void managerInsert(PrivateBoard privateBoard) throws Exception;
  
}
