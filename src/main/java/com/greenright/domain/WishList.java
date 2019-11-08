package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class WishList implements Serializable {
  private static final long serialVersionUID = 1L;
  
  int memberId;
  int productId;
  Date registeredDate;
  int quantity;
  int itemNo;
  Product product;
  
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
  public int getItemNo() {
    return itemNo;
  }
  public void setItemNo(int itemNo) {
    this.itemNo = itemNo;
  }
  public Product getProduct() {
    return product;
  }
  public void setProduct(Product product) {
    this.product = product;
  }
  
  @Override
  public String toString() {
    return "WishList [memberId=" + memberId + ", productId=" + productId + ", registeredDate="
        + registeredDate + ", quantity=" + quantity + ", itemNo=" + itemNo + ", product=" + product
        + "]";
  }

}
