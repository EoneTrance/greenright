<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/css/greenright.css">
  
<style>

  div.well {
    border: dashed #82AE46 5px;
    background-color: RGBA(130,174,70,0.1);
  }
  
  /* #597B2F */

  div.well h4 {
    font-weight:bold;
  }
  
  div.well p {
    font-size:300%;
    color:#82AE46;
  }
  
  .dropdown .dropdown-menu .inner ul .active a,
  .dropdown .dropdown-menu .inner ul .active
  {
    background-color:#82AE46;
    color:#FFFFFF;
  }
  
  .dropdown .dropdown-menu .inner li a:hover
  {
    background-color:RGBA(130,174,70,0.5);
  }
  
  .filter-option-inner {
    text-align: center;
  }
  
  div.dropdown.bootstrap-select.my-essential {
    width:49% !important;
  }
  
  table.my-join-table tbody th {
    border-right:solid RGBA(130,174,70,0.5) 1px;
    border-bottom:solid RGBA(130,174,70,0.5) 1px;
  }
  
  #memberInfoForm input, #memberInfoForm button, #memberInfoForm select {
    width:49%;
    padding-left: 5px;
    padding-right: 5px;
  }
  
  /* #memberInfoForm form .my-btn {
    background-color:#82AE46;
    color:#FFFFFF;
  } */
  
  /* .hr-sect {
    display: flex;
    flex-basis: 100%;
    align-items: center;
  }
  
  .hr-sect::before,
  .hr-sect::after {
    content: "";
    flex-grow: 1;
    background: rgba(0, 0, 0, 0.2);
    height: 1px;
    font-size: 0px;
    line-height: 0px;
    margin: 0px 10px;
  } */
  
</style>


<div id="mypage-title-h1">
<h1>PROFILE</h1>
</div>

<section class="ftco-section py-5">
<div id="myPageContent">

<!-- <nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">MyPage</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="my-menu active"><a href="userinfo">기본정보</a></li>
        <li class="my-menu"><a href="order">주문관리</a></li>
        <li class="my-menu"><a href="#">관심상품</a></li>
        <li class="my-menu"><a href="#">업적</a></li>
        <li class="my-menu"><a href="sale">판매관리</a></li>
        <li class="my-menu"><a href="exhibition">개인전 관리</a></li>
        <li class="my-menu"><a href="memberConversion">판매회원 전환</a></li>
      </ul>
    </div>
  </div>
</nav> -->

<div class="container-fluid">
  <div class="row">
    <div class="my-col-20 sidenav mypage-sidenav hidden-xs px-1">
      <h2 class="text-center mt-2 font-weight-bold">MyPage</h2>
      <hr>
      <h4 class="font-weight-bold ml-2">회원정보</h4>
      <ul id="infoMenu" class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu active"><a href="userinfo">기본정보</a></li>
        
      </ul>
      <h4 class="font-weight-bold ml-2">구매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu"><a href="order">구매내역</a></li>
        <li class="my-menu"><a href="#section3">관심상품</a></li>
        <li class="my-menu"><a href="#section3">업적</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul id="sellerMenu" class="nav flex-column nav-pills nav-stacked text-center">
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <div id=memberInfoForm>
      <h2 id="mypage-title-h2">기본정보</h2>
      <hr>
      <form class="text-center" action='../member/update' method='post' enctype='multipart/form-data' onsubmit="return checkState()">
        <table class="col-sm-12 table-hover my-table my-join-table my-table-row" cellpadding="20" cellspacing="5">
          <tbody>
          <tr>
            <th class="my-col-3 mute">아이디</th>
            <td class="my-col-9">
            <input type="text" name="id" class="input-md notChange" value='${loginUser.id}' readonly/>
            </td>
          </tr>
          <tr>
            <th id="passwordTh" class="my-col-3">비밀번호</th>
            <td class="my-col-9">
            <div id="my-password-form">
              <input type="button" name="changePw" class="searchbtn btn-md btn-primary d-inline-block"
              value="비밀번호 변경하기" onclick='changePassword()'/>
            </div>
              <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">별명</th>
            <td class="my-col-9">
            <input type="text" name="name" class="input-md" value='${loginUser.name}'/>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">이메일</th>
            <td class="my-col-9">
            <input type="email" name="email" class="input-md notChange"
            value='${loginUser.email}' placeholder="입력하신 메일 주소로 인증메일이 발송됩니다." readonly/>
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">핸드폰번호</th>
            <td class="my-col-9">
            <input type="text" name="cellPhone" class="input-md my-essential"
            id="my-cellphone-input" value='${loginUser.cellPhone}' maxlength="11"/>
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">우편번호</th>
            <td class="my-col-9">
              <input type="text" class="input-md my-essential my-essential-input d-inline-block"
                     id="sample3_postcode" name="postalCode" value='${loginUser.postalCode}'
                     readonly="readonly">
              <input type="button" class="searchbtn btn-md btn-primary d-inline-block ml-1" name="searchPostalCode"
                     onclick="sample3_execDaumPostcode()" value="우편번호 찾기">
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
            <th class="my-col-3">기본주소</th>
            <td class="my-col-9">
            <input type="text" id="sample3_address" name="defaultAddress"
                   class="input-md my-essential my-essential-input" value='${loginUser.defaultAddress}'
                   readonly="readonly" style="text-align:left;">
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">상세주소</th>
            <td class="my-col-9">
            <input type="text" id="sample3_detailAddress" name="detailAddress"
                   class="input-md my-essential my-essential-input" value='${loginUser.detailAddress}'
                   style="text-align:left;">
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">본인 확인 질문</th>
            <td class="my-col-9">
            <select class="selectpicker my-essential" name="question"
                    data-style="btn btn-md btn-primary w-100">
              <optgroup id="questionOpt" label="본인 확인 질문">
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
            <th class="my-col-3">본인 확인 답변</th>
            <td class="my-col-9">
            <input type="text" name="answer" class="input-md my-essential my-essential-input" value='${loginUser.answer}'/>
            <span class="inputState"></span>
            </td>
          </tr>
          </tbody>
        </table>
        <hr>
        <button name="submitBtn" class="btn btn-lg btn-primary btn-inline-block signup-btn mr-1" style="width:100%;" type="submit">수정</button>
      </form>
      </div>
    </div>
  </div>
