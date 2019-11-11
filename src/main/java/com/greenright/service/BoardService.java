package com.greenright.service;

import java.util.List;
import com.greenright.domain.Board;


public interface BoardService {
  List<Board> list(int pageNo, int pageSize) throws Exception;
  Board get(int no) throws Exception;
  void insert(Board board) throws Exception;
  void update(Board board,String boardPhotoNumber[]) throws Exception;
  void delete(int no) throws Exception;
  List<Board> search1(String title,int pageNo, int pageSize) throws Exception;
  List<Board> search2(String contents,int pageNo, int pageSize) throws Exception;
  List<Board> search3(String name,int pageNo, int pageSize) throws Exception;
  int size() throws Exception;
}
