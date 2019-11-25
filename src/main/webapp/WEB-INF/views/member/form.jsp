<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/greenright.css">

<style>

.my-essential-input-text {
 color:black;
}

.my-essential {
  /* border:solid RGB(206,212,218) 1px; */
  border:solid black 1px;
}

</style>

<div id="content">
<div id=signform>
<form action='join' method='post' enctype='multipart/form-data' onsubmit="return checkState()">
    <span class="my-essential-input-text">아이디 *</span>
    <input type="text" name="id" class="form-control input-lg my-essential" maxlength="12"/>
    <div class="inputState"></div><br>
    <span class="my-essential-input-text">비밀번호 *</span>
    <input type="password" name="password" class="form-control input-lg my-essential" maxlength="12" autocomplete="off"/>
    <div class="inputState"></div><br>
    <span class="my-essential-input-text">비밀번호 확인 *</span>
    <input type="password" name="confirmPassword" class="form-control input-lg my-essential" maxlength="12" autocomplete="off"/>
    <div class="inputState"></div><br>
    <span>닉네임</span>
    <input type="text" name="name" class="form-control input-lg" placeholder="미 입력시 아이디로 설정됩니다." maxlength="12"/>
    <br>
    <span class="my-essential-input-text">이메일 *</span>
    <input type="email" name="email" class="form-control input-lg my-essential" placeholder="입력하신 메일 주소로 인증메일이 발송됩니다."/>
    <div class="inputState"></div><br>
    <span class="my-essential-input-text">핸드폰 번호 *</span>
    <input type="text" name="cellPhone" class="form-control input-lg my-essential" maxlength="11"/>
    <div class="inputState"></div><br>
    <div id="address">
      <span class="my-essential-input-text">우편번호 *</span><br>
      <input type="text" class="form-control input-lg d-inline-block my-essential"
             id="sample3_postcode" name="postalCode"
             readonly style="background-color:#E1E1E1;
             text-align:left;">
      <input type="button" class="searchbtn btn-primary btn-lg d-inline-block" name="searchPostalCode"
             onclick="sample3_execDaumPostcode()" value="우편번호 찾기"
             style="font-size:120%;border:none;">
      <div class="inputState"></div><br>
      <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
      <img src="//t1.daumcdn.net/postcode/resource/images/close.png"
           id="btnFoldWrap"
           style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1"
           onclick="foldDaumPostcode()" alt="접기 버튼">
      </div>
      <span class="my-essential-input-text">기본주소 *</span><br>
      <input type="text" id="sample3_address" name="defaultAddress"
             class="form-control input-lg d-inline-block my-essential"
             readonly style="background-color:#E1E1E1;text-align:left;">
      <div class="inputState"></div><br>
      <span class="my-essential-input-text">상세주소 *</span><br>
      <input type="text" id="sample3_detailAddress" name="detailAddress"
             class="form-control input-lg d-inline-block my-essential" style="text-align:left;">
      <div class="inputState"></div><br>
    </div>
    <span class="my-essential-input-text">본인 확인 질문 *</span>
    <select name="question" class="form-control input-lg my-essential">
      <optgroup id="question" label="비밀번호 찾기 질문">
      <option selected disabled hidden>질문 유형 선택</option>
      <option>좋아하는 책?</option>
      <option>졸업한 초등학교?</option>
      <option>존경하는 사람?</option>
      <option>어머니 이름?</option>
      <option>태어난 곳?</option>
      </optgroup>
    </select>
    <div class="inputState"></div><br>
    <span class="my-essential-input-text">본인 확인 답변 *</span>
    <input type="text" name="answer" class="form-control input-lg my-essential" />
    <div class="inputState"></div><br><br>
  <button class="searchbtn btn-lg btn-primary btn-block signup-btn" type="submit">회원가입</button>
  <br>
