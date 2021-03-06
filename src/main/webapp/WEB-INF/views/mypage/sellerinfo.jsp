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
  
  .dropdown-menu .inner li a:hover
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
  
  .notChange, .notChange:focus {
    border: none !important;
    background-color: rgba( 255, 255, 255, 0) !important;
    outline: none !important;
  }
  
  #memberInfoForm input, #memberInfoForm button, #memberInfoForm select {
    width:49%;
    padding-left: 5px;
    padding-right: 5px;
  }
  
</style>


<div id="mypage-title-h1">
<h1>MYPAGE</h1>
</div>

<section class="ftco-section py-5">
<div id="myPageContent">

<div class="container-fluid">
  <div class="row">
    <div class="my-col-20 sidenav mypage-sidenav hidden-xs px-1">
      <h2 class="text-center mt-2 font-weight-bold">MyPage</h2>
      <hr>
      <h4 class="font-weight-bold ml-2">회원정보</h4>
      <ul id="infoMenu" class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu"><a href="userinfo">기본정보</a></li>
        
      </ul>
      <h4 class="font-weight-bold ml-2">구매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu"><a href="order">구매내역</a></li>
        <li class="my-menu"><a href="wishlist">관심상품</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul id="sellerMenu" class="nav flex-column nav-pills nav-stacked text-center">
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <div id=memberInfoForm>
      <h2 id="mypage-title-h2">판매정보</h2>
      <hr>
      <form id="my-sellerInfo" class="text-center" action='../seller/update' method='post'>
        <table class="col-sm-12 table-hover my-table my-join-table my-table-row" cellpadding="20" cellspacing="5">
          <tbody>
          <tr>
            <th class="my-col-3 mute">아이디</th>
            <td class="my-col-9">
            <input type="text" class="input-md notChange" value='${loginUser.id}' readonly/>
            </td>
          </tr>
          <tr>
            <th class="my-col-3 mute">은행명</th>
            <td class="my-col-9">
            <input type="text" name="bankName" class="input-md my-essential my-essential-input" maxlength="11" maxlength="10"
            value='${loginSeller.bankName}'/>
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">계좌번호</th>
            <td class="my-col-9">
            <input type="text" name="accountNum" class="input-md my-essential" maxlength="20"
            value='${loginSeller.accountNum}'/>
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3 mute">예금주</th>
            <td class="my-col-9">
            <input type="text" name="accountHolder" class="input-md my-essential my-essential-input" maxlength="10"
            value='${loginSeller.accountHolder}'/>
            <span class="inputState"></span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">고객응대 전화번호</th>
            <td class="my-col-9">
            <input type="text" name="tel" class="input-md my-essential" maxlength="11"
            value='${loginSeller.tel}'/>
            <span class="inputState"></span>
            </td>
          </tr>
          </tbody>
        </table>
        <hr>
        <button id="submitBtn" class="searchbtn btn-lg btn-primary btn-block signup-btn w-100" type="button">수정</button>
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
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>

<script>
"use strict"

if(${loginUser.memberClass} == 2) {
  $("#infoMenu").append(
      "<li class='my-menu active'><a href='sellerinfo'>판매자 정보</a></li>");
  $("#sellerMenu").append(
      "<li class='my-menu'><a href='manage'>판매물품 관리</a></li>"
    + "<li class='my-menu'><a href='sale'>판매내역</a></li>"
    + "<li class='my-menu'><a href='exhibition'>개인전 관리</a></li>");
} else {
  $("#sellerMenu").append(
      "<li class='my-menu'><a href='conversion'>판매회원 전환</a></li>");
}
</script>

<script>
"use strict"

let checkInputMap = new Map();

