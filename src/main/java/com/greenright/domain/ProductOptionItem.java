package com.greenright.domain;

import java.io.Serializable;

public class ProductOptionItem implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int optionsNo;
  private int optionsPrice;
  private int optionsquantity;
  private String optionItemMatter;
  
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
  public int getOptionsPrice() {
    return optionsPrice;
  }
  public void setOptionsPrice(int optionsPrice) {
    this.optionsPrice = optionsPrice;
  }
  public int getOptionsquantity() {
    return optionsquantity;
  }
  public void setOptionsquantity(int optionsquantity) {
    this.optionsquantity = optionsquantity;
  }
  public String getOptionItemMatter() {
    return optionItemMatter;
  }
  public void setOptionItemMatter(String optionItemMatter) {
    this.optionItemMatter = optionItemMatter;
  }
  
  @Override
  public String toString() {
    return "ProductOptionItem [no=" + no + ", optionsNo=" + optionsNo + ", optionsPrice="
        + optionsPrice + ", optionsquantity=" + optionsquantity + ", optionItemMatter="
        + optionItemMatter + "]";
  }

}
