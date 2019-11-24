package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Comment;

public interface CommentDao {
  int insert(Comment comment) throws Exception;

  List<Comment> findAll(int no) throws Exception;

  Comment findBy(int no) throws Exception;

  int update(@SuppressWarnings("rawtypes") Map map) throws Exception;

  int delete(int no) throws Exception;
}
