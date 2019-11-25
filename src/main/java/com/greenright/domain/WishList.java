package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class WishList implements Serializable {
  private static final long serialVersionUID = 1L;
  
  int memberId;
  int productId;
  Date registeredDate;
  int quantity;
  Product product;
  
  public int getMemberId() {
    return memberId;
  }
  public void setMemberId(int memberId) {
    this.memberId = memberId;
  }
  public int getProducId() {
    return productId;
  }
  public void setProducId(int producId) {
    this.productId = producId;
  }
  public Date getRegistereDate() {
    return registeredDate;
  }
  public void setRegistereDate(Date registereDate) {
    this.registeredDate = registereDate;
  }
  public int getQuantity() {
    return quantity;
  }
  public void setQuantity(int quantity) {
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
    return "WishList [memberId=" + memberId + ", producId=" + productId + ", registereDate="
        + registeredDate + ", quantity=" + quantity + ", product=" + product + "]";
  }

}
