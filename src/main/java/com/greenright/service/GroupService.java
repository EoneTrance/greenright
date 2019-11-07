package com.greenright.service;

import java.util.List;
import com.greenright.domain.Group;

// 역할:
// => 게시물 관리 업무를 수행
// => 트랜잭션 제어
// => 여러 페이지 컨트롤러가 사용한다.
//
public interface GroupService {
  List<Group> findAll() throws Exception;
  Group get(int no) throws Exception;
  void insert(Group group) throws Exception;
  void update(Group group) throws Exception;
  void delete(int no) throws Exception;
}










