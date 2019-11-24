<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/greenright.css">

<div id="mypage-title-h1">
<h1>아이디 / 비밀번호 찾기 결과</h1>
</div>
<div id="content">
<br><br>
<div id="searchResult"></div>
</div>
<br><br>

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>

<script>
"use strict"
  
$(function() {
  var path = '${path}';
  var foundMemberId = '${foundMember.id}';
  var printResult;
  if (path == "findId") {
    $("#mypage-title-h1 > h1")[0].innerHTML = "아이디 찾기 결과";
    if (foundMemberId == null || foundMemberId == "") {
      printResult = "<p>입력하신 내용으로 아이디를 찾을 수 없습니다.</p>";
      $("div#searchResult")[0].innerHTML = printResult;
    } else {
      printResult = "<p>회원님의 아이디는 <span style='font-size:200%;'>" + foundMemberId + "</span> 입니다.</p>"
                  + "<br>"
                  + "<div id='loginForm'>"
                  + "<div id='findId'>"
                  + "<form action='../findAccount/pw' method='post' enctype='multipart/form-data'>"
                  + "<table>"
                  + "<tr style='width:500px;text-align:center;'>"
                  + "<td style='width:500px'>"
                  + "<input name='foundId' value='${foundMember.id}' style='display:none'>"
                  + "<button class='btn btn-lg btn-dark btn-block' type='submit'>비밀번호 찾기</button>"
                  + "</td>"
                  + "</tr>"
                  + "</table>"
                  + "</form>"
                  + "<a href='/greenright/auth/form'><button class='btn btn-lg btn-primary btn-block' type='button' >로그인</button></a>"
                  + "</div>"
                  + "</div>";
      $("div#searchResult")[0].innerHTML = printResult;
    }
  } else if (path == "findPw") {
    $("#mypage-title-h1 > h1")[0].innerHTML = "비밀번호 찾기 결과";
    if (foundMemberId == null || foundMemberId == "") {
      printResult = "<p>입력하신 내용으로 비밀번호를 찾을 수 없습니다.</p>";
      $("div#searchResult")[0].innerHTML = printResult;
    } else {
      printResult = "<p><span style='font-size:200%;'>" + foundMemberId + "</span> 님의 본인 확인에 성공하였습니다.</p>"
                  + "<p>가입시 등록한 이메일 주소로 비밀번호 변경 메일이 발송되었습니다.</p>"
                  + "<div id='loginForm'>"
                  + "<div id='findId'>"
                  + "<br><br>"
                  + "<a href='/greenright/auth/form'><button class='btn btn-lg btn-primary btn-block' type='button'>로그인</button></a>"
                  + "</div>"
                  + "</div>";
      $("div#searchResult")[0].innerHTML = printResult;
    }
  } else {
    printResult = "<p>잘못된 접근입니다.</p>";
    $("div#searchResult")[0].innerHTML = printResult;
  }
});
</script>