</div>
</div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
  <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-6">
        <h2 style="font-size: 22px;" class="mb-0">Subcribe to our Author</h2>
        <span>Get e-mail updates about our latest products and special upcycling</span>
      </div>
      <div class="col-md-6 d-flex align-items-center">
        <form action="#" class="subscribe-form">
          <div class="form-group d-flex">
            <input type="text" class="form-control" placeholder="Enter email address">
            <input type="submit" value="Subscribe" class="submit px-3">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

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

if(${loginUser.memberClass} == 2) {
  $("#infoMenu").append(
      "<li class='my-menu'><a href='sellerinfo'>판매정보</a></li>");
  $("#sellerMenu").append(
      "<li class='my-menu'><a href='sale'>판매내역</a></li>"
    + "<li class='my-menu'><a href='exhibition'>개인전 관리</a></li>");
} else {
$("#sellerMenu").append(
    "<li class='my-menu'><a href='conversion'>판매회원 전환</a></li>");
}

if ('${loginUser.question}' != '') {
  $("select[name=question]").val('${loginUser.question}');
}
  
</script>

<script>
"use strict"

  
  var userId = '${loginUser.id}';
  
  const checkInputMap = new Map();
  const checkPasswordInputMap = new Map();
  
  function changePassword() {
    $("#my-password-form").children("input").remove();
    $("#my-password-form").append(
          "<input type='password' name='currentPassword' class='input-md d-inline-block mr-1'"
        + "maxlength='12' autocomplete='off'/>"
        + "<input type='button' name='checkPw' class='searchbtn btn-md btn-primary d-inline-block ml-1'"
        + "value='비밀번호 확인' onclick='checkPassword()'/>");
  };
  
  function checkPassword() {
    $.ajax({
      type: "POST",
      url: "/greenright/json/member/checkAccount",
      data: "id=" + userId + "&password=" + $("input[name=currentPassword]").val(),
      dataType: "json",
      async: true,
      success: function(checkAccountJsonData) {
        if (checkAccountJsonData.message == "exist") {
          $("#my-password-form").children("input").remove();
          $("#my-password-form").append(
                "<input type='password' name='password' class='input-md d-inline-block mr-1 my-password-input'"
              + "maxlength='12' autocomplete='off'/>"
              + "<input type='button' name='doChangePw' class='searchbtn btn-md btn-primary d-inline-block ml-1 mb-1'"
              + "value='비밀번호 변경하기' onclick='doChangePassword()'/>"
              + "<input type='password' name='confirmPassword' class='input-md d-inline-block mr-1 my-password-input'"
              + "maxlength='12' autocomplete='off'/>"
              + "<input type='button' name='cancelChangePw' class='searchbtn btn-md btn-dark d-inline-block ml-1'"
              + "value='취소' onclick='cancelChangePassword()'/>");
          $("#my-password-form ~ span.inputState").html("");
          $("th#passwordTh").html("비밀번호<br><br>비밀번호 확인");
        } else if (checkAccountJsonData.message == "notExist") {
          $("input[name=currentPassword]").css("border", "solid red 3px");
          $("#my-password-form ~ span.inputState").css("color", "red");
          $("#my-password-form ~ span.inputState").css("font-size", "80%");
          $("#my-password-form ~ span.inputState").html("비밀번호가 다릅니다.");
        } else {
          $("input[name=currentPassword]").css("border", "solid red 3px");
          $("input[name=currentPassword]").css("background-color", "#FFF9F9");
          $("#my-password-form ~ span.inputState").css("color", "red");
          $("#my-password-form ~ span.inputState").css("font-size", "80%");
          $("#my-password-form ~ span.inputState").html("비밀번호 검사 중 오류가 발생했습니다.");
        }
      }
    });
  };
  
  function doChangePassword() {
    
    var passwordInputs = $("#my-password-form input");
    
    for (var i = 0; i < passwordInputs.length; i++) {
      passwordInputs[i].focus();
    }
    passwordInputs[passwordInputs.length-1].blur();
    
    for (var check of checkPasswordInputMap.values()) {
      if (check == false) {
        return;
      }
    }
    
    $.ajax({
      type: "POST",
      url: "/greenright/json/member/passwordUpdate",
      data: "id=" + userId + "&password=" + $("input[name=password]").val(),
      dataType: "json",
      async: true,
      success: function(checkAccountJsonData) {
        if (checkAccountJsonData.message == "success") {
          $("#my-password-form").children("input").remove();
          $("#my-password-form").append(
                "<input type='button' name='changePw' class='searchbtn btn-md btn-primary d-inline-block'"
              + "value='비밀번호 변경하기' onclick='changePassword()'/>");
          $("#my-password-form ~ span.inputState").css("color", "green");
          $("#my-password-form ~ span.inputState").css("font-size", "80%");
          $("#my-password-form ~ span.inputState").html("비밀번호가 변경되었습니다.");
          $("th#passwordTh").html("비밀번호");
        } else {
          $("input[name=confirmPassword]").css("border", "solid red 3px");
          $("input[name=confirmPassword]").css("background-color", "#FFF9F9");
          $("#my-password-form ~ span.inputState").css("color", "red");
          $("#my-password-form ~ span.inputState").css("font-size", "80%");
          $("#my-password-form ~ span.inputState").html("비밀번호 변경 중 오류가 발생했습니다.");
        }
      },
      error: function(checkAccountJsonData) {
        $("input[name=confirmPassword]").css("border", "solid red 3px");
        $("input[name=confirmPassword]").css("background-color", "#FFF9F9");
        $("#my-password-form ~ span.inputState").css("color", "red");
        $("#my-password-form ~ span.inputState").css("font-size", "80%");
        $("#my-password-form ~ span.inputState").html("비밀번호 변경 중 오류가 발생했습니다.");
      }
    });
  };
  
  function cancelChangePassword() {
    $("#my-password-form").children("input").remove();
    $("#my-password-form").append(
        "<input type='button' name='changePw' class='searchbtn btn-md btn-primary d-inline-block'"
      + "value='비밀번호 변경하기' onclick='changePassword()'/>");
    $("#my-password-form ~ span.inputState").html("");
    $("th#passwordTh").html("비밀번호");
  };
  
  $("#my-cellphone-input").on("focusout", function(e) {
    var regularNumber = /^01(?:[0-1]|[6-9])(?:[0-9]{7,8})$/;
    var getConditionTag = $(e.target).siblings("span.inputState");
    
    if (e.target.value == "") {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
      e.stopPropagation();
    } else if (!regularNumber.test(e.target.value)) {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid red 3px");
      $(e.target).css("background-color", "#FFF9F9");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("핸드폰 번호 형식이 올바르지 않습니다.");
      e.stopPropagation();
    } else {
      $.ajax({
        type: "GET",
        url: "/greenright/json/member/checkDuplicateCellPhone",
        data: "cellPhone=" + e.target.value,
        dataType: "json",
        async: false,
        success: function(checkCellphoneJsonData) {
          if (checkCellphoneJsonData.message == "exist") {
            if ('${loginUser.id}' == checkCellphoneJsonData.result.id) {
              checkInputMap.set(e.target.name, true);
              $(e.target).css("border", "solid #C7CED5 1px");
              $(e.target).css("background-color", "#FFFFFF");
              $(getConditionTag).css("color", "gray");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("");
              e.stopPropagation();
            } else {
              checkInputMap.set(e.target.name, false);
              $(e.target).css("border", "solid red 3px");
              $(e.target).css("background-color", "#FFF9F9");
              $(getConditionTag).css("color", "red");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("이미 가입된 번호입니다.");
              e.stopPropagation();
            }
          } else if (checkCellphoneJsonData.message == "notExist") {
            checkInputMap.set(e.target.name, true);
            $(e.target).css("border", "solid green 3px");
            $(e.target).css("background-color", "#F9FFF9");
            $(getConditionTag).css("color", "green");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("사용 가능한 번호입니다.");
            e.stopPropagation();
          } else {
            checkInputMap.set(e.target.name, false);
            $(e.target).css("border", "solid red 3px");
            $(e.target).css("background-color", "#FFF9F9");
            $(getConditionTag).css("color", "red");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("핸드폰 번호 중복 검사 중 오류가 발생했습니다.");
            e.stopPropagation();
          }
        }
      });
    }
  });
  
  $(document).on("focusout", ".my-password-input", function(e) {
    var regularPassword = /^[A-Za-z0-9]{4,12}$/;
    var getConditionTag = $(e.target).parent("#my-password-form").siblings("span.inputState");
    
    if (e.target.value == "") {
      checkPasswordInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
      e.stopPropagation();
      
    } else if (e.target.name == "password") {
      
      if (!regularPassword.test($(e.target).val())) {
        checkPasswordInputMap.set(e.target.name, false);
        $(e.target).css("border", "solid red 3px");
        $(e.target).css("background-color", "#FFF9F9");
        $(getConditionTag).css("color", "red");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.");
        e.stopPropagation();
        
      } else if ($("input[name=password]").val() != $("input[name=confirmPassword]").val()) {
        checkPasswordInputMap.set(e.target.name, false);
        $(e.target).css("border", "solid red 3px");
        $(e.target).css("background-color", "#FFF9F9");
        $("input[name=confirmPassword]").css("border", "solid red 3px");
        $("input[name=confirmPassword]").css("background-color", "#FFF9F9");
        $(getConditionTag).css("color", "red");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호가 일치하지 않습니다.");
        e.stopPropagation();
        
      } else {
        checkPasswordInputMap.set(e.target.name, true);
        $(e.target).css("border", "solid green 3px");
        $(e.target).css("background-color", "#F9FFF9");
        $("input[name=confirmPassword]").css("border", "solid green 3px");
        $("input[name=confirmPassword]").css("background-color", "#F9FFF9");
        $(getConditionTag).css("color", "green");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호가 일치합니다.");
        e.stopPropagation();
      }
    } else if (e.target.name == "confirmPassword") {
      
      if (!regularPassword.test($(e.target).val())) {
        checkPasswordInputMap.set(e.target.name, false);
        $(e.target).css("border", "solid red 3px");
        $(e.target).css("background-color", "#FFF9F9");
        $(getConditionTag).css("color", "red");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호는 4~12자의 문자 또는 숫자로 구성되어야 합니다.");
        e.stopPropagation();
        
      } else if ($("input[name=password]").val() != $("input[name=confirmPassword]").val()) {
        checkPasswordInputMap.set(e.target.name, false);
        $(e.target).css("border", "solid red 3px");
        $("input[name=password]").css("border", "solid red 3px");
        $(getConditionTag).css("color", "red");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호가 일치하지 않습니다.");
        e.stopPropagation();
        
      } else {
        checkPasswordInputMap.set(e.target.name, true);
        $(e.target).css("border", "solid green 3px");
        $("input[name=password]").css("border", "solid green 3px");
        $(getConditionTag).css("color", "green");
        $(getConditionTag).css("font-size", "80%");
        $(getConditionTag).html("비밀번호가 일치합니다.");
        e.stopPropagation();
      }
    }
  });
  
  $(".my-essential-input").on("focusout", function(e){
    var getConditionTag = $(e.target).siblings("span.inputState");
    if (e.target.value == "") {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
      e.stopPropagation();
      
    } else if (e.target.value != "") {
      checkInputMap.set(e.target.name, true);
      if (e.target.readonly) {
        $(e.target).css("border", "solid #C7CED5 1px");
        $(e.target).css("background-color", "#FFFFFF");
      }
      $(getConditionTag).css("color", "gray");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("");
      e.stopPropagation();
    }
  });
  
  
  /* $("#my-adress-form").on("focusout", function(e){
    var getConditionTag = $(e.target).siblings("span.inputState");
    
    if (e.target.value == "" && e.target.type != "button") {
      checkInputState[0] = false;
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
      e.stopPropagation();
      
    } else if (e.target.value != "" && e.target.type != "button") {
      checkInputState[0] = true;
      $(e.target).css("border", "solid #C7CED5 1px");
      $(e.target).css("background-color", "#FFFFFF");
      $(getConditionTag).css("color", "gray");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("");
      e.stopPropagation();
    }
  }); */
  
  function checkState() {
    var essentials = $(".my-essential");
    
    var eventGenerator = function() {
      for (var i = 0; i < essentials.length; i++) {
        if (essentials[i].name != undefined){
          essentials[i].focus();
        }
      }
      essentials[essentials.length-1].blur();
    };
    
    eventGenerator();
    
    for (var check of checkInputMap.values()) {
      if (check == false) {
        return false;
      }
    }
    
    /* for (var check of checkInputState) {
      if (check == false) {
        return false;
      }
    } */
    
    return true;
  }
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
</script>
 