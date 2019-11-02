package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
  private static final long serialVersionUID = 1L;
  
  private int member_no;
  private Date registered_date;
  private String id;
  private String password;
  private boolean certification;
  private String cell_phone;
  private String tel;
  private String nickname;
  private String name;
  private String email;
  private String postal_code;
  private String default_address;
  private String detail_address;
  private String question;
  private String answer;
  
  public int getMember_no() {
    return member_no;
  }
  public void setMember_no(int member_no) {
    this.member_no = member_no;
  }
  public Date getRegistered_date() {
    return registered_date;
  }
  public void setRegistered_date(Date registered_date) {
    this.registered_date = registered_date;
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
  public boolean isCertification() {
    return certification;
  }
  public void setCertification(boolean certification) {
    this.certification = certification;
  }
  public String getCell_phone() {
    return cell_phone;
  }
  public void setCell_phone(String cell_phone) {
    this.cell_phone = cell_phone;
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
  public String getPostal_code() {
    return postal_code;
  }
  public void setPostal_code(String postal_code) {
    this.postal_code = postal_code;
  }
  public String getDefault_address() {
    return default_address;
  }
  public void setDefault_address(String default_address) {
    this.default_address = default_address;
  }
  public String getDetail_address() {
    return detail_address;
  }
  public void setDetail_address(String detail_address) {
    this.detail_address = detail_address;
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
  public static long getSerialversionuid() {
    return serialVersionUID;
  }

}
