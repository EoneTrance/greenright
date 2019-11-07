package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Board;

public interface BoardDao {
  int insert(Board board) throws Exception;
  List<Board> findAll() throws Exception;
  Board findBy(int no) throws Exception;
  Board findWithFilesBy(int no) throws Exception;
  int update(Board board) throws Exception;
  int delete(int no) throws Exception;
  int increaseViewCount(int no) throws Exception;
  List<Board> findyByKeyword1(String title)throws Exception;
  List<Board> findyByKeyword2(String contents)throws Exception;
  List<Board> findyByKeyword3(String name)throws Exception;
 }
