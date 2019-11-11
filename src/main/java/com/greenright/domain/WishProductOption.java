package com.greenright.domain;

import java.io.Serializable;

public class WishProductOption implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int optionNo;
  private int optionItemNo;
  private String optionName;
  private String optionItemName;
  private int optionPrice;
  
  public int getOptionPrice() {
    return optionPrice;
  }
  public void setOptionPrice(int optionPrice) {
    this.optionPrice = optionPrice;
  }
  public int getOptionNo() {
    return optionNo;
  }
  public void setOptionNo(int optionNo) {
    this.optionNo = optionNo;
  }
  public String getOptionName() {
    return optionName;
  }
  public void setOptionName(String optionName) {
    this.optionName = optionName;
  }
  public int getOptionItemNo() {
    return optionItemNo;
  }
  public void setOptionItemNo(int optionItemNo) {
    this.optionItemNo = optionItemNo;
  }
  public String getOptionItemName() {
    return optionItemName;
  }
  public void setOptionItemName(String optionItemName) {
    this.optionItemName = optionItemName;
  }
  
  @Override
  public String toString() {
    return "WishProductOption [optionNo=" + optionNo + ", optionItemNo=" + optionItemNo
        + ", optionName=" + optionName + ", optionItemName=" + optionItemName + ", optionPrice="
        + optionPrice + "]";
  }

}
