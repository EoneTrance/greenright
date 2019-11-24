package com.greenright.domain;

import java.io.Serializable;

public class ProductOptionItem implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int optionsNo;
  private int optionsPrice;
  private int optionsQuantity;
  private String optionItemMatter;
  private ProductOption productOption;

  public int getNo() {
    return no;
  }
  
  public void setNo(int no) {
    this.no = no;
  }
  
  


  public String getOptionItemMatter() {
    return optionItemMatter;
  }

  public void setOptionItemMatter(String optionItemMatter) {
    this.optionItemMatter = optionItemMatter;
  }

  public ProductOption getProductOption() {
    return productOption;
  }

  public void setProductOption(ProductOption productOption) {
    this.productOption = productOption;
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

  public int getOptionsQuantity() {
    return optionsQuantity;
  }

  public void setOptionsQuantity(int optionsQuantity) {
    this.optionsQuantity = optionsQuantity;
  }

  @Override
  public String toString() {
    return "ProductOptionItem [no=" + no + ", optionsNo=" + optionsNo + ", optionsPrice="
        + optionsPrice + ", optionsQuantity=" + optionsQuantity + ", optionItemMatter="
        + optionItemMatter + ", productOption=" + productOption + "]";
  }


  

  
  
  
  
  
}
