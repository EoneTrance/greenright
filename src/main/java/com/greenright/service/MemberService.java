package com.greenright.service;

import java.util.List;
import com.greenright.domain.Member;

public interface MemberService {
  List<Member> list(String keyword) throws Exception;
  //List<Member> search(String keyword) throws Exception;
  Member get(int no) throws Exception;
  Member login(Member member) throws Exception;
  Member getAccount(Member member) throws Exception;
  Member getAccountWithId(Member member) throws Exception;
  Member getUserInfo(Member member) throws Exception;
  boolean get(String id) throws Exception;
  Member getPhone(String number) throws Exception;
  int passwordUpdate(Member member) throws Exception;
  void insert(Member member) throws Exception;
  void update(Member member) throws Exception;
  void delete(int no) throws Exception;
}
