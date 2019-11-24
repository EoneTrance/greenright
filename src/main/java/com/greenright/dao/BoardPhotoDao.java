package com.greenright.dao;

import java.util.List;
import com.greenright.domain.BoardPhoto;


public interface BoardPhotoDao {
  int insert(BoardPhoto boardPhoto) throws Exception;

  List<BoardPhoto> findAll(int boardNo) throws Exception;

  int deleteAll(int boardNo) throws Exception;

  int delete(int boardPhotoNo) throws Exception;
}
