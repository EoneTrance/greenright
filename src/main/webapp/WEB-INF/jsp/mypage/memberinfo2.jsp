<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원정보수정</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    
    
  </head>
  
  
  
  <body>
  
    <div class="container">
      
      <!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
      
    <form id="reg" name="reg" action="update" method="post" target="_self" onsubmit="return false;">
      <table class="table table-striped table-bordered table-hover">
        <caption>기본정보</caption>
        
        <tbody>
            <tr>
                <th>아이디</th>
                <td><input type="text" name="member_id" readonly="readonly" value="${member.id}">(영문소문자/숫자,4~16자)</td>
            </tr>
        
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="member_password" value="${member.password}" required>(영문대소문자/숫자4자~16자)</td>
            </tr>
            <tr>
                <th>비밀번호 확인</th>
                <td><input type="password" name="member_password_confirm" value="${member.password}" required></td>
            </tr>
            <tr>
                <th>이름</th>
                
                <td><input type="text" name="member_name" readonly="readonly" value="${member.name}"></td>
            </tr>
           
            <tr>
                <th rowspan="3">주소</th>
                <td><input type="text" name="address_number" value="${member.postalCode}" required><button>우편번호찾기</button></td>
            </tr>
            <tr><td><input type="text" name="default_address" value="${member.defaultAddress}" required>기본주소</td></tr>
            <tr><td><input type="text" name="detailed_address" value="${member.detailAddress}" required>상세주소</td></tr>
            <tr>
                <td>일반전화</td>
                <td>
                  <select class="form-control" name="home_phone1"
                  style="width:80px;height:30px;display: inline;">
                    <option>02</option>
                    <option>031</option>
                    <option>032</option>
                    <option>033</option>
                    <option>042</option>
                    <option>053</option>
                  </select> -
                  <input type="text" name="home_phone2" size="10" style="display: inline;"> -
                  <input type="text" name="home_phone3" size="10" style="display: inline;">
                </td>
            </tr>
            <tr class="danger">
                <td>휴대전화</td>
                <td>
                  <select class="form-control" name="phone1"
                  style="width:80px;height:30px;display: inline;">
                    <option>010</option>
                    <option>011</option>
                    <option>016</option>
                    <option>017</option>
                    <option>018</option>
                    <option>019</option>
                  </select> -
                  <input type="text" id="phone2" name="phone2" value="${member.cellPhone.substring(4,8)}" size="10" style="display: inline;"> -
                  <input type="text" id="phone3" name="phone3" value="${member.cellPhone.substring(9,13)}"size="10" style="display: inline;">
                </td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                  <input type="text" id="member_email_1" name="member_email_1" value="${member.email}" size="15" style="display: inline;"> @
                  <input type="text" id="member_email_2" name="member_email_2" size="15" style="display: inline;">
                  <select class="form-control" id="email_search" name="email_search"
                  style="width:150px;height:30px;display: inline;">
                    <option>naver.com</option>
                    <option>gmail.com</option>
                    <option>daum.net</option>
                    <option>nate.com</option>
                    <option>hotmail.com</option>
                    <option>yahoo.com</option>
                    <option>empas.com</option>
                    <option>korea.com</option>
                    <option>dreamwiz.com</option>
                  </select>
                </td>
            </tr>
            <tr>
                <td>이메일 수신여부</td>
                <td>  
                  <input type="radio" name="accept" value="수신함" />수신함
                  <input type="radio" name="acceptNot" checked="checked" value="수신안함" /> 수신안함<br>
                  쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다. 
                </td>
            </tr>   
        </tbody>
    </table>
   
          
            <%-- <button type="button" class="btn btn-outline-info">
               <a href='delete?no=${member.no}'>삭제</a> 
            </button> --%>
      <div class="con_bt " style="text-align:center" >
          <a href="javascript:sub();" class=" border border-info btn btn-outline-info btn-lg ">변경</a>
          <a href="javascript:sub_1();" class=" border border-info btn btn-outline-info btn-lg">취소</a>
          <a href="delete?no=${member.no}" class=" border border-danger btn btn-outline-danger btn-lg" role="button" aria-pressed="true">회원탈퇴</a>
      </div> 
    </form>
    
      
    </div>
      
  <script>
      function sub(){
      
        document.reg.submit();
        
      } 
      
      function sub_1(){
           
        history.back();
        
      }

    </script>
        
    <script> 
    $(function(){ 

      $(document).ready(function(){
        $('select[name=email_search]').change(function() {
          if($(this).val()=="1"){
            $('#member_email_2').val("");
          } else {
            $('#member_email_2').val($(this).val());
            $("#member_email_2").attr("readonly", true);
          }
        });
      });
    });
    </script>
    
    
    
    
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>