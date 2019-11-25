package com.greenright.service;

import java.util.List;
import com.greenright.domain.PrivateBoard;

public interface PrivateBoardService {
  List<PrivateBoard> list(int memberNo,int pageNo, int pageSize, String questionType, String answerTF) throws Exception;
  void insert(PrivateBoard privateBoard) throws Exception;
  PrivateBoard get(int no) throws Exception;
  int size(String questionType) throws Exception;
  void stateUpdate(PrivateBoard privateBoard)throws Exception;
  List<PrivateBoard> managerList(int pageNo, int pageSize, String questionType, String answerTF) throws Exception;
}
