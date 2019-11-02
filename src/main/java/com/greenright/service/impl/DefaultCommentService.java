package com.greenright.service.impl;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.CommentDao;
import com.greenright.domain.Comment;
import com.greenright.service.CommentService;

@Service
public class DefaultCommentService implements CommentService {
  
  @Resource
  private CommentDao commentDao;
  
  @Override
  public int insert(Comment comment) throws Exception {
    comment.setCreatedDate(new Date(System.currentTimeMillis()));
    
   return commentDao.insert(comment);
  }

  @Override
  public void delete(int no) throws Exception {
    if (commentDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }


  
  @Override
  public List<Comment> list(int no) throws Exception {
    return commentDao.findAll(no);
  }

  @Override
  public int update(String contents, String commentNo) throws Exception {
    Map<String,String> map = new HashMap<>();
    map.put("contents", contents);
    map.put("commentNo", commentNo);
    return commentDao.update(map);
  }

}
