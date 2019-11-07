package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.GroupDao;
import com.greenright.domain.Group;
import com.greenright.service.GroupService;

// BoardService 기본 구현체 
//
@Service
public class DefaultGroupService implements GroupService {

  @Resource
  private GroupDao groupDao;


  @Override
  public void insert(Group group) throws Exception {
    groupDao.insert(group);
  }

  @Override
  public void delete(int no) throws Exception {
    if (groupDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

  
  @Override
  public List<Group> findAll() throws Exception {
    return groupDao.findAll();
  }
  @Override
  public Group get(int no) throws Exception {
    Group group = groupDao.findBy(no);
    if (group == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
    return group;
  }

  @Override
  public void update(Group group) throws Exception {
    groupDao.update(group);
  }
}
