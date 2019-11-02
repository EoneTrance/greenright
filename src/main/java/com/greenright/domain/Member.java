package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int no;
  private Date registeredDate;
  private String id;
  private String password;
  private boolean certificationFlag;
  private String cellPhone;
  private String tel;
  private String nickname;
  private String name;
  private String email;
  private String postalCode;
  private String defaultAddress;
  private String detailAddress;
  private String question;
  private String answer;
  
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public Date getRegisteredDate() {
    return registeredDate;
  }
  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public boolean isCertificationFlag() {
    return certificationFlag;
  }
  public void setCertificationFlag(boolean certificationFlag) {
    this.certificationFlag = certificationFlag;
  }
  public String getCellPhone() {
    return cellPhone;
  }
  public void setCellPhone(String cellPhone) {
    this.cellPhone = cellPhone;
  }
  public String getTel() {
    return tel;
  }
  public void setTel(String tel) {
    this.tel = tel;
  }
  public String getNickname() {
    return nickname;
  }
  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPostalCode() {
    return postalCode;
  }
  public void setPostalCode(String postalCode) {
    this.postalCode = postalCode;
  }
  public String getDefaultAddress() {
    return defaultAddress;
  }
  public void setDefaultAddress(String defaultAddress) {
    this.defaultAddress = defaultAddress;
  }
  public String getDetailAddress() {
    return detailAddress;
  }
  public void setDetailAddress(String detailAddress) {
    this.detailAddress = detailAddress;
  }
  public String getQuestion() {
    return question;
  }
  public void setQuestion(String question) {
    this.question = question;
  }
  public String getAnswer() {
    return answer;
  }
  public void setAnswer(String answer) {
    this.answer = answer;
  }
  
  
  
  
  
  

}
