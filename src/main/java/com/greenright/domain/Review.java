package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Review implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no ; 
  private int productNo;
  private int memberNo;
  @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  private int rating;
  private String title;
  private String contents;
  private Member member;
  private ReviewPhoto Photos;
  private ReviewReply replys;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  public int getRating() {
    return rating;
  }
  public void setRating(int rating) {
    this.rating = rating;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContents() {
    return contents;
  }
  public void setContents(String contents) {
    this.contents = contents;
  }
  public Member getMember() {
    return member;
  }
  public void setMember(Member member) {
    this.member = member;
  }
  public ReviewPhoto getPhotos() {
    return Photos;
  }
  public void setPhotos(ReviewPhoto photos) {
    Photos = photos;
  }
  public ReviewReply getReplys() {
    return replys;
  }
  public void setReplys(ReviewReply replys) {
    this.replys = replys;
  }
  @Override
  public String toString() {
    return "Review [no=" + no + ", productNo=" + productNo + ", memberNo=" + memberNo
        + ", createdDate=" + createdDate + ", rating=" + rating + ", title=" + title + ", contents="
        + contents + ", member=" + member + ", Photos=" + Photos + ", replys=" + replys + "]";
  }
  
  
  
}