window.onload = (function() {

  var userId = '${loginUser.id}';
  
  
  $("[name=accountNum]").on("focusout", function(e) {
    var regularNum =  /^[0-9]*$/;
    var getConditionTag = $(e.target).siblings("span.inputState");
    if (e.target.value == "") {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
    } else if (!regularNum.test(e.target.value)) {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid red 3px");
      $(e.target).css("background-color", "#FFF9F9");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("숫자만 입력하실 수 있습다.");
      
    } else {
        $.ajax({
        type: "GET",
        url: "/greenright/json/seller/checkDuplicateAccount",
        data: "accountNum=" + e.target.value,
        dataType: "json",
        async: false,
        success: function(checkAccountJsonData) {
          if (checkAccountJsonData.message == "exist") {
            if (${loginUser.no} == checkAccountJsonData.result.no) {
              checkInputMap.set(e.target.name, true);
              $(e.target).css("border", "solid #C7CED5 1px");
              $(e.target).css("background-color", "#FFFFFF");
              $(getConditionTag).css("color", "gray");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("");
              
            } else {
              checkInputMap.set(e.target.name, false);
              $(e.target).css("border", "solid red 3px");
              $(e.target).css("background-color", "#FFF9F9");
              $(getConditionTag).css("color", "red");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("이미 사용중인 계좌번호입니다.");
              
            }
          } else if (checkAccountJsonData.message == "notExist") {
            
            checkInputMap.set(e.target.name, true);
            $(e.target).css("border", "solid green 3px");
            $(e.target).css("background-color", "#F9FFF9");
            $(getConditionTag).css("color", "green");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("사용 가능한 계좌번호입니다.");
          } else {
            
            checkInputMap.set(e.target.name, false);
            $(e.target).css("border", "solid red 3px");
            $(e.target).css("background-color", "#FFF9F9");
            $(getConditionTag).css("color", "red");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("계좌번호 중복 검사 중 오류가 발생했습니다.");
          }
        }
      });
    }
  });
  
  $("[name=tel]").on("focusout", function(e) {
    var regularNumber = /^[0-9]{8,11}$/;
    var getConditionTag = $(e.target).siblings("span.inputState");
    
    if (e.target.value == "") {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid #C7CED5 1px");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("필수 입력 항목입니다.");
      
    } else if (!regularNumber.test(e.target.value)) {
      checkInputMap.set(e.target.name, false);
      $(e.target).css("border", "solid red 3px");
      $(e.target).css("background-color", "#FFF9F9");
      $(getConditionTag).css("color", "red");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("전화번호 형식이 올바르지 않습니다.");
      
    } else {
      $.ajax({
        type: "GET",
        url: "/greenright/json/seller/checkDuplicateTel",
        data: "tel=" + e.target.value,
        dataType: "json",
        async: false,
        success: function(checkTelJsonData) {
          if (checkTelJsonData.message == "exist") {
            if (${loginUser.no} == checkTelJsonData.result.no) {
              checkInputMap.set(e.target.name, true);
              $(e.target).css("border", "solid #C7CED5 1px");
              $(e.target).css("background-color", "#FFFFFF");
              $(getConditionTag).css("color", "gray");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("");
              
            } else {
              checkInputMap.set(e.target.name, false);
              $(e.target).css("border", "solid red 3px");
              $(e.target).css("background-color", "#FFF9F9");
              $(getConditionTag).css("color", "red");
              $(getConditionTag).css("font-size", "80%");
              $(getConditionTag).html("이미 가입된 번호입니다.");
              
            }
          } else if (checkTelJsonData.message == "notExist") {
            checkInputMap.set(e.target.name, true);
            $(e.target).css("border", "solid green 3px");
            $(e.target).css("background-color", "#F9FFF9");
            $(getConditionTag).css("color", "green");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("사용 가능한 번호입니다.");
            
          } else {
            checkInputMap.set(e.target.name, false);
            $(e.target).css("border", "solid red 3px");
            $(e.target).css("background-color", "#FFF9F9");
            $(getConditionTag).css("color", "red");
            $(getConditionTag).css("font-size", "80%");
            $(getConditionTag).html("전화번호 중복 검사 중 오류가 발생했습니다.");
            
          }
        }
      });
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
    } else if (e.target.value != "") {
      checkInputMap.set(e.target.name, true);
      if (e.target.readonly) {
        $(e.target).css("border", "solid #C7CED5 1px");
        $(e.target).css("background-color", "#FFFFFF");
      }
      $(getConditionTag).css("color", "gray");
      $(getConditionTag).css("font-size", "80%");
      $(getConditionTag).html("");
      
    }
  });
});

function checkState() {
  var essentials = $(".my-essential");
  
  var eventGenerator = function() {
    for (var i = 0; i < essentials.length; i++) {
      essentials[i].focus();
    }
    essentials[essentials.length-1].blur();
  };
  
  eventGenerator();
  
  var checkInputMapKey = checkInputMap.keys();
  for (var key of checkInputMapKey) {
    if (checkInputMap.get(key) == false) {
      $("[name=" + key + "]").focus();
      return false;
    }
  } 
  swal("수정되었습니다.").then((value) => {
    if (value) {
      $("#my-sellerInfo").submit();
    }
  });
}

$("#submitBtn").click(function(e){
  checkState();
});
</script>