package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class ProductQuestion implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int memberNo;
  private int productNo;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  private int secretFlag;
  private String title;
  private String contents;
  private Member member;
  private ProductAnswer productAnswer;
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
  public int getProductNo() {
    return productNo;
  }
  public void setProductNo(int productNo) {
    this.productNo = productNo;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  public int getSecretFlag() {
    return secretFlag;
  }
  public void setSecretFlag(int secretFlag) {
    this.secretFlag = secretFlag;
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
  public ProductAnswer getProductAnswer() {
    return productAnswer;
  }
  public void setProductAnswer(ProductAnswer productAnswer) {
    this.productAnswer = productAnswer;
  }
  @Override
  public String toString() {
    return "ProductQuestion [no=" + no + ", memberNo=" + memberNo + ", productNo=" + productNo
        + ", createdDate=" + createdDate + ", secretFlag=" + secretFlag + ", title=" + title
        + ", contents=" + contents + ", member=" + member + ", productAnswer=" + productAnswer
        + "]";
  }

  
  
 
  
  
  
}
