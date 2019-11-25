<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>1대1 문의 게시판목록</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
<meta charset="UTF-8">
</head>

<body>
  <h1  style="text-align:center">1대1 문의 게시판</h1>

<div id='contnet'>
  <form>
    <table class=" border border-dark table table-striped table table-hover border-dark">
      <thead>
        <tr>
          <th>번호</th>
          <th>문의유형</th>
          <th>회원번호</th>
          <th>제목</th>
          <th>답변여부</th>
          <th>날짜</th>
        </tr>
      </thead>
      <tbody>
      
      <c:forEach items="${boards}" var="privateQuestionBoard"> 
        <tr>
          <th scope="row">${privateQuestionBoard.privateQuestionID }</th>
          <td>${privateQuestionBoard.questionType }</td>
          <td>${member.no }</td>
          <td>${privateQuestionBoard.title }</td>
          <td>${privateQuestionBoard.answer }</td>
          <td>${privateQuestionBoard.createdDate }</td>
        </tr>
      </c:forEach>
        
      </tbody>
    </table>
    
    <div style="text-align:center">
      <!-- <button  style="text-align:center" type="button" class="btn btn-outline-success border border-success ">1대1 문의작성</button> -->
      <a href="privateform" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">1대1 문의 작성</a>
    </div>
  </form>
</div>

</body>

</html>