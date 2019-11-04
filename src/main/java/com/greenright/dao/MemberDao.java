package com.greenright.dao;

import java.util.List;
import java.util.Map;
import com.greenright.domain.Member;

// 회원 DAO 사용 규칙 정의
public interface MemberDao {
  int insert(Member member) throws Exception;
  List<Member> findAll(String keyword) throws Exception;
  Member findBy(int no) throws Exception;
  Member findById(String id) throws Exception;
  Member findByIdPassword(Member member) throws Exception;
  Member findByEmail(String email) throws Exception;
  Member findByCellPhone(String cellPhone) throws Exception;
  Member findByQuestionAnswer(Member member) throws Exception;
  Member findByQuestionAnswerWithId(Member member) throws Exception;
  //List<Member> findByKeyword(String keyword) throws Exception;
  int update(Member member) throws Exception;
  int passwordUpdate(Member member) throws Exception;
  int delete(int no) throws Exception;
  int setKey(Member member) throws Exception;
  int setFlag(Member member) throws Exception;
  int setPasswordKey(Member member);
  Member compareKey(Member member);
  @SuppressWarnings("rawtypes")
  int pwcheck(Map map) throws Exception;
}
