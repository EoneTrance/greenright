<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <div id="loginForm">
      <form action="login" method="post" enctype="multipart/form-data" onsubmit="return checkEmpty()">
        <input type="text" name="id" class="form-control input-lg" >
        <input type="password" name="password" class="form-control input-lg">
        <br>
        <button class="btn btn-lg btn-success btn-block" type="submit" >로그인</button>
      </form>
        <a href="../member/form"><button class="btn btn-lg btn-danger btn-block" type="submit" >회원가입</button></a>
        <div id="findAccount">
        <table>
        <tr style="width:500px;text-align:center">
          <td style="width:248px">
            <a href="findAccount/id"><button class="btn btn-lg" type="button" name="findId"
               style="font-weight:bold;width:248px;">아이디 찾기</button></a> 
          </td>
          <td style="width:248px">
            <a href="findAccount/pw"><button class="btn btn-lg" type="button" name="findPw"
               style="font-weight:bold;width:248px;">비밀번호 찾기</button></a> 
          </td>
        </tr>
        </table>
        </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript">
    "use strict";
    
    var checkEmpty = function() {
      for (var inputTag of $("form input")) {
        if (inputTag.value == null || inputTag.value == "") {
          return false;
        }
      }
      return true;
    };
  </script>
</body>
</html>