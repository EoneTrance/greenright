<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Community form</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet'
  href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>

<style>
.btn.btn-primary {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
</style>
</head>
<body>

  <jsp:include page="../greenheader.jsp" />

  <div
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">Community</h1>
    <p style="text-align: center;">GreenRight 커뮤니티입니다.</p>
    <form action="add" method='post' enctype='multipart/form-data' class="p-5 bg-light">
      <div class="form-group">
        <label for="inputTitle">제목</label> 
        <input type='text' name='title' class="form-control">
      </div>

      <div class="form-group">
        <label for="message">내용</label>
        <textarea name='contents' rows="10" cols="30" class="form-control"></textarea>
      </div>
      <div class="form-group">
        <button type="button" id="btnAdd">추가</button>
      </div>
      <div class="form-group">
        <p style="text-align: right;">
          <button class="btn btn-primary">등록</button>
        </p>
        <table id="list">
        </table>
    

  <!-- <div id='content'
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">Community</h1>
      <p style="text-align: center;">GreenRight 커뮤니티입니다.</p>
<form action='add' method='post' enctype='multipart/form-data' style=" margin: auto; width: 1140px; padding-right: 15px; padding-left: 15px;">
 <div style="margin: auto; margin-top: 20px;">
    <label for="inputTitle">제목</label>
    <div>
    <input type='text' name='title' class="form-control">
    </div>
 

    
   <textarea name='contents' rows="10" cols="30"></textarea>
<p style="text-align: right;">
<button class="btn btn-primary" >등록</button>
</p>
 <button type="button" id="btnAdd">추가 </button>
  </div>
 <table id="list">  
</table>


</form>
</div> -->
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
      </div>
      <%
  session.setAttribute("userNo", 1);
%>
    </form>
  </div>
  <br>
  <br>
  <jsp:include page="../greenfooter.jsp" />
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
