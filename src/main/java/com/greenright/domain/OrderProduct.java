package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class OrderProduct implements Serializable {
  
  private static final long serialVersionUID = 1L;
  
  private int orderNo;
  
  private int optionItemNo;
  
  private Date quantity;
  
  private int price;

  public int getOrderNo() {
    return orderNo;
  }

  public void setOrderNo(int orderNo) {
    this.orderNo = orderNo;
  }

  public int getOptionItemNo() {
    return optionItemNo;
  }

  public void setOptionItemNo(int optionItemNo) {
    this.optionItemNo = optionItemNo;
  }

  public Date getQuantity() {
    return quantity;
  }

  public void setQuantity(Date quantity) {
    this.quantity = quantity;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  @Override
  public String toString() {
    return "OrderProduct [orderNo=" + orderNo + ", optionItemNo=" + optionItemNo + ", quantity="
        + quantity + ", price=" + price + "]";
  }
  
}
