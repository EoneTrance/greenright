package com.greenright.domain;

import java.io.Serializable;

public class Seller implements Serializable{
  
  private static final long serialVersionUID = 1L;
  
  private int no;
  private String bankName;
  private String accountNum;
  private String accountHolder;
  private String tel;
  private int point;
  private Member member;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public String getBankName() {
    return bankName;
  }
  public void setBankName(String bankName) {
    this.bankName = bankName;
  }
  public String getAccountNum() {
    return accountNum;
  }
  public void setAccountNum(String accountNum) {
    this.accountNum = accountNum;
  }
  public String getAccountHolder() {
    return accountHolder;
  }
  public void setAccountHolder(String accountHolder) {
    this.accountHolder = accountHolder;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public int getPoint() {
    return point;
  }
  public void setPoint(int point) {
    this.point = point;
  }
  public Member getMember() {
    return member;
  }
  public void setMember(Member member) {
    this.member = member;
  }
  
  @Override
  public String toString() {
    return "Seller [no=" + no + ", bankName=" + bankName + ", accountNum=" + accountNum
        + ", accountHolder=" + accountHolder + ", tel=" + tel + ", point=" + point + ", member="
        + member + "]";
  }
  
}
