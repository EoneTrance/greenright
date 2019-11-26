<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.css">
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

.btn-group .dropdown-menu .inner li.active
{
  background-color:#82AE46;
  color:#FFFFFF;
}

/* .btn-group button:hover {
  background-color:RGBA(130,174,70,0.5);
} */

.dropdown .dropdown-menu div.inner ul.inner li a:hover
{
  background-color:RGBA(130,174,70,0.5);
}

.dropdown .dropdown-menu div.inner ul.inner li a.selected
{
  background-color:#82AE46;
}

.filter-option-inner
{
  text-align:center;
}

table.my-table {
  border:solid RGBA(130,174,70,0.5) 1px;
}

table.my-product-table tr {
  border-left: solid 1px RGBA(0,0,0,0);
}

table.my-product-table td {
  color:black;
  border-right: solid 1px RGBA(0,0,0,0);
}

table.my-table td.my-product {
  padding-left:1.5rem;
  padding-right:1.5rem;
}

.my-deliveryChoice li {
  text-align: center;
  padding-left:0px;
  padding-right:0px;
}

.my-deliveryChoice li:hover, .my-deliveryChoice li:focus {
  background-color:RGBA(130,174,70,0.1);
}

.nav-tabs .nav-link, .nav-tabs .nav-item.show .nav-link {
  background-color: RGBA(130,174,70,0.2);
  border-color: RGBA(130,174,70,0.5) RGBA(130,174,70,0.5) RGBA(130,174,70,0.5);
}

.nav-tabs .nav-link.active, .nav-tabs .nav-link:active {
  color: #fff;
  background-color: RGBA(130,174,70,1);
  border-color: RGBA(130,174,70,0.5) RGBA(130,174,70,0.5) RGBA(130,174,70,0.5);
}

.nav-tabs .nav-link:focus, .nav-tabs .nav-link:hover {
  border-color: RGBA(130,174,70,0.5) RGBA(130,174,70,0.5) RGBA(130,174,70,0.5);
}

#my-defaultAdress input, #my-defaultAdress button, #my-defaultAdress select,
#my-newAdress input, #my-newAdress button, #my-newAdress select {
  width:49%;
}

#order-title-h4 {
  font-weight:bold;
  color:#82AE46;
  padding-left:10px;
}

#my-productInfo::-webkit-scrollbar{width: 10px;}
#my-productInfo::-webkit-scrollbar-track {background-color:RGBA(130,174,70,0.2);}
#my-productInfo::-webkit-scrollbar-thumb {background-color:RGBA(130,174,70,0.8);border-radius:10px;}
#my-productInfo::-webkit-scrollbar-thumb:hover {background: RGBA(130,174,70,1);}
#my-productInfo::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {
width:16px;height:16px;background:#f1ef79;} 

#my-productInfo {
  height:370px;
  overflow:auto;
  overflow-x:hidden;
  border:solid 1px RGBA(130,174,70,0.5);
  border-radius:5px;
}

.round label {
  transform: translate(-25%, -50%);
}

</style>

<div id="mypage-title-h1">
<h1>주문결제</h1>
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
        <li class="my-menu"><a href="userinfo">기본정보</a></li>
        <li class="my-menu active"><a href="order">주문관리</a></li>
        <li class="my-menu"><a href="#">관심상품</a></li>
        <li class="my-menu"><a href="#">업적</a></li>
        <li class="my-menu"><a href="sale">판매관리</a></li>
        <li class="my-menu"><a href="exhibition">개인전관리</a></li>
        <li class="my-menu"><a href="memberConversion">판매회원 전환</a></li>
      </ul>
    </div>
  </div>
</nav> -->

