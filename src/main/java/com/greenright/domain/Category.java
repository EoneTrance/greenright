package com.greenright.domain;

import java.io.Serializable;

public class Category implements Serializable{
  private static final long serialVersionUID = 1L;
  private int no;
  private String categoryName;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getCategoryName() {
    return categoryName;
  }
  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }
  @Override
  public String toString() {
    return "category [no=" + no + ", categoryName=" + categoryName + "]";
  }
  
  
}
