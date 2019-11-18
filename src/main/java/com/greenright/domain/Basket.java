package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Basket implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int memberNo;
  private int productNo;
  
  @JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd")
  private Date registeredDate;
  
  private String quantity;
  
  private Product product;
  
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  public String getQuantity() {
    return quantity;
  }
  public void setQuantity(String quantity) {
    this.quantity = quantity;
  }
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
  
  @Override
  public String toString() {
    return "Basket [memberNo=" + memberNo + ", productNo=" + productNo + ", registeredDate="
        + registeredDate + ", quantity=" + quantity + ", product=" + product + "]";
  }
  
}
