package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Product implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no ; 
  private int groupNo;
  private int memberNo;
  private Date registeredDate;
  private boolean diy;
  private int price;
  private String productName;
  private String description;
  private Date expirationDate;
  private String origin;
  private List<ProductFile> files;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getGroupNo() {
    return groupNo;
  }
  public void setGroupNo(int groupNo) {
    this.groupNo = groupNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  public boolean isDiy() {
    return diy;
  }
  public void setDiy(boolean diy) {
    this.diy = diy;
  }
  public int getPrice() {
    return price;
  }
  public void setPrice(int price) {
    this.price = price;
  }
  public String getProductName() {
    return productName;
  }
  public void setProductName(String productName) {
    this.productName = productName;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
  public Date getExpirationDate() {
    return expirationDate;
  }
  public void setExpirationDate(Date expirationDate) {
    this.expirationDate = expirationDate;
  }
  public String getOrigin() {
    return origin;
  }
  public void setOrigin(String origin) {
    this.origin = origin;
  }
  public List<ProductFile> getFiles() {
    return files;
  }
  public void setFiles(List<ProductFile> files) {
    this.files = files;
  }
  
  @Override
  public String toString() {
    return "Product [no=" + no + ", groupNo=" + groupNo + ", memberNo=" + memberNo
        + ", registeredDate=" + registeredDate + ", diy=" + diy + ", price=" + price
        + ", productName=" + productName + ", description=" + description + ", expirationDate="
        + expirationDate + ", origin=" + origin + ", files=" + files + "]";
  }
  

}
