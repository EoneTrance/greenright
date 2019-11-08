<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<title>GreenRight</title>
</head>
<body>
<h1 style="color:green;">
  <a href="http://localhost:8888/greenright/member/list" style="color:green;">GreenRight</a>
</h1>
<div style="margin:100px;text-align:center;">
    <h3>안녕하세요, ${param.id} 님</h3>
    <br>
    <p>환영합니다!</p>
    <br>
    <p>회원가입이 정상적으로 이루어 졌습니다.</p>
    <br>
    <p>로그인 하시면 홈페이지 내의 모든 서비스를 이용하실 수 있습니다.</p>
    <br> <a href='http://localhost:8888/greenright/auth/form'>로그인 페이지로 이동하기</a>
  </div>
</body>
</html>