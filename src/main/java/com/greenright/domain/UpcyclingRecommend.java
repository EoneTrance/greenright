package com.greenright.domain;

import java.io.Serializable;

public class UpcyclingRecommend implements Serializable {

  private static final long serialVersionUID = 1L;
  
  private int memberNo;
  private int productNo;
  
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  
  @Override
  public String toString() {
    return "UpcyclingRecommend [memberNo=" + memberNo + ", productNo=" + productNo + "]";
  }

  
  
  
  
  
}
