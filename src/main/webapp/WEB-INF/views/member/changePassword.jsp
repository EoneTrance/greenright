<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/greenright.css">

<div id="mypage-title-h1">
<h1>비밀번호 변경</h1>
</div>
<div id="content">
<br><br>
<p><span style="font-size:200%">${member.id}</span> 님의 비밀번호 변경 페이지 입니다.</p>
<br>
<div id="passwordChangeForm">
  <form action="changeResult" method="post" enctype="multipart/form-data">
  <input type="text" name="passwordAuthkey" autocomplete="off" value="${member.passwordAuthkey}" style="display:none;"/>
  <input type="text" name="id" autocomplete="off" class="form-control input-lg my-essential" autocomplete="off" value="${member.id}" readonly style="display: none;"/>
    비밀번호 <input type="password" name="password" class="form-control input-lg my-essential" maxlength="12" autocomplete="off"/>
    <div class="inputState"></div><br>
    비밀번호 확인 <input type="password" name="confirmPassword" class="form-control input-lg my-essential" maxlength="12" autocomplete="off"/>
    <div class="inputState"></div><br><br>
    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit" style="width:500px;">비밀번호 변경하기</button>
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

<script>
$(function() {
  $("#passwordChangeForm")[0].addEventListener("focusout", function(e) {
    console.log(e.target.tagName);
    if (e.target.tagName != "BUTTON") {
      
      var regularPassword = /^[A-Za-z0-9]{4,12}$/;
      
      var getTagNameByName = e.target.tagName + "[name=" + e.target.name + "]";
      var getConditionTag = getTagNameByName + " ~ div";
      
      if (e.target.value == ""){
        $(getTagNameByName)[0].style = "border: solid gray 2px;";
        if (e.target.closest("div").id == "address" && e.target.name != "detailAddress") {
          $(getTagNameByName)[0].style = "background-color:#E1E1E1;"
        }
        $(getConditionTag)[0].style = "color:red; font-size:80%;";
        $(getConditionTag)[0].innerHTML = "필수 입력 항목입니다.";
        e.stopPropagation();
      } else {
         if (e.target.name == "password") {
          if (!regularPassword.test($(getTagNameByName)[0].value)) {
            $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.";
            e.stopPropagation();
          } else if ($("input[name=password]")[0].value != $("input[name=confirmPassword]")[0].value) {
            $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $("input[name=confirmPassword]")[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            $("input[name=confirmPassword] ~ div")[0].style = "color:red; font-size:80%;";
            $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            e.stopPropagation();
          } else {
            $(getTagNameByName)[0].style = "border: solid green 3px; background-color:#F9FFF9;";
            $("input[name=confirmPassword]")[0].style = "border: solid green 3px; background-color:#F9FFF9;";
            $(getConditionTag)[0].style = "color:green; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
            $("input[name=confirmPassword] ~ div")[0].style = "color:green; font-size:80%;";
            $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치합니다.";
            e.stopPropagation();
          }
        } else if (e.target.name == "confirmPassword") {
          if (!regularPassword.test($(getTagNameByName)[0].value)) {
            $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.";
            e.stopPropagation();
          } else if ($("input[name=password]")[0].value != $("input[name=confirmPassword]")[0].value) {
            $(getTagNameByName)[0].style = "border: solid red 3px";
            $("input[name=password]")[0].style = "border: solid red 3px";
            $(getConditionTag)[0].style = "color:red; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            $("input[name=password] ~ div")[0].style = "color:red; font-size:80%;";
            $("input[name=password] ~ div")[0].innerHTML = "비밀번호가 일치하지 않습니다.";
            e.stopPropagation();
          } else {
            $(getTagNameByName)[0].style = "border: solid green 3px";
            $("input[name=password]")[0].style = "border: solid green 3px";
            $(getConditionTag)[0].style = "color:green; font-size:80%;";
            $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
            $("input[name=password] ~ div")[0].style = "color:green; font-size:80%;";
            $("input[name=password] ~ div")[0].innerHTML = "비밀번호가 일치합니다.";
            e.stopPropagation();
          }
        }
      }
    }
  });
  
  var checkState = function() {
    var inputStates = $(".my-essential ~ .inputState");
    var essentials = $(".my-essential");
    
    var eventGenerator = function() {
      for (var i = 0; i < essentials.length; i++) {
        if (i == 7) {
          continue;
        }
        essentials[i].focus();
      }
      essentials[essentials.length-1].blur();
    };
    
    eventGenerator();
    
    for (var j = 0; j < inputStates.length; j++) {
      if (inputStates[j].style.color == "red") {
        essentials[j].focus();
        return false;
      }
    }
    
    return true;
  };
});
</script>