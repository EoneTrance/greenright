package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Board implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private String title;
  private String contents;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
  private Date createdDate;
  private int memberNo;
  private int viewCount;
  private Member member;
  private int recommendation;
  private List<BoardPhoto> photos;

  public Member getMember() {
    return member;
  }

  public int getRecommendation() {
    return recommendation;
  }

  public void setRecommendation(int recommendation) {
    this.recommendation = recommendation;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
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

  public Date getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public int getViewCount() {
    return viewCount;
  }

  public void setViewCount(int viewCount) {
    this.viewCount = viewCount;
  }

  public List<BoardPhoto> getPhotos() {
    return photos;
  }

  public void setPhotos(List<BoardPhoto> photos) {
    this.photos = photos;
  }

  @Override
  public String toString() {
    return "Board [no=" + no + ", title=" + title + ", contents=" + contents + ", createdDate="
        + createdDate + ", memberNo=" + memberNo + ", viewCount=" + viewCount + ", member=" + member
        + ", recommendation=" + recommendation + ", photos=" + photos + "]";
  }

}
