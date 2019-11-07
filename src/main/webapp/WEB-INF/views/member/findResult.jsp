<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="content">
<h2 id="foundH2" style="text-align:center">아이디 / 비밀번호 찾기 결과</h2>
<br>
<div id="searchResult"></div>
</div>

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

<script>
  "use strict"
  var path = '${path}';
  var foundMemberId = '${foundMember.id}';
  var printResult;
  if (path == "findId") {
    $("h2#foundH2")[0].innerHTML = "아이디 찾기 결과";
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
                  + "<tr style='width:500px;text-align:center'>"
                  + "<td style='width:248px'>"
                  + "<input name='foundId' value='${foundMember.id}' style='display:none'>"
                  + "<button class='btn btn-lg' type='submit' style='font-weight:bold;width:248px;'>비밀번호 찾기</button>"
                  + "</td>"
                  + "</tr>"
                  + "</table>"
                  + "</form>"
                  + "<a href='../form'><button class='btn btn-lg btn-success btn-block' type='button' >로그인</button></a>"
                  + "</div>"
                  + "</div>";
      $("div#searchResult")[0].innerHTML = printResult;
    }
  } else if (path == "findPw") {
    $("h2#foundH2")[0].innerHTML = "비밀번호 찾기 결과";
    if (foundMemberId == null || foundMemberId == "") {
      printResult = "<p>입력하신 내용으로 비밀번호를 찾을 수 없습니다.</p>";
      $("div#searchResult")[0].innerHTML = printResult;
    } else {
      printResult = "<p><span style='font-size:200%;'>'" + foundMemberId + "'</span> 님의 본인 확인에 성공하였습니다.</p>"
                  + "<p>가입시 등록한 이메일 주소로 비밀번호 변경 메일이 발송되었습니다.</p>";
      $("div#searchResult")[0].innerHTML = printResult;
    }
  } else {
    printResult = "<p>잘못된 접근입니다.</p>";
    $("div#searchResult")[0].innerHTML = printResult;
  }
  
</script>