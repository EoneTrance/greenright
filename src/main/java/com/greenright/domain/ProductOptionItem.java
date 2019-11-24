package com.greenright.domain;

import java.io.Serializable;

public class ProductOptionItem implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int OptionsNo;
  private int OptionsPrice;
  private int OptionsQuantity;
  private String OptionItemMatter;
  private ProductOption productOption;

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

  public int getOptionsQuantity() {
    return OptionsQuantity;
  }

  public void setOptionsQuantity(int optionsQuantity) {
    OptionsQuantity = optionsQuantity;
  }

  public ProductOption getProductOption() {
    return productOption;
  }

  public void setProductOption(ProductOption productOption) {
    this.productOption = productOption;
  }

  @Override
  public String toString() {
    return "ProductOptionItem [no=" + no + ", OptionsNo=" + OptionsNo + ", OptionsPrice="
        + OptionsPrice + ", OptionsQuantity=" + OptionsQuantity + ", OptionItemMatter="
        + OptionItemMatter + ", productOption=" + productOption + "]";
  }


  
  
  
  
  
}
