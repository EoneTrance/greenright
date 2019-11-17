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
  public List<PrivateBoard> list(int no, int pageNo, int pageSize, String questionType) throws Exception {
    HashMap<String,Object> param = new HashMap<>();
    param.put("offset", (pageNo - 1) * pageSize);
    param.put("pageSize", pageSize);
    param.put("no", no);
    if (questionType != null) {
      param.put("questionType", questionType);
    }
    return privateBoardDao.findAll(param);
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
  public List<PrivateBoard> select1(String answer) throws Exception {
    List<PrivateBoard> privateBoardList = privateBoardDao.findByKeyword1(answer);
    return privateBoardList;
  }
  
  @Override
  public int size() throws Exception {
    return privateBoardDao.countAll();
  }
  
  @Override
  public void managerInsert(PrivateBoard privateBoard) throws Exception {
    privateBoardDao.managerInsert(privateBoard);
  }
  
  


}
