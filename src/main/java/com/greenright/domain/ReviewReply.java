package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class ReviewReply implements Serializable {
  private static final long serialVersionUID = 1L;

  
  private int no;
  private int reivewNo;
  private int memberNo;
  @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  private String contents;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getReivewNo() {
    return reivewNo;
  }
  public void setReivewNo(int reivewNo) {
    this.reivewNo = reivewNo;
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
  public String getContents() {
    return contents;
  }
  public void setContents(String contents) {
    this.contents = contents;
  }
  @Override
  public String toString() {
    return "ReviewReply [no=" + no + ", reivewNo=" + reivewNo + ", memberNo=" + memberNo
        + ", createdDate=" + createdDate + ", contents=" + contents + "]";
  }
  
  
  
}
