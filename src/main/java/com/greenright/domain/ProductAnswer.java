package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class ProductAnswer implements Serializable {
  private static final long serialVersionUID = 1L;
 
  private int no;
  private String answerContents;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date answerCreatedDate;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getAnswerContents() {
    return answerContents;
  }
  public void setAnswerContents(String answerContents) {
    this.answerContents = answerContents;
  }
  public Date getAnswerCreatedDate() {
    return answerCreatedDate;
  }
  public void setAnswerCreatedDate(Date answerCreatedDate) {
    this.answerCreatedDate = answerCreatedDate;
  }
  @Override
  public String toString() {
    return "ProductAnswer [no=" + no + ", answerContents=" + answerContents + ", answerCreatedDate="
        + answerCreatedDate + "]";
  }
  
  
  
  
}