</form>
</div>
</div>

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
  //var formState = [false,false,false,false,false];
  var myEssentialInputs = $(".my-essential");
  for (var myEssentialInput of myEssentialInputs) {
    
    myEssentialInput.addEventListener("focusout", function(e) {
    
      if (!(e.target.tagName == "BUTTON" || e.target.type == "button")) {
        
        var regularNumber = /^01(?:[0-1]|[6-9])(?:[0-9]{7,8})$/; 
        var regularId = /^[a-z0-9]{4,12}$/g;
        var regularEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var regularPassword = /^[A-Za-z0-9]{4,12}$/;
        
        var getTagNameByName = e.target.tagName + "[name=" + e.target.name + "]";
        var getConditionTag = getTagNameByName + " ~ div";
        
        if (e.target.value == "" || e.target.value == "질문 유형 선택"){
          if (e.target.closest("div").id == "address" && e.target.name != "detailAddress") {
            $(getTagNameByName)[0].style = "background-color:#E1E1E1;"
          }
          $(getTagNameByName)[0].style = "border: solid red 1px; background-color:#FFFFFF;";
          $(getConditionTag)[0].style = "color:red; font-size:80%;";
          $(getConditionTag)[0].innerHTML = "필수 입력 항목입니다.";
          e.stopPropagation();
        } else {
          if (e.target.name == "id") {
            if (!regularId.test($(getTagNameByName)[0].value)) {
              //formState[0] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "아이디는 4~12자의 영문 소문자와 숫자로 구성되어야 합니다.";
              e.stopPropagation();
            } else {
              $.ajax({
                type: "GET",
                url: "/greenright/json/member/checkDuplicate",
                data: "value=" + e.target.value,
                dataType: "json",
                async: true,
                success: function(checkIdJsonData) {
                  if(checkIdJsonData.message == "exist") {
                    //formState[0] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "이미 사용중인 아이디 입니다.";
                    e.stopPropagation();
                  } else if (checkIdJsonData.message == "notExist") {
                    //formState[0] = true;
                    $(getTagNameByName)[0].style = "border: solid green 2px; background-color:#F9FFF9;";
                    $(getConditionTag)[0].style = "color:green; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "사용 가능한 아이디 입니다.";
                    e.stopPropagation();
                  } else {
                    //formState[0] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "아이디 중복 검사 중 오류가 발생했습니다.";
                    e.stopPropagation();
                  }
                }
              });
            }
          } else if (e.target.name == "password") {
            if (!regularPassword.test($(getTagNameByName)[0].value)) {
              //formState[1] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.";
              e.stopPropagation();
            } else if ($("input[name=password]")[0].value != $("input[name=confirmPassword]")[0].value) {
              //formState[1] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $("input[name=confirmPassword]")[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호가 일치하지 않습니다.";
              $("input[name=confirmPassword] ~ div")[0].style = "color:red; font-size:80%;";
              $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치하지 않습니다.";
              e.stopPropagation();
            } else {
              //formState[1] = true;
              $(getTagNameByName)[0].style = "border: solid green 2px; background-color:#F9FFF9;";
              $("input[name=confirmPassword]")[0].style = "border: solid green 2px; background-color:#F9FFF9;";
              $(getConditionTag)[0].style = "color:green; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
              $("input[name=confirmPassword] ~ div")[0].style = "color:green; font-size:80%;";
              $("input[name=confirmPassword] ~ div")[0].innerHTML = "비밀번호가 일치합니다.";
              e.stopPropagation();
            }
          } else if (e.target.name == "confirmPassword") {
            if (!regularPassword.test($(getTagNameByName)[0].value)) {
              //formState[2] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.";
              e.stopPropagation();
            } else if ($("input[name=password]")[0].value != $("input[name=confirmPassword]")[0].value) {
              //formState[2] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px";
              $("input[name=password]")[0].style = "border: solid red 2px";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호가 일치하지 않습니다.";
              $("input[name=password] ~ div")[0].style = "color:red; font-size:80%;";
              $("input[name=password] ~ div")[0].innerHTML = "비밀번호가 일치하지 않습니다.";
              e.stopPropagation();
            } else {
              //formState[2] = false;
              $(getTagNameByName)[0].style = "border: solid green 2px";
              $("input[name=password]")[0].style = "border: solid green 2px";
              $(getConditionTag)[0].style = "color:green; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
              $("input[name=password] ~ div")[0].style = "color:green; font-size:80%;";
              $("input[name=password] ~ div")[0].innerHTML = "비밀번호가 일치합니다.";
              e.stopPropagation();
            }
          } else if (e.target.name == "email") {
            if (!regularEmail.test($(getTagNameByName)[0].value)) {
              //formState[3] = false;
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "이메일 형식이 올바르지 않습니다.";
              e.stopPropagation();
            } else {
              $.ajax({
                type: "GET",
                url: "/greenright/json/member/checkDuplicate",
                data: "value=" + e.target.value,
                dataType: "json",
                async: true,
                success: function(checkEmailJsonData) {
                  if(checkEmailJsonData.message == "exist") {
                    //formState[3] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "이미 가입된 이메일 입니다.";
                    e.stopPropagation();
                  } else if (checkEmailJsonData.message == "notExist") {
                    //formState[3] = true;
                    $(getTagNameByName)[0].style = "border: solid green 2px; background-color:#F9FFF9;";
                    $(getConditionTag)[0].style = "color:green; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "사용 가능한 이메일 입니다.";
                    e.stopPropagation();
                  } else {
                    //formState[3] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "이메일 중복 검사 중 오류가 발생했습니다.";
                    e.stopPropagation();
                  }
                }
              });
            }
          } else if (e.target.name == "cellPhone") {
            if (!regularNumber.test(e.target.value)) {
              //formState[5] = false;
              //if (e.target.value.length < 10 && e.target.)
              $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
              $(getConditionTag)[0].style = "color:red; font-size:80%;";
              $(getConditionTag)[0].innerHTML = "핸드폰 번호 형식이 올바르지 않습니다.";
              e.stopPropagation();
            } else {
              $.ajax({
                type: "GET",
                url: "/greenright/json/member/checkDuplicateCellPhone",
                data: "cellPhone=" + e.target.value,
                dataType: "json",
                async: true,
                success: function(checkCellphoneJsonData) {
                  if (checkCellphoneJsonData.message == "exist") {
                    //formState[5] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "이미 가입된 번호입니다.";
                    e.stopPropagation();
                  } else if (checkCellphoneJsonData.message == "notExist") {
                    //formState[5] = true;
                    $(getTagNameByName)[0].style = "border: solid green 2px; background-color:#F9FFF9;";
                    $(getConditionTag)[0].style = "color:green; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "사용 가능한 번호입니다.";
                    e.stopPropagation();
                  } else {
                    //formState[5] = false;
                    $(getTagNameByName)[0].style = "border: solid red 2px; background-color:#FFF9F9;";
                    $(getConditionTag)[0].style = "color:red; font-size:80%;";
                    $(getConditionTag)[0].innerHTML = "전화번호 중복 검사 중 오류가 발생했습니다.";
                    e.stopPropagation();
                  }
                }
              });
            }
          } else if ((e.target.value != "" || e.target.value != "질문 유형 선택") && e.target.type != "button") {
            $(getTagNameByName)[0].style = "background-color:#FFFFFF;";
            $(getConditionTag).css("color", "gray");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag)[0].innerHTML = "";
            e.stopPropagation();
          }
        }
      }
    });
  };
});
</script>

