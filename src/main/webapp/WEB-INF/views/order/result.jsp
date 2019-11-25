<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/css/greenright.css">

<style>

div.well {
  border: dashed #82AE46 5px;
  background-color: RGBA(130,174,70,0.1);
}

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
  
</style>

<div id="mypage-title-h1">
<h1>주문완료</h1>
</div>

<section class="ftco-section py-5 text-center">
  <h3><span style="font-size:200%;color:#82AE46">${loginUser.name}</span> 님의 주문이 접수되었습니다.</h3>
  <br>
<div id="smallContent">
  <p>자세한 내용은 <a href="../mypage/order">마이페이지 > 구매내역</a> 에서 확인하실 수 있습니다.</p>
<br><br>

<div class="container-fluid">
  <div class="row">
    <div class="col-sm-12">
      <div id=memberInfoForm>
      <h2 id="mypage-title-h2">주문정보</h2>
      <div style="border:solid 1px #82AE46;border-radius:10px;">
        <table class="col-sm-12 table-hover my-table my-join-table my-table-row" cellpadding="10">
          <tbody>
          <tr>
            <th class="my-col-3">주문자</th>
            <td class="my-col-9">
            <span style="color:black">${order.delivery.recieverName}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">주문번호</th>
            <td class="my-col-9">
            <span style="color:black">${order.no}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">주문접수일</th>
            <td class="my-col-9">
            <span style="color:black">${order.paymentDate}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">주문상품</th>
            <td class="my-col-9">
            <span id="orderProduct" style="color:black">${orderProduct}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">결제금액</th>
            <td class="my-col-9">
            <span style="color:black">${order.paymentPrice}원</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">결제수단</th>
            <td class="my-col-9">
            <span style="color:black">${order.paymentWay}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">배송지</th>
            <td class="my-col-9">
            <span style="color:black">${order.delivery.deliveryAddress}</span>
            </td>
          </tr>
          <tr>
            <th class="my-col-3">요청사항</th>
            <td class="my-col-9">
            <span style="color:black">${order.delivery.recieverRequest}</span>
            </td>
          </tr>
          </tbody>
        </table>
        </div>
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
"use strict";
$(function(){
  var orderProductList = ${orderProductList};
  $("#orderProduct").html(orderProductList[0] + "외 ");
});
</script>
