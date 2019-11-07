<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<div id="content">
<div id="loginForm">
  <form action="login" method="post" enctype="multipart/form-data"
    onsubmit="return login()">
    <input type="text" name="id" class="form-control input-lg" maxlength="12" placeholder="아이디">
    <input type="password" name="password" class="form-control input-lg" maxlength="12" placeholder="비밀번호">
    <div class="inputState"></div><br>
    <button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
  </form>
  <a href="../member/form"><button
      class="btn btn-lg btn-danger btn-block" type="submit">회원가입</button></a>
  <div id="findAccount">
    <table>
      <tr style="width: 500px; text-align: center">
        <td style="width: 248px"><a href="../member/findAccount/id"><button
              class="btn btn-lg" type="button" name="findId"
              style="font-weight: bold; width: 248px;">아이디 찾기</button></a>
        </td>
        <td style="width: 248px"><a href="../member/findAccount/pw"><button
              class="btn btn-lg" type="button" name="findPw"
              style="font-weight: bold; width: 248px;">비밀번호 찾기</button></a></td>
      </tr>
    </table>
  </div>
</div>
</div>

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
          console.log("exist");
          checkAccountResult = true;
        } else if (checkAccountData.message == "notExist") {
          console.log("notExist");
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