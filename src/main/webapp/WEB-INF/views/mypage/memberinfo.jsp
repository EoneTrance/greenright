<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/memberInfo.css">
<div id=memberInfoForm>
<form action='update' method='post' enctype='multipart/form-data' onsubmit="return checkState()">
  <table class="table table-bordered table-hover" style="margin:auto auto;text-align:left;">
    <caption>기본정보</caption>
    <tbody>
    <tr>
      <th>아이디</th>
      <td>
      <input type="text" name="id" class="form-control input-lg my-essential notChange" value='${loginUser.id}' readonly/>
      </td>
    </tr>
    <tr>
      <th id="passwordTh">비밀번호</th>
      <td>
      <div id="passwordChange">
        <input type="button" name="changePw" class="form-control input-lg btn-success"
        value="비밀번호 변경하기" onclick='changePassword()'/>
        <input type="password" name="currentPassword" class="form-control input-lg"
        maxlength="12" autocomplete="off" style="display:none;"/>
        <input type="button" name="checkPw" class="form-control input-lg btn-success"
        value="비밀번호 확인" style="display:none;" onclick='checkPassword()'/>
        <input type="password" name="password" class="form-control input-lg"
        maxlength="12" autocomplete="off" style="display:none;"/>
        <input type="button" name="doChangePw" class="form-control input-lg btn-success"
        value="비밀번호 변경하기" style="display:none;" onclick='doChangePassword()'/>
        <input type="password" name="confirmPassword" class="form-control input-lg "
        maxlength="12" autocomplete="off" style="display:none;"/>
        <input type="button" name="cancelChangePw" class="form-control input-lg btn-danger"
        value="취소" style="display:none;" onclick='cancelChangePassword()'/>
        <span class="inputState"></span>
      </div>
    </td>
    </tr>
    <tr>
      <th>이름</th>
      <td>
      <input type="text" name="name" class="form-control input-lg my-essential notChange" value='${loginUser.name}' readonly/>
      </td>
    </tr>
    <tr>
      <th>이메일</th>
      <td>
      <input type="email" name="email" class="form-control input-lg my-essential notChange" value='${loginUser.email}' placeholder="입력하신 메일 주소로 인증메일이 발송됩니다."/>
      <span class="inputState"></span>
      </td>
    </tr>
    <tr>
      <th>핸드폰번호</th>
      <td>
      <input type="text" name="cellPhone" class="form-control input-lg my-essential" value='${loginUser.cellPhone}' maxlength="11"/>
      <span class="inputState"></span>
      </td>
    </tr>
    <tr>
      <th>우편번호</th>
      <td>
      <input type="text" class="form-control input-lg my-essential my-address"
             id="sample3_postcode" name="postalCode" value='${loginUser.postalCode}'
             readonly style="background-color:#E1E1E1;">
      <input type="button" class="form-control input-lg my-essential my-address" name="searchPostalCode"
             onclick="sample3_execDaumPostcode()" value="우편번호 찾기"
             style="background-color:#CC723D;
                    border:solid #CC723D 3px;
                    color:#FFFFFF;">
      <span class="inputState"></span>
      <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
      <img src="//t1.daumcdn.net/postcode/resource/images/close.png"
           id="btnFoldWrap"
           style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1"
           onclick="foldDaumPostcode()" alt="접기 버튼">
      </div>
      </td>
    </tr>
    <tr>
      <th>기본주소</th>
      <td>
      <input type="text" id="sample3_address" name="defaultAddress"
             class="form-control input-lg my-essential my-address" value='${loginUser.defaultAddress}'
             readonly style="background-color:#E1E1E1;text-align:left;">
      <span class="inputState"></span>
      </td>
    </tr>
    <tr>
      <th>상세주소</th>
      <td>
      <input type="text" id="sample3_detailAddress" name="detailAddress"
             class="form-control input-lg my-essential my-address" value='${loginUser.detailAddress}'
             style="text-align:left;">
      <span class="inputState"></span>
      </td>
    </tr>
    <tr>
      <th>본인 확인 질문</th>
      <td>
      <select name="question" class="form-control input-lg my-essential">
      <optgroup id="questionOpt" label="비밀번호 찾기 질문">
      <option selected disabled hidden>질문 유형 선택</option>
      <option>좋아하는 책?</option>
      <option>졸업한 초등학교?</option>
      <option>존경하는 사람?</option>
      <option>어머니 이름?</option>
      <option>태어난 곳?</option>
      </optgroup>
      </select>
      <span class="inputState"></span>
      </td>
    </tr>
    <tr>
      <th>본인 확인 답변</th>
      <td>
      <input type="text" name="answer" class="form-control input-lg my-essential" value='${loginUser.answer}'/>
      <span class="inputState"></span>
      </td>
    </tr>
    </tbody>
  </table>
  <button name="submitBtn" class="btn btn-lg btn-success btn-block signup-btn" type="submit">회원정보 수정</button>
