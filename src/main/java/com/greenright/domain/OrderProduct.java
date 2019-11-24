package com.greenright.domain;

import java.io.Serializable;

public class OrderProduct implements Serializable {

  private static final long serialVersionUID = 1L;

  private int orderNo;

  private int optionItemNo;

  private int quantity;

  private int price;
  
  private Order order;
  
  private ProductOptionItem productOptionItem;
  
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

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public Order getOrder() {
    return order;
  }

  public void setOrder(Order order) {
    this.order = order;
  }

  public ProductOptionItem getProductOptionItem() {
    return productOptionItem;
  }

  public void setProductOptionItem(ProductOptionItem productOptionItem) {
    this.productOptionItem = productOptionItem;
  }

  @Override
  public String toString() {
    return "OrderProduct [orderNo=" + orderNo + ", optionItemNo=" + optionItemNo + ", quantity="
        + quantity + ", price=" + price + ", order=" + order + ", productOptionItem="
        + productOptionItem + "]";
  }
  
}
