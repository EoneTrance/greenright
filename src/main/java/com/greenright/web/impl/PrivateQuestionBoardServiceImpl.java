package com.greenright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.greenright.dao.PrivateQuestionBoardDao;
import com.greenright.domain.PrivateQuestionBoard;
import com.greenright.service.PrivateQuestionBoardService;

@Service
public class PrivateQuestionBoardServiceImpl implements PrivateQuestionBoardService{

  @Autowired
  private PrivateQuestionBoardDao privateQuestionBoardDao;
  
  @Override
  public List<PrivateQuestionBoard> list() throws Exception {
    return privateQuestionBoardDao.findAll();
  }

  @Override
  public PrivateQuestionBoard get(int no) throws Exception {
    PrivateQuestionBoard privateQuestionBoard = privateQuestionBoardDao.findBy(no);
    if(privateQuestionBoard == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    }
    
    return privateQuestionBoard;
  }

  @Override
  public void insert(PrivateQuestionBoard privateQuestionBoard) throws Exception {
    privateQuestionBoardDao.insert(privateQuestionBoard);
  }

  @Override
  public void update(PrivateQuestionBoard privateQuestionBoard) throws Exception {
    privateQuestionBoardDao.update(privateQuestionBoard);
  }

  @Override
  public void delete(int no) throws Exception {
    if (privateQuestionBoardDao.delete(no) ==0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

}
