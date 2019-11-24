package com.greenright.domain;

import java.io.Serializable;

public class Category implements Serializable {
  private static final long serialVersionUID = 1L;
  private String id;
  private String name;
  private int no;
  private String categoryName;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getCategoryName() {
    return categoryName;
  }

  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }

  @Override
  public String toString() {
    return "Category [id=" + id + ", name=" + name + ", no=" + no + ", categoryName=" + categoryName
        + "]";
  }



}
