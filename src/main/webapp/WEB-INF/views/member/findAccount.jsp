<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/mypage.css">

<br><br><br>
<div id="content">
<h3 id="findH2"></h3>
<br><br>
<div id="findIdPassword">
<form name="findAccount" action='../findResult/id' method='post' enctype='multipart/form-data' onsubmit="return checkEmpty()">
  <div id="idDiv">
  아이디 <input type="text" name="id" class="form-control input-lg" value='${foundId}'/>
  </div>
  이메일 <input type="text" name="email" class="form-control input-lg" style="margin-bottom: 20px;"
  placeholder="가입시 등록한 이메일을 입력해 주세요."/>
  본인 확인 질문 <select name="question" class="form-control input-lg" style="margin-bottom: 10px;">
    <optgroup id="question" label="비밀번호 찾기 질문">
      <option selected disabled hidden>질문 유형 선택</option>
      <option>좋아하는 책?</option>
      <option>졸업한 초등학교?</option>
      <option>존경하는 사람?</option>
      <option>어머니 이름?</option>
      <option>태어난 곳?</option>
    </optgroup>
  </select>
  본인 확인 답변 <input type="text" name="answer"
    class="form-control input-lg" />
  <br>
  <button class="btn btn-lg btn-primary btn-block" name="submitBtn" type="submit"></button>
</form>
</div>
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

<script type="text/javascript">
$(function() {
  "use strict";
  
  if ('${path}' == "findId") {
    $("div#idDiv")[0].style.display = "none";
    $("h3#findH2")[0].innerHTML = "아이디 찾기";
    $("form[name=findAccount]")[0].action = "../findResult/id";
    $("button[name=submitBtn]")[0].innerHTML = "아이디 찾기";
    
  } else if ('${path}' == "findPw") {
    $("div#idDiv")[0].style.display = "inline";
    $("h3#findH2")[0].innerHTML = "비밀번호 찾기";
    $("form[name=findAccount]")[0].action = "../findResult/pw";
    $("button[name=submitBtn]")[0].innerHTML = "비밀번호 찾기";
  }
});
</script>