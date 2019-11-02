<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
 #ndp {
display:none
} 
</style>
  <title>사진게시물 보기</title>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>

<jsp:include page="../header.jsp"/>
    
<div id='content'>
<h1>사진게시물</h1>
<form action='update'
      method='post' enctype='multipart/form-data'>
번호: <input type='text' name='no' value='${board.no}' readonly><br>
제목: <input type='text' name='title' value='${board.title}'><br>
내용: <textarea name='contents' rows='5' cols='50'>${board.contents}</textarea><br>
조회수: ${board.viewCount}<br>
<p>
<c:forEach items="${board.photos}" var="photo">
         선택시 삭제 <input type="checkbox" name = "boardPhotoNumber" value='${photo.no}' id="daaa">
          <img src='/upload/board/${photo.filePath}' class='photo2'> 
          <input type="text" name="boardPhotoNumber" value ="0" id="ndp">
          <br><br>
</c:forEach>
</p>

<button type="button" id="btnAdd">추가 </button>
<table id="list">  
</table>
<button>변경</button>
<a href='delete?no=${board.no}'>삭제</a>

</form>
</div>
<script type="text/javascript">
$(function(){
  $("#btnAdd").click(function(){ 
     
     var html = '<tr><td><input type="file" name="filePath">'; 
     html += '<button type="button" class="btnDel">Del</button>'
     html += '</td></tr>';
     
     $("#list").append(html); 
  });
  
  $("#list").on("click", ".btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  

})

</script>
<jsp:include page="../footer.jsp"/>

</body>
</html>
