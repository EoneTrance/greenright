package com.greenright.service;

import java.util.List;
import com.greenright.domain.Member;

public interface MemberService {

  List<Member> list() throws Exception;
  Member get(int no) throws Exception;
  void update(Member member) throws Exception;
  void insert(Member member) throws Exception;
  void delete(int no) throws Exception;
}
