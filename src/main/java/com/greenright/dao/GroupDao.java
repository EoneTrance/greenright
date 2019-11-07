package com.greenright.dao;

import java.util.List;
import com.greenright.domain.Group;

// DAO 사용 규칙을 정의한다.
public interface GroupDao {
  int insert(Group group) throws Exception;
  List<Group> findAll() throws Exception;
  Group findBy(int no) throws Exception;
  int update(Group group) throws Exception;
  int delete(int no) throws Exception;
}








