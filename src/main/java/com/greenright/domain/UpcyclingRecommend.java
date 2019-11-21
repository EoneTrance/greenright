package com.greenright.domain;

public class UpcyclingRecommend {
  private int upcyclingRecommendMemberNo;
  private int upcyclingRecommendProductNo;
  public int getUpcyclingRecommendMemberNo() {
    return upcyclingRecommendMemberNo;
  }
  public void setUpcyclingRecommendMemberNo(int upcyclingRecommendMemberNo) {
    this.upcyclingRecommendMemberNo = upcyclingRecommendMemberNo;
  }
  public int getUpcyclingRecommendProductNo() {
    return upcyclingRecommendProductNo;
  }
  public void setUpcyclingRecommendProductNo(int upcyclingRecommendProductNo) {
    this.upcyclingRecommendProductNo = upcyclingRecommendProductNo;
  }
  @Override
  public String toString() {
    return "UpcyclingRecommend [upcyclingRecommendMemberNo=" + upcyclingRecommendMemberNo
        + ", upcyclingRecommendProductNo=" + upcyclingRecommendProductNo + "]";
  }
  
  
}
