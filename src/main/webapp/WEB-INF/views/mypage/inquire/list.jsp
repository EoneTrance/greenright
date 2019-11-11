<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet'
  href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel="stylesheet" href="/css/fontawesome/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <link rel="stylesheet" href="/css/aos.css">

    <link rel="stylesheet" href="/css/ionicons.min.css">

    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/icomoon.css">
    <link rel="stylesheet" href="/css/style.css">
<style>
.btn.btn-primary {
  width: 90px;
  height: 38px;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  font-size: 14px; 
}
</style>
  </head>
  <body>
   <jsp:include page="../../greenheader.jsp" />  

  <div class="hero-wrap hero-bread" style="background-image: url('/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center fadeInUp ftco-animated">
            <p class="breadcrumbs">
              <span class="mr-2">
                <a href="index.html"></a>
              </span> 
              <span>greenright</span>
            </p>
            <h1 class="mb-0 bread">1:1 문의게시판</h1>
          </div>
        </div>
      </div>
    </div>
     <br>
      
    <section class="ftco-section">
  
    <div id='content'
      style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
  
   <div id="np" style="float:left;"></div>
      
      <br>
      
     <table class='table table-hover' id="products">
        <thead class="thead-primary">
             <tr class="text-center">
                <th>No</th>
                <th>등록일</th>
                <th>제목</th>
                <th>질문</th>
                <th>답변여부</th>
            </tr>
         </thead>
            <c:forEach items="${boards}" var="board">
                <tr class="tr1">
                <td>${board.no}</td>
                <td>${board.date}</td>
                <td><a href='detail?no=${board.no}'>${board.title}</a></td>
                <td>${board.contents}</td>
                <td>${board.answerTrueFalse}</td>
              </tr>
            </c:forEach>
    
    </table>

    <p style="text-align: right;">
     <button type="button" onclick="location.href='form.jsp'"  class="btn btn-primary" >문의 작성</button>
    </p>
        <select name="answer" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option>전체</option>
            <option>미답변</option>
            <option>답변완료</option>
      </select>
      <select name="date" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option>전체</option>
            <option>일주일</option>
            <option>한달</option>
            <option>세달</option>
      </select>
      <select name="type" value='${member.cell_phone.substring(0,3)}'
            style="width:120px; height: 33px; display: inline;">
            <option>제목</option>
            <option>내용</option>
            <option>글쓴이</option>
            <option>아이디</option>
            <option>닉네임</option>
      </select>
    </div>
</section>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
  <jsp:include page="../../greenfooter.jsp" />
</html>