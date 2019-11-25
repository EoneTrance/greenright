package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Basket implements Serializable {
  private static final long serialVersionUID = 1L;

  private int memberNo;

  private int optionItemNo;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private Date registeredDate;

  private int quantity;

  private ProductOptionItem productOptionItem;

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
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

  public ProductOptionItem getProductOptionItem() {
    return productOptionItem;
  }

  public void setProductOptionItem(ProductOptionItem productOptionItem) {
    this.productOptionItem = productOptionItem;
  }

  @Override
  public String toString() {
    return "Basket [memberNo=" + memberNo + ", optionItemNo=" + optionItemNo + ", registeredDate="
        + registeredDate + ", quantity=" + quantity + ", productOptionItem=" + productOptionItem
        + "]";
  }

}