<div class="container-fluid">
  <div class="row">
    <div class="col-sm-7">
      
      <!-- <div class="well">
        h4>주문관리</h4>
        <p>- 기본적으로 최근 3개월간의 자료가 조회되며 기간 검색시 지난 주문관리을 조회하실 수 있습니다.</p>
        <p>- 주문번호를 클릭하시면 해당 주문엗 대한 상세관리을 확인하실 수있습니다.</p>
        <p>- [세금계산서 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [세금계산서 신청] 클릭</p>
        <p>- [현급영수증 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [현금영수증 신청] 클릭</p>
        <p>- [거래명세서 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [거래명세서 신청] 클릭</p>
        <p>- [카드매출전표 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [카드매출전표 인쇄] 클릭</p>
      </div> -->
      
      <h4 id="order-title-h4">배송지 선택</h4>
      <hr style="margin-top:0px;">
      <div class="row">
        <div id="my-selectAddress" class="col">
          <ul class="nav nav-tabs col-sm-12 my-deliveryChoice" style="padding-right:1px;">
            <li class="nav-item col-sm-6">
              <a class="nav-link active" data-toggle="tab" href="#my-defaultAdress" data-selected="my-defaultAdress">기존 배송지</a>
            </li>
            <li class="nav-item col-sm-6">
              <a class="nav-link" data-toggle="tab" href="#my-newAdress" data-selected="my-newAdress">새 배송지 입력</a>
            </li>
          </ul>
          <div class="tab-content" style="padding-left:1px;">
            <div class="tab-pane fade show active" id="my-defaultAdress">
              <table class="col-sm-12 table-hover my-table my-table-row" cellpadding="10" cellspacing="5">
              <tbody>
              <tr>
                <th class="my-col-3">이름</th>
                <td class="my-col-9">
                <input type="text" name="name" class="input-md" value='${loginUser.name}'/>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">핸드폰번호</th>
                <td class="my-col-9">
                <input type="text" name="cellPhone" class="input-md notChange"
                id="my-cellphone-input" value='${loginUser.cellPhone}' maxlength="11" readonly/>
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">우편번호</th>
                <td class="my-col-9">
                  <input type="text" class="input-md d-inline-block notChange"
                         id="sample3_postcode" name="postalCode" value='${loginUser.postalCode}'
                         readonly>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">기본주소</th>
                <td class="my-col-9">
                <input type="text" id="sample3_address" name="defaultAddress"
                       class="input-md notChange w-100" value='${loginUser.defaultAddress}'
                       readonly style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">상세주소</th>
                <td class="my-col-9">
                <input type="text" id="sample3_detailAddress" name="detailAddress"
                       class="input-md notChange w-100" value='${loginUser.detailAddress}'
                       readonly style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">배송시 요청사항</th>
                <td class="my-col-9">
                <input type="text" id="recieverRequest" name="recieverRequest"
                       class="input-md w-100"
                       style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tr>
              </tbody>
            </table>
            </div>
            <div class="tab-pane fade" id="my-newAdress">
              <table class="col-sm-12 table-hover my-table my-table-row" cellpadding="10" cellspacing="5">
              <tbody>
              <tr>
                <th class="my-col-3">이름</th>
                <td class="my-col-9">
                <input type="text" name="name" class="input-md"/>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">핸드폰번호</th>
                <td class="my-col-9">
                <input type="text" name="cellPhone" class="input-md"
                id="my-cellphone-input" maxlength="11"/>
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">우편번호</th>
                <td class="my-col-9">
                  <input type="text" class="input-md d-inline-block"
                         id="sample3_postcode" name="postalCode"
                         readonly>
                  <input type="button" class="searchbtn btn-md btn-primary d-inline-block" name="searchPostalCode"
                         onclick="sample3_execDaumPostcode()" value="우편번호 찾기" style="margin-left:3px">
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
                       class="input-md w-100"
                       readonly style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">상세주소</th>
                <td class="my-col-9">
                <input type="text" id="sample3_detailAddress" name="detailAddress"
                       class="input-md w-100"
                       style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tr>
              <tr>
                <th class="my-col-3">배송시 요청사항</th>
                <td class="my-col-9">
                <input type="text" id="recieverRequest" name="recieverRequest"
                       class="input-md w-100"
                       style="text-align:left;">
                <span class="inputState"></span>
                </td>
              </tbody>
            </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="col-sm-5 px-0">
      
      <!-- <div class="well">
        h4>주문관리</h4>
        <p>- 기본적으로 최근 3개월간의 자료가 조회되며 기간 검색시 지난 주문관리을 조회하실 수 있습니다.</p>
        <p>- 주문번호를 클릭하시면 해당 주문엗 대한 상세관리을 확인하실 수있습니다.</p>
        <p>- [세금계산서 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [세금계산서 신청] 클릭</p>
        <p>- [현급영수증 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [현금영수증 신청] 클릭</p>
        <p>- [거래명세서 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [거래명세서 신청] 클릭</p>
        <p>- [카드매출전표 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [카드매출전표 인쇄] 클릭</p>
      </div> -->
      
      <h4 id="order-title-h4">주문상품 정보</h4>
      <hr style="margin-top:0px;">
      <div class="row">
        <div class="col">
          <div id="my-productInfo">
          <table class="col-sm-12 table-hover text-center my-table my-product-table my-table-col" cellpadding="10" cellspacing="1">
          <thead>
            <tr>
              <th class="text-center my-col-3 d-none">상품이미지</th>
              <th class="text-center my-col-9 d-none">상품정보</th>
            </tr>
          </thead>

          <tbody class="my-order-list">
          </tbody>
          </table>
          </div>
          <h5 style="color:#82AE46;font-weight:normal;text-align:right;margin-top:5px;margin-bottom:5px;">총 <span id="my-capacity" style="font-weight:bold;"></span>건</h5>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="row">
    <div class="col-sm-7">
      <h4 id="order-title-h4">결제방법 선택</h4>
      <hr style="margin-top:0px;">
      <div class="row">
        <div class="col-sm-4">
        <div style="width:100%">
          <span class='round'>
             <input type='checkbox' id='checkbox1' class='my-check my-checkbox' name="samsung"/>
             <label for='checkbox1'></label>
           </span>
          <span style="font-weight:700;color:black;margin-left:20px;">삼성페이</span>
          <button type="button" class="my-check-btn"
                  style="background-color:RGBA(0,0,0,0);border-color:RGBA(0,0,0,0);padding:0px 0px;">
            <i class="fab fa-cc-amazon-pay" style="width:inherit;font-size:130px;display:block;"></i>
          </button>
        </div>
        </div>
        <div class="col-sm-4">
        <div style="width:100%">
          <span class='round'>
             <input type='checkbox' id='checkbox2' class='my-check my-checkbox' name="card"/>
             <label for='checkbox2'></label>
           </span>
          <span style="font-weight:700;color:black;margin-left:20px;">신용카드</span>
          <button type="button" class="my-check-btn"
                  style="background-color:RGBA(0,0,0,0);border-color:RGBA(0,0,0,0);padding:0px 0px;">
            <i class="far fa-credit-card" style="width:inherit;font-size:130px;display:block;"></i>
          </button>
        </div>
        </div>
        <div class="col-sm-4">
        <div style="width:100%">
          <span class='round'>
             <input type='checkbox' id='checkbox3' class='my-check my-checkbox' name="trans"/>
             <label for='checkbox3'></label>
           </span>
          <span style="font-weight:700;color:black;margin-left:20px;">실시간 계좌이체</span>
          <button type="button" class="my-check-btn"
                  style="background-color:RGBA(0,0,0,0);border-color:RGBA(0,0,0,0);padding:0px 0px;">
            <i class="fas fa-money-bill-wave" style="width:inherit;font-size:130px;display:block;"></i>
          </button>
        </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
        <div style="width:100%">
          <span class='round'>
             <input type='checkbox' id='checkbox4' class='my-check my-checkbox' name="vbank"/>
             <label for='checkbox4'></label>
           </span>
          <span style="font-weight:700;color:black;margin-left:20px;">무통장 입금</span>
          <button type="button" class="my-check-btn"
                  style="background-color:RGBA(0,0,0,0);border-color:RGBA(0,0,0,0);padding:0px 0px;">
            <i class="fas fa-money-check-alt" style="width:inherit;font-size:130px;display:block;"></i>
          </button>
        </div>
        </div>
        <div class="col-sm-4">
        <div style="width:100%">
          <span class='round'>
             <input type='checkbox' id='checkbox5' class='my-check my-checkbox' name="phone"/>
             <label for='checkbox5'></label>
           </span>
          <span style="font-weight:700;color:black;margin-left:20px;">휴대폰 소액결제</span>
          <button type="button" class="my-check-btn"
                  style="background-color:RGBA(0,0,0,0);border-color:RGBA(0,0,0,0);padding:0px 0px;">
            <i class="fas fa-mobile-alt" style="width:inherit;font-size:122px;display:block;"></i>
          </button>
        </div>
        </div>
      </div>
    </div>
    <div class="col-sm-5 px-0">
      <h4 id="order-title-h4">결제 금액</h4>
      <hr style="margin-top:0px;">
      <div class="sidenav payment-sidenav hidden-xs" style="border-radius:5px;border:solid 1px RGBA(130,174,70,0);">
      <div style="background-color:RGBA(130,174,70,0);border:solid 10px #82AE46;border-radius:5px;">
        <table class="col-sm-12 table-hover text-center my-table">
          <tbody>
            <tr style="border:solid 1px RGBA(130,174,70,0);">
              <th class="text-left my-col-6 py-2 pl-3 font-weight-normal"
                  style="color:black;background-color:RGBA(130,174,70,0);">상품가격</th>
              <td class="text-right py-2 pr-3"
                  style="color:black;"><span class="my-priceSum" style="font-size:150%;font-weight:bold;color:#82AE46;">0</span> 원</td>
            </tr>
            <tr style="border:solid 1px RGBA(130,174,70,0);">
              <th class="text-left my-col-6 py-2 pl-3 font-weight-normal"
                  style="color:black;background-color:RGBA(130,174,70,0);">배송비</th>
              <td class="text-right py-2 pr-3"
                  style="color:black;"><span class="my-deliveryChargeSum" style="font-size:150%;font-weight:bold;color:#82AE46;">0</span> 원</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div style="margin:10px 0px;background-color:RGBA(130,174,70,0);border:solid 10px #82AE46;border-radius:5px;padding-top:10px;padding-bottom:10px;">
        <h5 class="text-left font-weight-bold mt-2 pl-2"
            style="color:black;">총 결제금액</h5>
        <p class="text-right font-weight-bold mb-0 pr-2"
            style="color:black;font-size:150%;"><span class="my-sum" style="font-size:150%;color:#82AE46;">0</span> 원</p>
      </div>
      <form id='my-basketForm' action='../order/form' method='post' style='display:none'>
        <!-- <input id='my-order-optionItemNo' name='optionItemNo'>
        <input id='my-order-quantity' name='quantity'> -->
        <input id='my-orderListJson' name='orderListJson'>
      </form>
      <button id="my-paymentBtn" class="searchbtn btn-lg btn-primary btn-inline-block mr-1 w-100" type="button">결제</button>
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
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
"use strict"

/* $(".fa-money-check-alt").css("font-size", $(".fa-money-check-alt").css("width")); */

let orderList = ${orderList};
let productPrice = 0;
let paymentPrice = 0;
let deliveryPrice = 0;
let productName = orderList[0].productName + " 외 " + (orderList.length - 1) + "건";
let sellerName = orderList[0].sellerName;
let paymentMethod = 'card';
let buyerName;
let buyerEmail = '${loginUser.email}';
let buyerCellPhone;
let buyerAddress;
let buyerPostalCode;
let buyerRequest;
let optionItemList = new Array();

$(function() {
  
  $("#my-capacity").text(orderList.length);
  
  for (var i = 0; i < orderList.length; i++) {
    var order = orderList[i];
    var optionItem = {};
    $(".my-order-list").append(
        "<tr class='my-basket-tr'>"
     +  "<td class='my-productPhoto-td text-center my-col-3'>"
     +  "  <div class='px-0'>"
     +  "    <img id='product-photo' src='/upload/product/"+  order.productPhoto +"'>"
     +  "  </div>"
     +  "</td>"
     +  "<td class='my-product text-left my-col-9 pl-0'>"
     +  "  <div class='px-0' style='font-size:12px'>"
     +  "    판매자: <span id='product-seller'>" + order.sellerName + "</span><br>"
     +  "    상품명: <span id='product-name'>" + order.productName + " [" + numberFormat(order.productPrice) + "원]" + "</span><br>"
     +  "    옵션: <span id='product-option'>" + order.optionName + " (" + order.optionItemMatter + ") [+" + numberFormat(order.optionItemPrice) + "원]" + "</span><br>"
     +  "    선택옵션 가격: <span id='product-price'>" + numberFormat(order.productPrice + "[+" + order.optionItemPrice) + "] = <span style='font-weight:bold;'>" + numberFormat(order.productPrice + order.optionItemPrice) + "</span>원</span><br>"
     +  "    수량: <span id='product-quantity'><span style='font-weight:bold;'>" + order.optionItemQuantity + "</span>개</span><hr class='my-1'>"
     +  "    가격: <span id='product-sumPrice' style='font-size:120%;font-weight:bold;'>" + numberFormat((order.productPrice + order.optionItemPrice) * order.optionItemQuantity) + "</span>원"
     +  "  </div>"
     +  "</td>"
     +  "<td class='my-optionItemNo-td' style='display:none;'>" + order.optionItemNo + "</td>"
     +  "<td class='my-quantity-td' style='display:none;'>" + order.optionItemQuantity + "</td>"
     +  "</tr>"
    );
    
    optionItem["no"] = order.optionItemNo;
    optionItem["optionsPrice"] = (order.productPrice + order.optionItemPrice);
    optionItem["optionsQuantity"] = order.optionItemQuantity;
    
    productPrice += (optionItem["optionsPrice"] * order.optionItemQuantity);
    
    optionItemList.push(optionItem);
  }
  deliveryPrice = (2500 * orderList.length);
  paymentPrice = (productPrice + deliveryPrice);

  $(".my-priceSum").html(numberFormat(productPrice));
  $(".my-deliveryChargeSum").html(numberFormat(2500 * i));
  $(".my-sum").html(numberFormat(paymentPrice));
  
  $("input[type='checkbox']").click(function(e) {
    if ($(e.target).prop('checked')) {
      $("input[type='checkbox']").prop('checked', false);
      $(e.target).prop('checked', true);
      paymentMethod = $(e.target).parents("div").children("span").children("input[type='checkbox']").prop('name');
    }
  });
  
  $(".my-check-btn").click(function(e) {
    if ($(e.target).parents("div").children("span").children("input[type='checkbox']").prop('checked')) {
      $(e.target).parents("div").children("span").children("input[type='checkbox']").prop('checked', false);
    } else {
      $("input[type='checkbox']").prop('checked', false);
      $(e.target).parents("div").children("span").children("input[type='checkbox']").prop('checked', true);
      paymentMethod = $(e.target).parents("div").children("span").children("input[type='checkbox']").prop('name');
    }
  });
  
});

var IMP = window.IMP; // 생략가능
IMP.init('imp16585618');
  
$("#my-paymentBtn").click(function(){
  var count = 0;
  var checkList = $("input[type='checkbox']");
  
  for (var check of checkList) {
    if (check.checked) {
      break;
    }
    count++;
  }
  
  if (count == checkList.length) {
    swal("결제 방법을 선택해 주세요.");
    return;
  }
  
  var selectAddress = $("#my-selectAddress a.nav-link.active").attr("data-selected");
  var deliveryAddress = "#" + selectAddress + " input";
  
  buyerName = $(deliveryAddress + "[name=name]").val();
  buyerCellPhone = $(deliveryAddress + "[name=cellPhone]").val();
  buyerAddress = $(deliveryAddress + "[name=defaultAddress]").val() + " "
               + $(deliveryAddress + "[name=detailAddress]").val();
  buyerPostalCode = $(deliveryAddress + "[name=postalCode]").val();
  buyerRequest = $(deliveryAddress + "[name=recieverRequest]").val();
  
  IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : paymentMethod,
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : productName,
    amount : paymentPrice,
    buyer_email : $("input[name=name]").val(),
    buyer_name : '${loginUser.name}',
    buyer_tel : '${loginUser.cellPhone}',
    buyer_addr : '${loginUser.defaultAddress}' + '{loginUser.detailAddress}',
    buyer_postcode : '${loginUser.postalCode}',
    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
  }, function(rsp) {
    if (rsp.success) {
        var msg = '결제가 완료되었습니다.\n\n';
        msg += '고유ID : ' + rsp.imp_uid + "\n";
        msg += '상점 거래ID : ' + rsp.merchant_uid + "\n";
        msg += '결제 금액 : ' + rsp.paid_amount + "\n";
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
        $.ajax({
          type: "POST",
          url: "add",
          dataType: "json",
          data: "paymentWay=" + paymentMethod
          + "&delivery.recieverName=" + buyerName
          + "&delivery.deliveryAddress=" + buyerAddress
          + "&delivery.recieverCellPhone=" + buyerCellPhone
          + "&delivery.recieverEmail=" + buyerEmail
          + "&delivery.recieverRequest=" + buyerRequest
          + "&optionItemList=" + JSON.stringify(optionItemList),
          async: false,
          success: function() {
          }
        });
        
        window.location.href = 'result';
        
    } else {
        var msg = '결제에 실패하였습니다.\n\n';
        msg += '에러내용 : ' + rsp.error_msg;
        
        $.ajax({
          type: "POST",
          url: "add",
          dataType: "json",
          data: "paymentWay=" + paymentMethod
          + "&paymentPrice=" + paymentPrice
          + "&delivery.recieverName=" + buyerName
          + "&delivery.deliveryAddress=" + buyerAddress
          + "&delivery.recieverCellPhone=" + buyerCellPhone
          + "&delivery.recieverEmail=" + buyerEmail
          + "&delivery.recieverRequest=" + buyerRequest
          + "&optionItemList=" + JSON.stringify(optionItemList),
          async: false,
          success: function() {
          }
        });
        
        window.location.href = 'result';
    }
    /* swal(msg); */
  });
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
</script>
