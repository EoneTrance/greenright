<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
<div id="content">
<h2 id="findH2" style="text-align:center">아이디 / 비밀번호 찾기</h2>
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
  <button class="btn btn-lg btn-success btn-block" name="submitBtn" type="submit"></button>
</form>
</div>
</div>

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
  "use strict";
  
  if ('${path}' == "findId") {
    $("div#idDiv")[0].style.display = "none";
    $("h2#findH2")[0].innerHTML = "아이디 찾기";
    $("form[name=findAccount]")[0].action = "../findResult/id";
    $("button[name=submitBtn]")[0].innerHTML = "아이디 찾기";
    
  } else if ('${path}' == "findPw") {
    $("div#idDiv")[0].style.display = "inline";
    $("h2#findH2")[0].innerHTML = "비밀번호 찾기";
    $("form[name=findAccount]")[0].action = "../findResult/pw";
    $("button[name=submitBtn]")[0].innerHTML = "비밀번호 찾기";
  }
</script>