</form>
</div>
  
<script>
"use strict"

$("select[name=question]")[0].value = '${loginUser.question}';

var checkInputState = [false,false];

/* var checkStateMap = new HashMap();

checkStateMap.put(""); */

$("#memberInfoForm")[0].addEventListener("focusout", function(e) {
  if (!(e.target.tagName == "BUTTON" || e.target.type == "button") && e.target.className.indexOf("notChange") == -1) {

    var regularNumber = /^01(?:[0-1]|[6-9])(?:[0-9]{7,8})$/; 
    var regularId = /^[a-z0-9]{4,12}$/g;
    var regularEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var regularPassword = /^[A-Za-z0-9]{4,12}$/;
    
    var getTagNameByName = e.target.tagName + "[name=" + e.target.name + "]";
    var getConditionTag = getTagNameByName + " ~ span.inputState";
    
    
    if (e.target.value == "" || e.target.value == "질문 유형 선택"){
      checkInputState[0] = false;
      $(getTagNameByName)[0].style = "border: solid #C7CED5 1px;";
      if (e.target.className.indexOf("my-address") != -1 && e.target.name != "detailAddress") {
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
          e.stopPropagation();
        } else {
          $(getTagNameByName)[0].style = "border: solid green 3px; background-color:#F9FFF9;";
          $("input[name=confirmPassword]")[0].style = "border: solid green 3px; background-color:#F9FFF9;";
          $(getConditionTag)[0].style = "color:green; font-size:80%;";
          $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
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
          e.stopPropagation();
        } else {
          $(getTagNameByName)[0].style = "border: solid green 3px";
          $("input[name=password]")[0].style = "border: solid green 3px";
          $(getConditionTag)[0].style = "color:green; font-size:80%;";
          $(getConditionTag)[0].innerHTML = "비밀번호가 일치합니다.";
          e.stopPropagation();
        }
      } else if (e.target.name == "cellPhone") {
        if (!regularNumber.test(e.target.value)) {
          checkInputState[1] = false;
          $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
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
                if ('${loginUser.id}' != checkCellphoneJsonData.result.id){
                  checkInputState[1] = false;
                  $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
                  $(getConditionTag)[0].style = "color:red; font-size:80%;";
                  $(getConditionTag)[0].innerHTML = "이미 가입된 번호입니다.";
                  e.stopPropagation();
                } else {
                  checkInputState[1] = true;
                  $(getTagNameByName)[0].style = "border: solid #C7CED5 1px; background-color:#FFFFFF; background-color:rgba( 255, 255, 255, 0);";
                  $(getConditionTag)[0].style = "color:gray; font-size:80%;";
                  $(getConditionTag)[0].innerHTML = "";
                  e.stopPropagation();
                }
              } else if (checkCellphoneJsonData.message == "notExist") {
                checkInputState[1] = true;
                $(getTagNameByName)[0].style = "border: solid green 3px; background-color:#F9FFF9;";
                $(getConditionTag)[0].style = "color:green; font-size:80%;";
                $(getConditionTag)[0].innerHTML = "사용 가능한 번호입니다.";
                e.stopPropagation();
              } else {
                checkInputState[1] = false;
                $(getTagNameByName)[0].style = "border: solid red 3px; background-color:#FFF9F9;";
                $(getConditionTag)[0].style = "color:red; font-size:80%;";
                $(getConditionTag)[0].innerHTML = "전화번호 중복 검사 중 오류가 발생했습니다.";
                e.stopPropagation();
              }
            }
          });
        }
      } else if ((e.target.value != "" || e.target.value != "질문 유형 선택") && e.target.type != "button") {
        checkInputState[0] = true;
        $(getTagNameByName)[0].style = "border: solid #C7CED5 1px; background-color:#FFFFFF; background-color:rgba( 255, 255, 255, 0);";
        $(getConditionTag)[0].style = "color:gray; font-size:80%;";
        $(getConditionTag)[0].innerHTML = "";
        e.stopPropagation();
      }
    }
  }
  console.log(checkInputState[0]);
});

