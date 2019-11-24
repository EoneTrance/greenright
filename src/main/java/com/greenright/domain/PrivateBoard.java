package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class PrivateBoard implements Serializable {
  private static final long serialVersionUID = 1L;

  int no;
  String type;
  int memberNo;
  Date date;
  String title;
  String contents;
  String answerTrueFalse;
  String answer;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public Date getDate() {
    return date;
  }

  public void setDate(Date date) {
    this.date = date;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getContents() {
    return contents;
  }

  public void setContents(String contents) {
    this.contents = contents;
  }

  public String getAnswerTrueFalse() {
    return answerTrueFalse;
  }

  public void setAnswerTrueFalse(String answerTrueFalse) {
    this.answerTrueFalse = answerTrueFalse;
  }

  public String getAnswer() {
    return answer;
  }

  public void setAnswer(String answer) {
    this.answer = answer;
  }

}
