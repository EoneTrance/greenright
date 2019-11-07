package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Member;

// 회원 DAO 사용 규칙 정의
public interface MemberDao {
  int insert(Member member) throws Exception;
  List<Member> findAll() throws Exception;
  Member findBy(int no) throws Exception;
  int update(Member member) throws Exception;
  int delete(int no) throws Exception;
  @SuppressWarnings("rawtypes")
  int pwcheck(Map map) throws Exception;
}
