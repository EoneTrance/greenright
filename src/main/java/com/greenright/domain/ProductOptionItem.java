package com.greenright.domain;

import java.io.Serializable;

public class ProductOptionItem implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int OptionsNo;
  private int OptionsPrice;
  private int Optionsquantity;
  private String OptionItemMatter;
  

  public int getNo() {
    return no;
  }
  
  public void setNo(int no) {
    this.no = no;
  }
  
  public int getOptionsNo() {
    return OptionsNo;
  }
  
  public void setOptionsNo(int optionsNo) {
    OptionsNo = optionsNo;
  }
  
  public String getOptionItemMatter() {
    return OptionItemMatter;
  }
  
  public void setOptionItemMatter(String optionItemMatter) {
    OptionItemMatter = optionItemMatter;
  }

  public int getOptionsPrice() {
    return OptionsPrice;
  }

  public void setOptionsPrice(int optionsPrice) {
    OptionsPrice = optionsPrice;
  }

  public int getOptionsquantity() {
    return Optionsquantity;
  }

  public void setOptionsquantity(int optionsquantity) {
    Optionsquantity = optionsquantity;
  }

  @Override
  public String toString() {
    return "ProductOptionItem [no=" + no + ", OptionsNo=" + OptionsNo + ", OptionsPrice="
        + OptionsPrice + ", Optionsquantity=" + Optionsquantity + ", OptionItemMatter="
        + OptionItemMatter + "]";
  }
  
  
  
  
}
