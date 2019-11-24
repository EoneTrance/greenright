<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="content">
<div id="searchDiv" style="text-align: left;margin-bottom:2px">
  <select name="searchBox" style="height: 30px;position:relative;bottom:2px">
    <optgroup id="searchType" label="검색유형">
      <option>전체</option>
      <option>번호</option>
      <option>아이디</option>
      <option>이름</option>
      <option>이메일</option>
      <option>핸드폰번호</option>
    </optgroup>
  </select>
  <input type='text' name='keyword'><button>검색</button>
</div>
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