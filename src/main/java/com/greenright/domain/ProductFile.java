package com.greenright.domain;

import java.io.Serializable;

public class ProductFile implements Serializable {
  private static final long serialVersionUID = 1L;

  private int no;
  private String filePath;
  private int productNo;
  private boolean mainPhoto;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getFilePath() {
    return filePath;
  }
  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public boolean isMainPhoto() {
    return mainPhoto;
  }
  public void setMainPhoto(boolean mainPhoto) {
    this.mainPhoto = mainPhoto;
  }
  
  @Override
  public String toString() {
    return "ProductFile [no=" + no + ", filePath=" + filePath + ", productNo=" + productNo
        + ", mainPhoto=" + mainPhoto + "]";
  }

}
