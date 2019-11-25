package com.greenright.domain;

import java.io.Serializable;

public class ProductDetailPhoto implements Serializable {
  private static final long serialVersionUID = 1L;

  private int no;

  private int productNo;
  
  private String photoPath;
  
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
  
  public String getPhotoPath() {
    return photoPath;
  }
  
  public void setPhotoPath(String photoPath) {
    this.photoPath = photoPath;
  }
  
  @Override
  public String toString() {
    return "ProductDetailPhoto [no=" + no + ", productNo=" + productNo + ", photoPath=" + photoPath
        + "]";
  }

}
