package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class PrivateBoard implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private String type;
  private int memberNo;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date date;
  private String title;
  private String contents;
  private String answerTrueFalse;
  private String answers;
  private String id;
  
  
  
  @Override
  public String toString() {
    return "PrivateBoard [no=" + no + ", type=" + type + ", memberNo=" + memberNo + ", date=" + date
        + ", title=" + title + ", contents=" + contents + ", answerTrueFalse=" + answerTrueFalse
        + ", answers=" + answers + ", id=" + id + "]";
  }
  
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
  public String getAnswers() {
    return answers;
  }
  public void setAnswers(String answers) {
    this.answers = answers;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  
  
 
  
}