<script src="/js/postcode.v2.js"></script>

<script>
  // 우편번호 찾기 찾기 화면을 넣을 element
  var element_wrap = document.getElementById('wrap');
  
  function foldDaumPostcode() {
      // iframe을 넣은 element를 안보이게 한다.
      element_wrap.style.display = 'none';
  }
  
  function sample3_execDaumPostcode() {
      // 현재 scroll 위치를 저장해놓는다.
      var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
      new daum.Postcode({
          oncomplete: function(data) {
              // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  
              // 각 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var addr = ''; // 주소 변수
              var extraAddr = ''; // 참고항목 변수
  
              //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
              if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
              } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
              }
  
              // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
              if(data.userSelectedType === 'R'){
                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                      extraAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if(extraAddr !== ''){
                      extraAddr = ' (' + extraAddr + ')';
                  }
                  // 조합된 참고항목을 해당 필드에 넣는다.
                  /* document.getElementById("sample3_extraAddress").value = extraAddr; */
              
              } /* else {
                  document.getElementById("sample3_extraAddress").value = '';
              } */
  
              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('sample3_postcode').value = data.zonecode;
              document.getElementById("sample3_address").value = addr + extraAddr;
              // 커서를 상세주소 필드로 이동한다.
              document.getElementById("sample3_detailAddress").focus();
  
              // iframe을 넣은 element를 안보이게 한다.
              // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
              element_wrap.style.display = 'none';
  
              // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
              document.body.scrollTop = currentScroll;
          },
          // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
          onresize : function(size) {
              element_wrap.style.height = size.height+'px';
          },
          width : '100%',
          height : '100%'
      }).embed(element_wrap);
  
      // iframe을 넣은 element를 보이게 한다.
      element_wrap.style.display = 'block';
  }
  
  var checkState = function() {
    var inputStates = $(".my-essential ~ .inputState");
    var essentials = $(".my-essential");
    
    var eventGenerator = function() {
      for (var i = 0; i < essentials.length; i++) {
        essentials[i].focus();
      }
      essentials[essentials.length-1].blur();
    };
    
    eventGenerator();
    
    /* 
    for (var state of formState) {
      //console.log(state);
       if (state == false) {
        return false;
      }
    } 
    */
    
    for (var j = 0; j < inputStates.length; j++) {
      if (inputStates[j].style.color == "red") {
        essentials[j].focus();
        return false;
      }
    }
    
    return true;
  };
</script>