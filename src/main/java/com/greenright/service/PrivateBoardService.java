package com.greenright.service;

import java.util.List;
import com.greenright.domain.PrivateBoard;

public interface PrivateBoardService {
  List<PrivateBoard> list(int no) throws Exception;
  void insert(PrivateBoard privateBoard) throws Exception;
  PrivateBoard get(int no) throws Exception;
}
