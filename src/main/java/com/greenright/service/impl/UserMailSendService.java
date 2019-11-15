package com.greenright.service.impl;

import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import com.greenright.dao.MemberDao;
import com.greenright.domain.Member;

@Service
public class UserMailSendService implements Runnable {

  public static final String JOIN = "join";
  public static final String FINDACCOUNT = "findAccount";
  
  @Resource
  private JavaMailSender mailSender;

  @Resource
  private MemberDao memberDao;

  private Member member;
  private String mailType;
  
  private boolean lowerCheck;
  private int size;
  
  // 이메일 난수 만드는 메서드
  private String init() {
    Random ran = new Random();
    StringBuffer sb = new StringBuffer();
    int num = 0;

    do {
      num = ran.nextInt(75) + 48;
      if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
        sb.append((char) num);
      } else {
        continue;
      }

    } while (sb.length() < size);
    if (lowerCheck) {
      return sb.toString().toLowerCase();
    }
    return sb.toString();
  }

  //난수를 이용한 키 생성
  public String generateKey(boolean lowerCheck, int size) {
    this.lowerCheck = lowerCheck;
    this.size = size;
    return init();
  }

  // 회원가입 발송 이메일(인증키 발송)
  public void mailSendWithUserKey(Member member, String mailType) throws Exception {

    this.member = member;
    this.mailType = mailType;
    
    ExecutorService executorService = Executors.newCachedThreadPool();
    executorService.submit(this);
  }

  public int setState(Member member, String mailType) throws Exception {
    if (mailType.equals(JOIN)) {
      return memberDao.setFlag(member);
    } else if (mailType.equals(FINDACCOUNT)) {
      return memberDao.compareKey(member) == null ? 0 : 1;
    }
    return 0;
  }

  @Override
  public void run() {
    if (mailType.equals(JOIN)) {
      member.setAuthkey(generateKey(false, 40));
      try {
        memberDao.setKey(member);
      } catch (Exception e) {
        e.printStackTrace();
      }
    } else if (mailType.equals(FINDACCOUNT)) {
      member.setPasswordAuthkey(generateKey(false, 40));
      try {
        memberDao.setPasswordKey(member);
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
    String htmlStr = "";
    String subject = "";
    MimeMessage message = mailSender.createMimeMessage();
    if (mailType.equals(JOIN)) {
      subject = "[메일인증] GreenRight 이메일 인증 안내";
      htmlStr = "<h2>안녕하세요 GreenRight 입니다.</h2><br>" 
          + "<h3>" + member.getId() + "님의 회원가입을 환영합니다.</h3>"
          + "<p>아래의 인증하기를 누르시면 이메일 인증이 완료됩니다.</p>"
          + "<a href='http://192.168.0.13:8888/greenright/auth/mailAuthentication?"
          + "id=" + member.getId() + "&authkey=" + member.getAuthkey()
          + "'>인증하기</a>";
//          + "<form action='http://192.168.0.13:8888/greenright/member/mailAuthentication' method='get' enctype='multipart/form-data'>"
//            + "<input type='text' name='id' autocomplete='off' style='display:none;' value='"+member.getId()+"'/>"
//            + "<input type='text' name='authkey' autocomplete='off' style='display:none;' value='"+member.getAuthkey()+"'/>"
//            + "<br>"
//            + "<button type='submit' style='width:70px;height:20px;font-weight:bold;font-size:150%;"
//            + "border-width:0px;text-align:left;margin:0px;padding:0px;outline:0px;'>인증하기</button>"
//          + "</form>";
      
    } else if (mailType.equals(FINDACCOUNT)) {
      subject = "[비밀번호찾기] GreenRight 비밀번호 찾기 안내";
      htmlStr = "<h2>안녕하세요 GreenRight 입니다.</h2><br>" 
          + "<h3>" + member.getId() + "님.</h3>"
          + "<p>아래의 비밀번호 변경하기를 누르시면 비밀번호를 재설정하실수 있는 페이지로 연결됩니다.</p>"
          + "<a href='http://192.168.0.13:8888/greenright/member/changePassword?"
          + "id=" + member.getId() + "&passwordAuthkey=" + member.getPasswordAuthkey()
          + "'>인증하기</a>";
//          + "<form action='http://192.168.0.13:8888/greenright/member/changePassword' method='get' enctype='multipart/form-data'>"
//            + "<input type='text' name='id' autocomplete='off' style='display:none;' value='"+member.getId()+"'/>"
//            + "<input type='text' name='passwordAuthkey' autocomplete='off' style='display:none;' value='"+member.getPasswordAuthkey()+"'/>"
//            + "<br>"
//            + "<button type='submit' style='width:150px;height:20px;font-weight:bold;font-size:150%;"
//            + "border-width:0px;text-align:left;margin:0px;padding:0px;outline:0px;'>비밀번호 변경하기</button>"
//          + "</form>";
    }
    
    try {
      message.setSubject(subject, "utf-8");
      message.setText(htmlStr, "utf-8", "html");
      message.addRecipient(RecipientType.TO, new InternetAddress(member.getEmail()));
      mailSender.send(message);
    } catch (MessagingException e) {
      e.printStackTrace();
    }
  }
}
