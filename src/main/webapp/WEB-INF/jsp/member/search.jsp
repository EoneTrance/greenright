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
<h1 style="color:green;">
  <a href="http://localhost:8888/greenright/member/list" style="color:green;">GreenRight</a>
</h1>
<div id="content">
  <table class="table table-hover">
    <tr>
      <th>번호</th>
      <th>아이디</th>
      <th>이름</th>
      <th>이메일</th>
      <th>핸드폰번호</th>
      <th>가입일</th>
    </tr>
    <c:forEach items="${members}" var="member">
    <tr>
      <td>${member.no}</td>
      <td>${member.id}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.cellPhone}</td>
      <td>${member.registeredDate}</td>
    </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>