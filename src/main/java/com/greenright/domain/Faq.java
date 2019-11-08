package com.greenright.domain;

import java.io.Serializable;

public class Faq implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int faqID;
  private String questionType;
  private String title;
  private String contents;
  
  
  public int getFaqID() {
    return faqID;
  }
  public void setFaqID(int faqID) {
    this.faqID = faqID;
  }
  public String getQuestionType() {
    return questionType;
  }
  public void setQuestionType(String questionType) {
    this.questionType = questionType;
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
  
  
  
  
  
}
