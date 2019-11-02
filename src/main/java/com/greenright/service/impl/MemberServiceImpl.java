package com.greenright.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.greenright.dao.MemberDao;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;


@Service
public class MemberServiceImpl implements MemberService{

  @Resource
  private MemberDao memberDao;
  
  @Override
  public List<Member> list() throws Exception {
    return memberDao.findAll();
  }

  @Override
  public Member get(int no) throws Exception {
    if(memberDao == null) {
      throw new Exception ("해당 번호의 데이터가없습니다.");
    }
    return memberDao.findBy(no);
  }

  @Override
  public void update(Member member) throws Exception {
    memberDao.update(member);
  }

  @Override
  public void delete(int no) throws Exception {
    if(memberDao.delete(no) == 0) {
      throw new Exception ("해당데이터가 없습니다.");
    }
  }

  @Override
  public void insert(Member member) throws Exception {
    memberDao.insert(member);
  }
  
}
