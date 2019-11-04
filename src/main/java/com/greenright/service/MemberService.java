package com.greenright.service;

import java.util.List;
import com.greenright.domain.Member;

// 역할:
// => 게시물 관리 업무를 수행
// => 트랜잭션 제어
// => 여러 페이지 컨트롤러가 사용한다.
//
public interface MemberService {
  List<Member> list(String keyword) throws Exception;
  //List<Member> search(String keyword) throws Exception;
  Member get(int no) throws Exception;
  Member login(Member member) throws Exception;
  Member getAccount(Member member) throws Exception;
  Member getAccountWithId(Member member) throws Exception;
  boolean get(String id) throws Exception;
  boolean getNumber(String number) throws Exception;
  int passwordUpdate(Member member) throws Exception;
  void insert(Member member) throws Exception;
  void update(Member member) throws Exception;
  void delete(int no) throws Exception;
  int pwcheck(String id, String pw) throws Exception;
  
}