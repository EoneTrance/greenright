<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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