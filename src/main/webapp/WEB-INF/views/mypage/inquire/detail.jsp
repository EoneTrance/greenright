<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>
<script src='/node_modules/sweetalert/dist/sweetalert.min.js'></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>1:1문의게시판</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
 <jsp:include page="../../greenheader.jsp" />  
  <div class ="inquire-form"
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
     <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">1:1 문의게시판</h1>
    <p style="text-align: center;">GreenRight 1 : 1 문의게시판입니다.</p>
    <br>
      <table class="table-striped table-bordered table-hover" style="width:1140px; height:200px; text-align:center;">
      
        <tbody>
            <tr>
                <th>제목</th>
                <td colspan="3">${privateBoard.title}</td>
            </tr>
            <tr>
                <th>문의일</th>
                <td>${privateBoard.date}</td>
                <th>문의상태</th>
                <td id="tf">${privateBoard.answerTrueFalse}</td>
            </tr>
            <tr>
              <th>문의하신내용</th>
              <td colspan="3">${privateBoard.contents}</td>
            </tr>
            <tr>
              <th>답변내용</th>
              <td colspan="3" id="tdtd">
                  <textarea id='answer-add' style="display:none; width:500px;"></textarea>
                  <p id="real-answer">${privateBoard.answers}</p>
              </td>
              
            </tr>
        </tbody>
    </table><br>
     </div>
  
    <P align="center">
      <button type="button" class="btn btn-primary" onclick="location.href='list.jsp'">목록</button>
        <button type="button" class="btn btn-primary" id="answer">답변작성</button>
        <button type="button" class="btn btn-primary" id="answeranswer" style="display:none;">답변등록</button>
        <button type="button" class="btn btn-primary" id="answer-update" style="display:none;">답변수정</button>
        <button type="button" class="btn btn-primary" id="answer-delete" style="display:none;">
          <a href='delete?no=${privateBoard.no}' style="color: white;">답변삭제</a>
        </button>
    </p>
    
    
   
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
<script>


$(function(){
 
  var answers = '${privateBoard.answers}';
  console.log(answers);
  
  if (!(answers == null || answers == "")) {
    $('#answer-delete').css('display', 'inline-block');
    $('#answer-update').css('display', 'inline-block');
    $('#answer').css('display', 'none');
  }
});

$('#answer').on('click', (event) => {
  

    $('#answer-add').css('display', 'inline-block');
    $('#answer').css('display', 'none');
    $('#answeranswer').css('display', 'inline-block');
    
});
var no = ${privateBoard.no};
$('#delete').on('click', () => {
  
  $.ajax({
    url :"delete", 
    data : no,
    method:'get',
    dataType: "text/html;charset=utf-8",
    success : function(result) {
      alert('성공')
    }
  });
  
});


  
$('#answeranswer').on('click', () => {
  var answerAdd = $('#answer-add').val();
  var cont = {
      "privateQuestion": ${privateBoard.no},
      "contents": answerAdd
    };
  $.ajax({
    url: "../json/inquire/manager/add",
    method:"Post",
    dataType: "json",
    data: JSON.stringify(cont),
    contentType: 'application/json',
    success: function(response){
      
      $('#answeranswer').css('display', 'none');
      $('#answer-add').css('display', 'none');
      $('#answer-update').css('display', 'inline-block');
      $('#answer-delete').css('display', 'inline-block');
      $('#real-answer').text(answerAdd);
    
    }
  });
});



</script>
<br>
<br>
<jsp:include page="../../greenfooter.jsp" />
</html>