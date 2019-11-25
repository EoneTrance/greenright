package com.greenright.domain;

import java.io.Serializable;

public class ReviewPhoto implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int reviewNo;
  private String photoPath;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getReviewNo() {
    return reviewNo;
  }
  public void setReviewNo(int reviewNo) {
    this.reviewNo = reviewNo;
  }
  public String getPhotoPath() {
    return photoPath;
  }
  public void setPhotoPath(String photoPath) {
    this.photoPath = photoPath;
  }
  @Override
  public String toString() {
    return "ReviewPhoto [no=" + no + ", reviewNo=" + reviewNo + ", photoPath=" + photoPath + "]";
  }

  
  
  
  
}
