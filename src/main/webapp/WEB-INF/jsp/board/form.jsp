<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>사진게시물 등록</title>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
</head>
<body>

<jsp:include page="../header.jsp"/>
    
<div id='content'>
<h1>게시글 등록</h1>
<form action='add' method='post' enctype='multipart/form-data'>
제목: <input type='text' name='title'><br> 
내용 : <textarea name='contents' rows='5' cols='50'></textarea><br>
 
<table id="list">  
</table>
 <button type="button" id="btnAdd">추가 </button>
<button>등록</button>

<%
  session.setAttribute("userNo", 1);
%>

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





















<!-- <table id="list">
 <caption>
   <button type="button" id="btnAdd">
     추가
   </button>
 </caption> 
</table> -->
<!-- <script>
function(){
  "#btnAdd".click(function(){ 
     var d = new Date(); 
     var curTime = d.toLocaleTimeString(); 
     
     var html = '<tr><td>' + curTime + '</td>'; /
     html += '<td><button type="button" class="btnDel">Del</button>'; 
     html += '</td></tr>';
     
     $("#list").append(html); 
  });
  
  $("#list").on("click", ".btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  

})

</script> -->
