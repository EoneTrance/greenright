package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class WishProduct implements Serializable {
  private static final long serialVersionUID = 1L;
  
  int no;
  int memberId;
  int productId;
  int optionItemNo;
  Date registeredDate;
  int quantity;
  String optionName;
  int optionPrice;
  Product product;
  ProductPhoto productPhoto;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getMemberId() {
    return memberId;
  }
  public void setMemberId(int memberId) {
    this.memberId = memberId;
  }
  public int getProductId() {
    return productId;
  }
  public void setProductId(int productId) {
    this.productId = productId;
  }
  public int getOptionItemNo() {
    return optionItemNo;
  }
  public void setOptionItemNo(int optionItemNo) {
    this.optionItemNo = optionItemNo;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  public int getQuantity() {
    return quantity;
  }
  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }
  public String getOptionName() {
    return optionName;
  }
  public void setOptionName(String optionName) {
    this.optionName = optionName;
  }
  public int getOptionPrice() {
    return optionPrice;
  }
  public void setOptionPrice(int optionPrice) {
    this.optionPrice = optionPrice;
  }
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
  public ProductPhoto getProductPhoto() {
    return productPhoto;
  }
  public void setProductPhoto(ProductPhoto productPhoto) {
    this.productPhoto = productPhoto;
  }
  
  @Override
  public String toString() {
    return "WishProduct [no=" + no + ", memberId=" + memberId + ", productId=" + productId
        + ", optionItemNo=" + optionItemNo + ", registeredDate=" + registeredDate + ", quantity="
        + quantity + ", optionName=" + optionName + ", optionPrice=" + optionPrice + ", product="
        + product + ", productPhoto=" + productPhoto + "]";
  }

}