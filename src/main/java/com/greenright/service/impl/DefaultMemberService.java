package com.greenright.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.greenright.dao.MemberDao;
import com.greenright.domain.Member;
import com.greenright.service.MemberService;

// BoardService 기본 구현체 
//
@Service
public class DefaultMemberService implements MemberService {
  
  public static final String COMPLETE = "COMPLETE";
  
  @Resource
  private MemberDao memberDao;
  
  
  @Override
  public List<Member> list(String keyword) throws Exception {
    return memberDao.findAll(keyword);
  }
  
  @Override
  public Member get(int no) throws Exception {
    Member member = memberDao.findBy(no);
    if (member == null) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
    return member;
  }
  
  @Override
  public boolean get(String value) throws Exception {
    Member member = new Member();
    if (value.contains("@")) {
      member = memberDao.findByEmail(value);
    } else {
      member = memberDao.findById(value);
    }
    if (member != null) {
      return true;
    }
    return false;
  }
  
  @Override
  public Member login(Member member) throws Exception {
    return memberDao.findByIdPassword(member);
  }

  @Override
  public Member getAccount(Member member) throws Exception {
    return memberDao.findByQuestionAnswer(member);
  }
  
  @Override
  public Member getAccountWithId(Member member) throws Exception {
    return memberDao.findByQuestionAnswerWithId(member);
  }
  
  @Override
  public boolean getNumber(String value) throws Exception {
    Member member = new Member();
    member = memberDao.findByCellPhone(value);
    if (member != null) {
      return true;
    }
    return false;
  }

  @Override
  public int passwordUpdate(Member member) throws Exception {
    return memberDao.passwordUpdate(member);
  }
  
  @Transactional
  @Override
  public void insert(Member member) throws Exception {
    memberDao.insert(member);
  }

  @Override
  public void update(Member member) throws Exception {
    memberDao.update(member);
  }

  @Override
  public void delete(int no) throws Exception {
    if (memberDao.delete(no) == 0) {
      throw new Exception("해당 번호의 데이터가 없습니다.");
    }
  }
  
@Override
  public int pwcheck(String id, String pw) throws Exception {
  Map<String,String> map = new HashMap<>();
  map.put("userId", id);
  map.put("userPw", pw);
  return memberDao.pwcheck(map);
  }

}
