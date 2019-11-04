<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<title>GreenRight</title>
<style>
  div#idDiv{
    display: none;
  }
</style>
</head>
<body>
  <h1 style="color:green;">
    <a href="http://localhost:8888/greenright/member/list" style="color:green;">GreenRight</a>
  </h1>
  <h2 style="text-align:center">아이디 / 비밀번호 찾기</h2>
  <div id="content">
    <div id="findIdPassword">
    <form name="findAccount" action='../foundId' method='post' enctype='multipart/form-data' onsubmit="return checkEmpty()">
      <div id="idDiv">
      아이디 <input type="text" name="id" class="form-control input-lg" value='${foundId}'/>
      </div>
      이메일 <input type="text" name="email" class="form-control input-lg" style="margin-bottom: 20px;"
      placeholder="가입시 등록한 이메일을 입력해 주세요."/>
      계정 찾기 질문 <select name="question" class="form-control input-lg" style="margin-bottom: 10px;">
        <optgroup id="question" label="비밀번호 찾기 질문">
          <option selected disabled hidden>질문 유형 선택</option>
          <option>좋아하는 책?</option>
          <option>졸업한 초등학교?</option>
          <option>존경하는 사람?</option>
          <option>어머니 이름?</option>
          <option>태어난 곳?</option>
        </optgroup>
      </select>
      계정 찾기 답변 <input type="text" name="answer"
        class="form-control input-lg" />
      <br>
      <button class="btn btn-lg btn-success btn-block" name="submitBtn" type="submit"></button>
    </form>
    </div>
  </div>
  
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript">
    "use strict";
    
    if ('${path}' == "findId") {
      $("div#idDiv")[0].style.display = "none";
      $("button[name=submitBtn]")[0].innerHTML = "아이디 찾기";
      $("form[name=findAccount]")[0].action = "../foundId";
      
    } else if ('${path}' == "findPw") {
      $("div#idDiv")[0].style.display = "inline";
      $("button[name=submitBtn]")[0].innerHTML = "비밀번호 찾기";
      $("form[name=findAccount]")[0].action = "../foundPw";
    }
  </script>
</body>
</html>