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
    <h3>${param.id} 님</h3>
    <br>
    <p>비밀번호가 성공적으로 변경되었습니다.</p>
    <br>
    <br> <a href='http://localhost:8888/greenright/auth/form'>로그인 페이지로 이동하기</a>
  </div>
</body>
</html>