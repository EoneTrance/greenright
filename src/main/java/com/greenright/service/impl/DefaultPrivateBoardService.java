package com.greenright.service.impl;

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
  public List<PrivateBoard> list(int no) throws Exception {
    return privateBoardDao.findAll(no);
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
}
