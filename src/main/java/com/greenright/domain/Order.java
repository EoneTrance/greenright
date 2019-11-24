package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Order implements Serializable {

  private static final long serialVersionUID = 1L;

  private int no;

  private int memberNo;

  private int paymentPrice;
  
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private Date paymentDate;

  private int paymentFlag;

  private String paymentWay;

  private Delivery delivery;

  private List<OrderProduct> orderProductList;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  
  public int getPaymentPrice() {
    return paymentPrice;
  }

  public void setPaymentPrice(int paymentPrice) {
    this.paymentPrice = paymentPrice;
  }

  public Date getPaymentDate() {
    return paymentDate;
  }

  public void setPaymentDate(Date paymentDate) {
    this.paymentDate = paymentDate;
  }

  public int getPaymentFlag() {
    return paymentFlag;
  }

  public void setPaymentFlag(int paymentFlag) {
    this.paymentFlag = paymentFlag;
  }

  public String getPaymentWay() {
    return paymentWay;
  }

  public void setPaymentWay(String paymentWay) {
    this.paymentWay = paymentWay;
  }

  public Delivery getDelivery() {
    return delivery;
  }

  public void setDelivery(Delivery delivery) {
    this.delivery = delivery;
  }

  public List<OrderProduct> getOrderProductList() {
    return orderProductList;
  }

  public void setOrderProductList(List<OrderProduct> orderProductList) {
    this.orderProductList = orderProductList;
  }

  @Override
  public String toString() {
    return "Order [no=" + no + ", memberNo=" + memberNo + ", paymentPrice=" + paymentPrice
        + ", paymentDate=" + paymentDate + ", paymentFlag=" + paymentFlag + ", paymentWay="
        + paymentWay + ", delivery=" + delivery + ", orderProductList=" + orderProductList + "]";
  }

}
