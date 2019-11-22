package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Product  implements Serializable {

  private static final long serialVersionUID = 1L;
  private int no ; 
  private int groupNo;
  private int memberNo;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date registeredDate;
  private int diy;
  private int price;
  private int quantity;
  private String productName;
  private String description;
  private Date expirationDate;
  private String origin;
  private List<ProductPhoto> photos;
  private List<ProductOption> options;
  private List<ProductDetailPhoto> detailPhotos;
  private Seller seller;
  private Group group;
  private Like like;
  private int RecommendCount;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getGroupNo() {
    return groupNo;
  }
  public void setGroupNo(int groupNo) {
    this.groupNo = groupNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  
  public int getDiy() {
    return diy;
  }
  public void setDiy(int diy) {
    this.diy = diy;
  }
  public int getPrice() {
    return price;
  }
  public void setPrice(int price) {
    this.price = price;
  }
  public String getProductName() {
    return productName;
  }
  public void setProductName(String productName) {
    this.productName = productName;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
  public Date getExpirationDate() {
    return expirationDate;
  }
  public void setExpirationDate(Date expirationDate) {
    this.expirationDate = expirationDate;
  }
  public String getOrigin() {
    return origin;
  }
  public void setOrigin(String origin) {
    this.origin = origin;
  }
  public List<ProductPhoto> getPhotos() {
    return photos;
  }
  public void setPhotos(List<ProductPhoto> photos) {
    this.photos = photos;
  }
  public List<ProductOption> getOptions() {
    return options;
  }
  public void setOptions(List<ProductOption> options) {
    this.options = options;
  }
  public Seller getSeller() {
    return seller;
  }
  public void setSeller(Seller seller) {
    this.seller = seller;
  }
  public Group getGroup() {
    return group;
  }
  public void setGroup(Group group) {
    this.group = group;
  }
  public int getQuantity() {
    return quantity;
  }
  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }
  public Like getLike() {
    return like;
  }
  public void setLike(Like like) {
    this.like = like;
  }
  public int getRecommendCount() {
    return RecommendCount;
  }
  public void setRecommendCount(int recommendCount) {
    RecommendCount = recommendCount;
  }
  public List<ProductDetailPhoto> getDetailPhotos() {
    return detailPhotos;
  }
  public void setDetailPhotos(List<ProductDetailPhoto> detailPhotos) {
    this.detailPhotos = detailPhotos;
  }
  @Override
  public String toString() {
    return "Product [no=" + no + ", groupNo=" + groupNo + ", memberNo=" + memberNo
        + ", registeredDate=" + registeredDate + ", diy=" + diy + ", price=" + price + ", quantity="
        + quantity + ", productName=" + productName + ", description=" + description
        + ", expirationDate=" + expirationDate + ", origin=" + origin + ", photos=" + photos
        + ", options=" + options + ", detailPhotos=" + detailPhotos + ", seller=" + seller
        + ", group=" + group + ", like=" + like + ", RecommendCount=" + RecommendCount + "]";
  }
  
  

  
}
