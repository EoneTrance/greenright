package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Delivery implements Serializable {

  private static final long serialVersionUID = 1L;

  private int no;

  private int orderNo;

  private String invoiceNum;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private Date deliveryDate;

  private int deliveryFlag;

  private String courierName;

  private String recieverName;

  private String deliveryAddress;

  private String recieverCellPhone;

  private String recieverEmail;

  private String recieverRequest;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getOrderNo() {
    return orderNo;
  }

  public void setOrderNo(int orderNo) {
    this.orderNo = orderNo;
  }

  public String getInvoiceNum() {
    return invoiceNum;
  }

  public void setInvoiceNum(String invoiceNum) {
    this.invoiceNum = invoiceNum;
  }

  public Date getDeliveryDate() {
    return deliveryDate;
  }

  public void setDeliveryDate(Date deliveryDate) {
    this.deliveryDate = deliveryDate;
  }

  public int getDeliveryFlag() {
    return deliveryFlag;
  }

  public void setDeliveryFlag(int deliveryFlag) {
    this.deliveryFlag = deliveryFlag;
  }

  public String getCourierName() {
    return courierName;
  }

  public void setCourierName(String courierName) {
    this.courierName = courierName;
  }

  public String getRecieverName() {
    return recieverName;
  }

  public void setRecieverName(String recieverName) {
    this.recieverName = recieverName;
  }

  public String getDeliveryAddress() {
    return deliveryAddress;
  }

  public void setDeliveryAddress(String deliveryAddress) {
    this.deliveryAddress = deliveryAddress;
  }

  public String getRecieverCellPhone() {
    return recieverCellPhone;
  }

  public void setRecieverCellPhone(String recieverCellPhone) {
    this.recieverCellPhone = recieverCellPhone;
  }

  public String getRecieverEmail() {
    return recieverEmail;
  }

  public void setRecieverEmail(String recieverEmail) {
    this.recieverEmail = recieverEmail;
  }

  public String getRecieverRequest() {
    return recieverRequest;
  }

  public void setRecieverRequest(String recieverRequest) {
    this.recieverRequest = recieverRequest;
  }

  @Override
  public String toString() {
    return "Delivery [no=" + no + ", orderNo=" + orderNo + ", invoiceNum=" + invoiceNum
        + ", deliveryDate=" + deliveryDate + ", deliveryFlag=" + deliveryFlag + ", courierName="
        + courierName + ", recieverName=" + recieverName + ", deliveryAddress=" + deliveryAddress
        + ", recieverCellPhone=" + recieverCellPhone + ", recieverEmail=" + recieverEmail
        + ", recieverRequest=" + recieverRequest + "]";
  }

}
