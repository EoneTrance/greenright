<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/mypage.css">

<div id="content">
<div id="loginForm">
  <form action="login" method="post" onsubmit="return login()">
    <input type="text" name="id" class="form-control input-lg" maxlength="12" placeholder="아이디">
    <input type="password" name="password" class="form-control input-lg" maxlength="12" placeholder="비밀번호">
    <div class="inputState"></div><br>
    <button class="searchbtn btn-lg my-btn my-btn-hover btn-block" type="submit">로그인</button>
  </form>
  <a href="../member/form">
  <button class="searchbtn btn-lg btn-danger my-btn-hover btn-block" type="submit">회원가입</button></a>
  <div id="findAccount">
    <table>
      <tr style="width: 500px; text-align: center">
        <td style="width:248px;"><a href="../member/findAccount/id"><button
              class="searchbtn btn-lg my-bg-color-gray" type="button" name="findId"
              style="font-weight:bold;width:248px;">아이디 찾기</button></a>
        </td>
        <td style="width: 248px"><a href="../member/findAccount/pw"><button
              class="searchbtn btn-lg my-bg-color-gray" type="button" name="findPw"
              style="font-weight: bold; width: 248px;">비밀번호 찾기</button></a></td>
      </tr>
    </table>
  </div>
</div>
</div>

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/js/main.js"></script>

<script type="text/javascript">
"use strict";


</script>

<script>
"use strict";
var getTagNameByName = "input[name=password]";
var getConditionTag = getTagNameByName + " ~ div.inputState";
var checkAccountResult = false;
function login() {
  if ($("input[name=id]")[0].value == null || $("input[name=id]")[0].value == "") {
    $(getConditionTag)[0].style = "color:red; font-size:80%;";
    $(getConditionTag)[0].innerHTML = "아이디를 입력해 주세요.";
    $("input[name=id]")[0].focus();
    checkAccountResult = false;
  } else if ($("input[name=password]")[0].value == null || $("input[name=password]")[0].value == "") {
    $(getConditionTag)[0].style = "color:red; font-size:80%;";
    $(getConditionTag)[0].innerHTML = "비밀번호를 입력해 주세요.";
    $("input[name=password]")[0].focus();
    checkAccountResult = false;
  } else {
    $.ajax({
      type: "POST",
      url: "../json/member/checkAccount",
      data: "id=" + $("input[name=id]")[0].value + "&password=" + $("input[name=password]")[0].value,
      dataType: "json",
      async: false,
      success: function(checkAccountData) {
        if (checkAccountData.message == "exist") {
          checkAccountResult = true;
        } else if (checkAccountData.message == "notExist") {
          $(getConditionTag)[0].style = "color:red; font-size:80%;";
          $(getConditionTag)[0].innerHTML = "아이디 또는 패스워드가 다릅니다.";
          checkAccountResult = false;
        }
      },
      error: function(checkAccountData) {
        $(getConditionTag)[0].style = "color:red; font-size:80%;";
        $(getConditionTag)[0].innerHTML = "회원 정보를 가져오는 중 오류가 발생했습니다.";
        checkAccountResult = false;
      }
    });
  }
  return checkAccountResult;
};
</script>