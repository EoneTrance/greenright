package com.greenright.domain;

import java.sql.Date;

public class PrivateAnswers {
  
  private int privateQuestionId;
  private Date createdDate;
  private String contents;
  
  @Override
  public String toString() {
    return "PrivateAnswers [privateQuestionId=" + privateQuestionId + ", createdDate=" + createdDate
        + ", contents=" + contents + "]";
  }
  
  public int getPrivateQuestionId() {
    return privateQuestionId;
  }
  public void setPrivateQuestionId(int privateQuestionId) {
    this.privateQuestionId = privateQuestionId;
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
