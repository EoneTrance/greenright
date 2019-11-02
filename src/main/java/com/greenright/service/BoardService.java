package com.greenright.service;

import java.util.List;
import com.greenright.domain.Board;


public interface BoardService {
  List<Board> list() throws Exception;
  Board get(int no) throws Exception;
  void insert(Board board) throws Exception;
  void update(Board board,String boardPhotoNumber[]) throws Exception;
  void delete(int no) throws Exception;
  List<Board> search1(String title) throws Exception;
  List<Board> search2(String contents) throws Exception;
  List<Board> search3(String name) throws Exception;
}
