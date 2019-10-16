package com.greenright.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.greenright.dao.MemberDao;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

// BoardService 기본 구현체 
//
@Service
public class DefaultMemberService implements MemberService {
  
  @Resource
  private MemberDao memberDao;
  
  
  @Override
  public List<Member> list() throws Exception {
    return memberDao.findAll();
  }
  
  @Override
  public Member get(int no) throws Exception {
    Member member = memberDao.findBy(no);
    if (member == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
    return member;
  }
}
