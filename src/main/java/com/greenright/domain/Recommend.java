package com.greenright.domain;

public class Recommend {

  private int recommendBoardNo;
  private int recommendMemberNo;

  public int getRecommendBoardNo() {
    return recommendBoardNo;
  }

  public void setRecommendBoardNo(int recommendBoardNo) {
    this.recommendBoardNo = recommendBoardNo;
  }

  public int getRecommendMemberNo() {
    return recommendMemberNo;
  }

  public void setRecommendMemberNo(int recommendMemberNo) {
    this.recommendMemberNo = recommendMemberNo;
  }

  @Override
  public String toString() {
    return "recommend [recommendBoardNo=" + recommendBoardNo + ", recommendMemberNo="
        + recommendMemberNo + "]";
  }


}