var checkState = function() {
  var inputStates = $(".my-essential ~ span.inputState");
  var essentials = $(".my-essential");
  var eventGenerator = function() {
    for (var i = 0; i < essentials.length; i++) {
      if (essentials[i].className.indexOf("notChange") == -1){
        essentials[i].focus();
      }
    }
    essentials[essentials.length-1].blur();
  };
  
  eventGenerator();
  
  for (var check of checkInputState) {
    if (check == false) {
      return false;
    }
  }
  
  /* for (var j = 0; j < inputStates.length; j++) {
    if (inputStates[j].style.color == "red") {
      essentials[j].focus();
      return false;
    }
  } */
  
  return true;
};

</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
</script>

<script>

</script>

<script>
var userId = '${loginUser.id}';

function changePassword() {
  $("input[name=changePw]")[0].style.display = "none";
  $("input[name=currentPassword]")[0].style.display = "inline-block";
  $("input[name=checkPw]")[0].style.display = "inline-block";
}

function checkPassword() {
  $.ajax({
    type: "POST",
    url: "/greenright/json/member/checkAccount",
    data: "id=" + userId + "&password=" + $("input[name=currentPassword]")[0].value,
    dataType: "json",
    async: true,
    success: function(checkAccountJsonData) {
      if (checkAccountJsonData.message == "exist") {
        $("input[name=checkPw]")[0].style.display = "none";
        $("input[name=currentPassword]")[0].style.display = "none";
        $("input[name=password]")[0].style.display = "inline-block";
        $("input[name=confirmPassword]")[0].style.display = "inline-block";
        $("input[name=doChangePw]")[0].style.display = "inline-block";
        $("input[name=cancelChangePw]")[0].style.display = "inline-block";
        $("th#passwordTh")[0].innerHTML = "비밀번호<br><br>비밀번호 확인";
      } else if (checkAccountJsonData.message == "notExist") {
        $("input[name=currentPassword]")[0].style = "border: solid red 3px";
        $("input[name=currentPassword] ~ span.inputState")[0].style = "color:red; font-size:80%;";
        $("input[name=currentPassword] ~ span.inputState")[0].innerHTML = "비밀번호가 다릅니다.";
      } else {
        $("input[name=currentPassword]")[0].style = "border: solid red 3px; background-color:#FFF9F9;";
        $("input[name=currentPassword] ~ span.inputState")[0].style = "color:red; font-size:80%;";
        $("input[name=currentPassword] ~ span.inputState")[0].innerHTML = "비밀번호 검사 중 오류가 발생했습니다.";
      }
    }
  });
}

function doChangePassword() {
  $.ajax({
    type: "POST",
    url: "/greenright/json/member/passwordUpdate",
    data: "id=" + userId + "&password=" + $("input[name=password]")[0].value,
    dataType: "json",
    async: true,
    success: function(checkAccountJsonData) {
      if (checkAccountJsonData.message == "success") {
        $("input[name=password]")[0].style.display = "none";
        $("input[name=confirmPassword]")[0].style.display = "none";
        $("input[name=doChangePw]")[0].style.display = "none";
        $("input[name=cancelChangePw]")[0].style.display = "none";
        $("input[name=changePw]")[0].style.display = "inline-block";
        $("input[name=confirmPassword] ~ span.inputState")[0].style = "color:green; font-size:80%; margin-left:10px;";
        $("input[name=confirmPassword] ~ span.inputState")[0].innerHTML = "비밀번호가 변경되었습니다.";
        $("th#passwordTh")[0].innerHTML = "비밀번호";
      } else {
        $("input[name=confirmPassword]")[0].style = "border: solid red 3px; background-color:#FFF9F9;";
        $("input[name=confirmPassword] ~ span.inputState")[0].style = "color:red; font-size:80%; margin-left:10px;";
        $("input[name=confirmPassword] ~ span.inputState")[0].innerHTML = "비밀번호 변경 중 오류가 발생했습니다.";
      }
    },
    error: function(checkAccountJsonData) {
      $("input[name=confirmPassword]")[0].style = "border: solid red 3px; background-color:#FFF9F9;";
      $("input[name=confirmPassword] ~ span.inputState")[0].style = "color:red; font-size:80%; margin-left:10px;";
      $("input[name=confirmPassword] ~ span.inputState")[0].innerHTML = "비밀번호 변경 중 오류가 발생했습니다.";
    }
  });
}

function cancelChangePassword() {
  $("input[name=password]")[0].style.display = "none";
  $("input[name=confirmPassword]")[0].style.display = "none";
  $("input[name=doChangePw]")[0].style.display = "none";
  $("input[name=cancelChangePw]")[0].style.display = "none";
  $("input[name=changePw]")[0].style.display = "inline-block";
  $("th#passwordTh")[0].innerHTML = "비밀번호";
}
</script>