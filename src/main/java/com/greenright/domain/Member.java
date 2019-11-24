<<<<<<< HEAD
package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int memberClass;
  private Date registeredDate;
  private String id;
  private String password;
  private int certificationFlag;
  private String cellPhone;
  private String name;
  private String nickname;
  private String email;
  private String postalCode;
  private String defaultAddress;
  private String detailAddress;
  private String question;
  private String answer;
  private String authkey;
  private String passwordAuthkey;
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getMemberClass() {
    return memberClass;
  }
  public void setMemberClass(int memberClass) {
    this.memberClass = memberClass;
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
  public int getCertificationFlag() {
    return certificationFlag;
  }
  public void setCertificationFlag(int certificationFlag) {
    this.certificationFlag = certificationFlag;
  }
  public String getCellPhone() {
    return cellPhone;
  }
  public void setCellPhone(String cellPhone) {
    this.cellPhone = cellPhone;
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
  public String getAuthkey() {
    return authkey;
  }
  public void setAuthkey(String authkey) {
    this.authkey = authkey;
  }
  public String getPasswordAuthkey() {
    return passwordAuthkey;
  }
  public void setPasswordAuthkey(String passwordAuthkey) {
    this.passwordAuthkey = passwordAuthkey;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getNickname() {
    return nickname;
  }
  public void setNickname(String nickname) {
    this.nickname = nickname;
  }
  @Override
  public String toString() {
    return "Member [no=" + no + ", memberClass=" + memberClass + ", registeredDate="
        + registeredDate + ", id=" + id + ", password=" + password + ", certificationFlag="
        + certificationFlag + ", cellPhone=" + cellPhone + ", name=" + name + ", nickname="
        + nickname + ", email=" + email + ", postalCode=" + postalCode + ", defaultAddress="
        + defaultAddress + ", detailAddress=" + detailAddress + ", question=" + question
        + ", answer=" + answer + ", authkey=" + authkey + ", passwordAuthkey=" + passwordAuthkey
        + "]";
  }
  
  


}
=======
package com.greenright.domain;

import java.io.Serializable;
import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Member implements Serializable {
  private static final long serialVersionUID = 1L;

  private int no;

  private int memberClass;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private Date registeredDate;

  private String id;

  private String password;

  private int certificationFlag;

  private String cellPhone;

  private String name;

  private String email;

  private String postalCode;

  private String defaultAddress;

  private String detailAddress;

  private String question;

  private String answer;

  private String authkey;

  private String passwordAuthkey;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMemberClass() {
    return memberClass;
  }

  public void setMemberClass(int memberClass) {
    this.memberClass = memberClass;
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

  public int getCertificationFlag() {
    return certificationFlag;
  }

  public void setCertificationFlag(int certificationFlag) {
    this.certificationFlag = certificationFlag;
  }

  public String getCellPhone() {
    return cellPhone;
  }

  public void setCellPhone(String cellPhone) {
    this.cellPhone = cellPhone;
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

  public String getAuthkey() {
    return authkey;
  }

  public void setAuthkey(String authkey) {
    this.authkey = authkey;
  }

  public String getPasswordAuthkey() {
    return passwordAuthkey;
  }

  public void setPasswordAuthkey(String passwordAuthkey) {
    this.passwordAuthkey = passwordAuthkey;
  }

  @Override
  public String toString() {
    return "Member [no=" + no + ", memberClass=" + memberClass + ", registeredDate="
        + registeredDate + ", id=" + id + ", password=" + password + ", certificationFlag="
        + certificationFlag + ", cellPhone=" + cellPhone + ", name=" + name + ", email=" + email
        + ", postalCode=" + postalCode + ", defaultAddress=" + defaultAddress + ", detailAddress="
        + detailAddress + ", question=" + question + ", answer=" + answer + ", authkey=" + authkey
        + ", passwordAuthkey=" + passwordAuthkey + "]";
  }

}
>>>>>>> f786826130ce28732ecc9270edafeb41088f606f
