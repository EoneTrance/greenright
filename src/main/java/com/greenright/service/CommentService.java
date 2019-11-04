package com.greenright.service;

import java.util.List;
import com.greenright.domain.Comment;

public interface CommentService {
  List<Comment> list(int no) throws Exception;
  int insert(Comment comment) throws Exception;
  int update(String str, String commentNo) throws Exception;
  void delete(int no) throws Exception;
 
}
