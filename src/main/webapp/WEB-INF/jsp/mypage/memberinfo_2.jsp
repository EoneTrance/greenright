<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Green & Right</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
      crossorigin="anonymous">
    <link rel="stylesheet" href="/css/common.css">
  </head>
  <body>
      <h1 style="color:green;">GreenRight</h1>
    <div id=signform>
      <form name="signUpForm" class="form" role="form" action='add' method='post' enctype='multipart/form-data'>
        <!-- <div class="row">
          <div class="col-xs-6 col-md-6"> -->
          아이디 <input id="essential" type="text" name="inputId" class="form-control input-lg" maxlength="12"/>
          <div id="checkId"></div><br>
          비밀번호 <input id="essential" type="password" name="password" class="form-control input-lg" maxlength="20"/>
          <div></div><br>
          비밀번호 확인 <input id="essential" type="password" name="confirmPassword" class="form-control input-lg" maxlength="20"/>
          <div id="checkPassword"></div><br>
          이름 <input id="essential" type="text" name="name" class="form-control input-lg" />
          <div></div><br>
          이메일 <input id="essential" type="email" name="email" class="form-control input-lg" />
          <div id="checkEmail"></div><br>
          <div style='font-weight: normal'>전화번호</div> <input id="notessential" type="text" name="tel" class="form-control input-lg" />
          <br><br>
          핸드폰 번호 <input id="essential" type="text" name="cellPhone" class="form-control input-lg" />
          <div></div><br>
          우편번호 <input id="essential" type="text" name="postalCode" class="form-control input-lg" />
          <div></div><br>
          기본주소 <input id="essential" type="text" name="defaultAddress" class="form-control input-lg" pla/>
          <div></div><br>
          상세주소 <input id="essential" type="text" name="detailAddress" class="form-control input-lg" />
          <div></div><br>
          비밀번호 찾기 질문 <select id="essential" name="question" class="form-control">
            <optgroup id="question" label="비밀번호 찾기 질문">
            <option selected disabled hidden>질문 유형 선택</option>
            <option>좋아하는 책?</option>
            <option>졸업한 초등학교?</option>
            <option>존경하는 사람?</option>
            <option>어머니 이름?</option>
            <option>태어난 곳?</option>
            </optgroup>
          </select>
          <div>ㅇ</div><br>
          비밀번호 찾기 답변 <input id="essential" type="text" name="answer" class="form-control input-lg" />
          <div></div><br>
        <button class="btn btn-lg btn-success btn-block signup-btn" type="submit">회원가입</button>
      </form>
    </div>
   <script>
    "use strict"
    /* document.getElementById("signform").onclick = (e) => { */
    document.querySelector("#signform").addEventListener("focusout", function(e) {
      var regularId = /^[a-z0-9]{4,12}$/g;
      var regularEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      
      var inputId = document.getElementsByName("inputId");
      var checkId = document.getElementById("checkId");
      var password = document.getElementsByName("password");
      var confirmPassword = document.getElementsByName("confirmPassword");
      var checkPassword = document.getElementById("checkPassword");
      var email = document.getElementsByName("email");
      var checkEmail = document.getElementById("checkEmail");
      
      if ((e.target.value == "" || e.target.value == "질문 유형 선택") && e.target.id == "essential") {
        document.querySelector("#" + e.target.id + "[name=" + e.target.name + "] ~ div").style = "color:red; font-size:80%;";
        document.querySelector("#" + e.target.id + "[name=" + e.target.name + "] ~ div").innerHTML = "필수 입력 항목입니다.";
        e.stopPropagation();
      } else {
        document.querySelector("#" + e.target.id + "[name=" + e.target.name + "] ~ div").style = "color:green; font-size:80%;";
        document.querySelector("#" + e.target.id + "[name=" + e.target.name + "] ~ div").innerHTML = "";
        e.stopPropagation();
      }
      
      if (inputId[0].value != "") {
        var xhr = new XMLHttpRequest();
        /* 
        xhr.open("GET", "detail.jsp?name=" + inputId[0].value, true);
        xhr.send(); */
        if (!regularId.test(inputId[0].value)) {
          checkId.style = "color:red; font-size:80%;";
          inputId[0].style = "border: solid red 3px;";
          checkId.innerHTML = "아이디는 4~12자의 영문 소문자와 숫자로만 입력 가능합니다.";
          e.stopPropagation();
          
        } else if (inputId[0].value == "asd123") {
          checkId.style = "color:red; font-size:80%;";
          inputId[0].style = "border: solid red 3px;";
          checkId.innerHTML = "이미 사용중인 아이디 입니다.";
          e.stopPropagation();
          
        } else {
          checkId.style = "color:green; font-size:80%;";
          inputId[0].style = "border: solid green 3px;";
          checkId.innerHTML = "사용 가능한 아이디 입니다.";
          e.stopPropagation();
        }
      }
      
      if (confirmPassword[0].value != "") {
        if (password[0].value != confirmPassword[0].value) {
          checkPassword.style = "color:red; font-size:80%;";
          confirmPassword[0].style = "border: solid red 3px";
          checkPassword.innerHTML = "비밀번호가 일치하지 않습니다.";
          e.stopPropagation();
          
        } else {
          checkPassword.style = "color:green; font-size:80%;";
          confirmPassword[0].style = "border: solid green 3px";
          checkPassword.innerHTML = "비밀번호가 일치합니다.";
          e.stopPropagation();
        }
      }
      
      if (email[0].value != "") {
        if (!regularEmail.test(email[0].value)) {
          checkEmail.style = "color:red; font-size:80%;";
          email[0].style = "border: solid red 3px";
          checkEmail.innerHTML = "이메일 형식이 올바르지 않습니다.";
          e.stopPropagation();
          
        } else if (email[0].value == "test@test.com") {
          checkEmail.style = "color:red; font-size:80%;";
          email[0].style = "border: solid red 3px;";
          checkEmail.innerHTML = "이미 사용중인 이메일 입니다.";
          e.stopPropagation();
          
        } else {
          checkEmail.style = "color:green; font-size:80%;";
          email[0].style = "border:solid green 3px";
          checkEmail.innerHTML = "유효한 이메일 입니다.";
          e.stopPropagation();
        }
      }
    });
    </script>
  </body>
</html>