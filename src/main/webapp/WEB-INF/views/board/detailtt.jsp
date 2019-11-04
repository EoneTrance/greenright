<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>사진게시물 보기</title>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>
<% session.setAttribute("memberName","choi");%>
<jsp:include page="../header.jsp"/>
    
<div id='content'>
<h1>사진게시물</h1>
<form action='update'
      method='post' enctype='multipart/form-data'>
번호: <input type='text' name='no' value='${board.no}' readonly><br>
제목: <input type='text' name='title' value='${board.title}' readonly><br>
내용: <textarea name='contents' rows='5' cols='50' readonly >${board.contents}</textarea><br>
작성자:${board.member.name}<br>
조회수: ${board.viewCount}<br>
추천수 : 1 <br>
<p>
<c:forEach items="${board.photos}" var="photo">
  <img src='/upload/board/${photo.filePath}' class='photo2'> 
  <br><br>
</c:forEach>
</p>

<table id="list">  
</table>
<a  id ="editNum" href='detailedit?no=${board.no}'>수정</a>

</form>
</div>
<script>
var member ="${board.member.name}"
var smember ="${memberName}"
if(member!=smember){
  $("#editNum").remove();
}
</script>





<jsp:include page="../footer2.jsp"/>

</body>
</html>
