package com.greenright.domain;

import java.io.Serializable;

public class ProductOptionItem implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  
  private int optionsNo;
  
  private String optionItemMatter;
  
  private int optionsPrice;
  
  private int optionsQuantity;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getOptionsNo() {
    return optionsNo;
  }

  public void setOptionsNo(int optionsNo) {
    this.optionsNo = optionsNo;
  }

  public String getOptionItemMatter() {
    return optionItemMatter;
  }

  public void setOptionItemMatter(String optionItemMatter) {
    this.optionItemMatter = optionItemMatter;
  }

  public int getOptionsPrice() {
    return optionsPrice;
  }

  public void setOptionsPrice(int optionsPrice) {
    this.optionsPrice = optionsPrice;
  }

  public int getOptionsQuantity() {
    return optionsQuantity;
  }

  public void setOptionsQuantity(int optionsQuantity) {
    this.optionsQuantity = optionsQuantity;
  }

  @Override
  public String toString() {
    return "ProductOptionItem [no=" + no + ", optionsNo=" + optionsNo + ", optionItemMatter="
        + optionItemMatter + ", optionsPrice=" + optionsPrice + ", optionsQuantity="
        + optionsQuantity + "]";
  }
  
}
