package com.greenright.service.impl;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.PrivateBoardDao;
import com.greenright.domain.PrivateBoard;
import com.greenright.service.PrivateBoardService;

@Service
public class DefaultPrivateBoardService implements PrivateBoardService {
  
  @Resource
  PrivateBoardDao privateBoardDao;
 
  
  @Override
  public List<PrivateBoard> list(int memberNo, int pageNo, int pageSize, String questionType, String answerTF) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    param.put("memberNo", memberNo);
    if (questionType != null) {
      param.put("questionType", questionType);
    }
    if (answerTF != null) {
      param.put("answerTF", answerTF);
    }
    return privateBoardDao.findAll(param);
  }
  
  @Override
  public List<PrivateBoard> managerList(int pageNo, int pageSize, String questionType, String answerTF) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    if (questionType != null) {
      param.put("questionType", questionType);
    }
    if (answerTF != null) {
      param.put("answerTF", answerTF);
    }
    return privateBoardDao.managerFindAll(param);
  }
  
  @Override
  public void insert(PrivateBoard privateBoard) throws Exception {
    privateBoardDao.insert(privateBoard);
  }
  
  @Override
  public PrivateBoard get(int no) throws Exception {
    PrivateBoard privateBoard = privateBoardDao.findBy(no);
    if(privateBoard == null) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
    return privateBoard;
  }
  
 
  
  @Override
  public int size(String questionType) throws Exception {
    HashMap<String, Object> param = new HashMap<>();
    if(questionType != null) {
      param.put("questionType", questionType);
    }
    return privateBoardDao.countAll(param);
  }
  
  @Override
  public void stateUpdate(PrivateBoard privateBoard) throws Exception {
    privateBoardDao.stateUpdate(privateBoard);
  }
  
 
  
  
}
