package com.greenright.domain;

import java.io.Serializable;
import java.util.List;

public class ProductOption implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int productNo;
  private String optionName;
  private List<ProductOptionItem> optionItem;
  
  public int getNo() {
    return no;
  }
  
  public void setNo(int no) {
    this.no = no;
  }
  
  public int getProductNo() {
    return productNo;
  }
  
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  
  public String getOptionName() {
    return optionName;
  }
  
  public void setOptionName(String optionName) {
    this.optionName = optionName;
  }

  public List<ProductOptionItem> getOptionItem() {
    return optionItem;
  }

  public void setOptionItem(List<ProductOptionItem> optionItem) {
    this.optionItem = optionItem;
  }

  @Override
  public String toString() {
    return "ProductOption [no=" + no + ", productNo=" + productNo + ", optionName=" + optionName
        + ", optionItem=" + optionItem + "]";
  }
  
  
  
}
