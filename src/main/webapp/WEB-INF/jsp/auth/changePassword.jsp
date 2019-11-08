<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<title>GreenRight</title>
</head>
<body>
<div id="content">
    <h1 style="color:green;">
      <a href="http://localhost:8888/greenright/member/list" style="color:green;">GreenRight</a>
    </h1>
    <h2>비밀번호 변경</h2>
    <br>
    <p>'${changePasswordMember.id}' 님의 비밀번호 변경 페이지 입니다.</p>
    <br>
    <div id="passwordChangeForm">
      <form action="changeResult" method="post" enctype="multipart/form-data">
      <input type="text" name="id" autocomplete="off" style="display:none;"/>
        비밀번호 <input type="password" name="password" class="form-control input-lg" maxlength="20" autocomplete="off"/>
        <div></div><br>
        비밀번호 확인 <input type="password" name="confirmPassword" class="form-control input-lg" maxlength="20" autocomplete="off"/>
        <div id="checkPassword"></div><br>
        <p>아래의 비밀번호 변경하기 버튼을 누르시면 입력하신 비밀번호로 비밀번호가 재설정 됩니다.</p>
        <button class="btn btn-lg" type="submit" style="font-weight:bold;width:500px;">비밀번호 변경하기</button>
      </form>
    </div>
  </div>
  <script>
  $("#passwordChangeForm")[0].addEventListener("focusout", function(e) {
    
    if (e.target.tagName != "BUTTON") {
      
      var regularPassword = /^[A-Za-z0-9]{4,12}$/;
      
      var getTagNameByName = e.target.tagName + "[name=" + e.target.name + "]";
      var getConditionTag = getTagNameByName + " ~ div";
      
      if (e.target.value == ""){
        $(getTagNameByName)[0].style = "border: solid gray 2px;";
        if (e.target.closest("div").id == "address" && e.target.name != "detailAddress") {
          $(getTagNameByName)[0].style = "background-color:#E1E1E1;"
        }
        $(getConditionTag)[0].style = "color:red; font-size:80%;";
        $(getConditionTag)[0].innerHTML = "필수 입력 항목입니다.";
        e.stopPropagation();
      } else {
         if (e.target.name == "password") {
          if (!regularPassword.test($(getTagNameByName)[0].value)) {
            $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.";
            e.stopPropagation();
          } else if ($("input[name=password]")[0].value != $("input[name=confirmPassword]")[0].value) {
            $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $("input[name=confirmPassword]")[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            $("input[name=confirmPassword] ~ div")[0].style = "color:red; font-size:80%;";
            $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            e.stopPropagation();
          } else {
            $(getTagNameByName)[0].style = "border: solid green 3px; background-color:#F9FFF9;";
            $("input[name=confirmPassword]")[0].style = "border: solid green 3px; background-color:#F9FFF9;";
            $(getConditionTag)[0].style = "color:green; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
            $("input[name=confirmPassword] ~ div")[0].style = "color:green; font-size:80%;";
            $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치합니다.";
            e.stopPropagation();
          }
        }
      }
    }
  }
  </script>
</body>
</html>