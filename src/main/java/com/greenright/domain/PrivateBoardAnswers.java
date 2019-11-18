package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class PrivateBoardAnswers implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int privateQuestion;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  private String contents;
  
  @Override
  public String toString() {
    return "PrivateBoardAnswers [privateQuestion=" + privateQuestion + ", createdDate="
        + createdDate + ", contents=" + contents + "]";
  }
  
  public int getPrivateQuestion() {
    return privateQuestion;
  }
  public void setPrivateQuestion(int privateQuestion) {
    this.privateQuestion = privateQuestion;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  public String getContents() {
    return contents;
  }
  public void setContents(String contents) {
    this.contents = contents;
  }
  
  
  
}
