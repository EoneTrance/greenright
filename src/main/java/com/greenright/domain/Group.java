package com.greenright.domain;

import java.io.Serializable;

public class Group implements Serializable{
  private static final long serialVersionUID = 1L;
  private int no;
  private int categoryNo;
  private String groupName;
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getCategoryNo() {
    return categoryNo;
  }
  public void setCategoryNo(int categoryNo) {
    this.categoryNo = categoryNo;
  }
  public String getGroupName() {
    return groupName;
  }
  public void setGroupName(String groupName) {
    this.groupName = groupName;
  }
  @Override
  public String toString() {
    return "group [no=" + no + ", categoryNo=" + categoryNo + ", groupName=" + groupName + "]";
  }
  
  
  
}
