package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

public class BasketBak implements Serializable {
  private static final long serialVersionUID = 1L;

  
  // 제품
  private int productId;
  private int productPrice;
  private String productName;
  
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private Date registeredDate;
  
  // 제품 사진
  private List<ProductPhoto> photos;
  
  // 옵션
  private int optionId;
  private String optionName;
  
  private int optionItemId;
  private String optionItemMatters;
  private int optionPrice;
  private int optionQuantity;
  
  // 판매자 
  private int sellerId;
  private String sellerName;
  
  // 회원
  private int memberId;
  
  public int getProductId() {
    return productId;
  }
  public void setProductId(int productId) {
    this.productId = productId;
  }
  public int getProductPrice() {
    return productPrice;
  }
  public void setProductPrice(int productPrice) {
    this.productPrice = productPrice;
  }
  public String getProductName() {
    return productName;
  }
  public void setProductName(String productName) {
    this.productName = productName;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  public List<ProductPhoto> getPhotos() {
    return photos;
  }
  public void setPhotos(List<ProductPhoto> photos) {
    this.photos = photos;
  }
  public int getOptionId() {
    return optionId;
  }
  public void setOptionId(int optionId) {
    this.optionId = optionId;
  }
  public String getOptionName() {
    return optionName;
  }
  public void setOptionName(String optionName) {
    this.optionName = optionName;
  }
  public int getOptionItemId() {
    return optionItemId;
  }
  public void setOptionItemId(int optionItemId) {
    this.optionItemId = optionItemId;
  }
  public String getOptionItemMatters() {
    return optionItemMatters;
  }
  public void setOptionItemMatters(String optionItemMatters) {
    this.optionItemMatters = optionItemMatters;
  }
  public int getOptionPrice() {
    return optionPrice;
  }
  public void setOptionPrice(int optionPrice) {
    this.optionPrice = optionPrice;
  }
  public int getOptionQuantity() {
    return optionQuantity;
  }
  public void setOptionQuantity(int optionQuantity) {
    this.optionQuantity = optionQuantity;
  }
  public int getSellerId() {
    return sellerId;
  }
  public void setSellerId(int sellerId) {
    this.sellerId = sellerId;
  }
  public String getSellerName() {
    return sellerName;
  }
  public void setSellerName(String sellerName) {
    this.sellerName = sellerName;
  }
  public int getMemberId() {
    return memberId;
  }
  public void setMemberId(int memberId) {
    this.memberId = memberId;
  }
  @Override
  public String toString() {
    return "Basket [productId=" + productId + ", productPrice=" + productPrice + ", productName="
        + productName + ", registeredDate=" + registeredDate + ", photos=" + photos + ", optionId="
        + optionId + ", optionName=" + optionName + ", optionItemId=" + optionItemId
        + ", optionItemMatters=" + optionItemMatters + ", optionPrice=" + optionPrice
        + ", optionQuantity=" + optionQuantity + ", sellerId=" + sellerId + ", sellerName="
        + sellerName + ", memberId=" + memberId + "]";
  }

  
}
