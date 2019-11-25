<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  
  .bootstrap-select .dropdown-menu li a.opt {
    position: relative;
    padding-left: 11px;
    padding-right: 11px;
  }
  
  .bootstrap-select .dropdown-menu.show {
    padding:0px;
    margin:0px;
  }
  
  .bootstrap-select .dropdown-header {
    padding:0px;
    margin:0px;
  }
  
  table.my-product-table td {
    color:black;
  }
  
  table.my-table td.my-product {
    padding-left:1.5rem;
    padding-right:1.5rem;
  }
  
  table.my-table-col td.my-seller {
    border-right:none;
  }
  
  .modal-header {
    padding-top:0.5rem;
    padding-bottom:0.5rem;
    background-color:#82AE46;
  }
  
  .modal-title {
    font-weight:bold;
    color:#FFFFFF;
  }
  
  .modal-body h5 {
    font-weight:bold;
  }
  
  .my-modal-h5 {
    font-weight:bold;
    background-color: RGBA(0,0,0,0.2);
    padding:0rem 0.25rem;
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
        <li class="my-menu active"><a href="order">구매내역</a></li>
        <li class="my-menu"><a href="wishlist">관심상품</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul id="sellerMenu" class="nav flex-column nav-pills nav-stacked text-center">
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <h2 id="mypage-title-h2">구매내역</h2>
      <hr>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">입금대기중</h4>
            <p class="mb-1">0</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">배송준비중</h4>
            <p class="mb-1">1</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">배송진행중</h4>
            <p class="mb-1">0</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">배송완료</h4>
            <p class="mb-1">3</p>
          </div>
        </div>
      </div>
      
      <hr>
      
      <div class="row">
        <div class="col-sm-12">
            <div class="btn-toolbar mb-2" role="toolbar" aria-label="Toolbar with button groups">
              <div class="btn-group" role="group" aria-label="First group">
                <button type="button" class="btn btn-primary btn-sm my-date-btn" value="7">1주일</button>
                <button type="button" class="btn btn-primary btn-sm my-date-btn" value="1">1개월</button>
                <button type="button" class="btn btn-primary btn-sm my-date-btn" value="3">3개월</button>
                <button type="button" class="btn btn-primary btn-sm my-date-btn" value="6">6개월</button>
              </div>
              <div class="btn-group mx-4 text-center" role="group" 
                   aria-label="Second group"
                   style="border:solid #82AE46 2px;width:40%;height:120%;">
                <span class="text-center pt-0">
                  <input type="text" data-trigger="#from-datepicker" class="text-left"
                         style="outline:0px;border:0px;width:60%;">
                  <span id="from-datepicker" class="">
                    <img src="/images/btn_cal.gif">
                  </span>
                </span>
                <span class="mx-2">~</span>
                <span class="text-center">
                  <input type="text" data-trigger="#to-datepicker" class="text-left"
                         style="outline:0px;border:0px;width:60%;">
                  <span id="to-datepicker" class="">
                    <img src="/images/btn_cal.gif">
                  </span>
                </span>
              </div>
              <div class="btn-group" role="group" aria-label="Third group"
                   style="width:12%;margin-right:0px;">
                <select class="selectpicker" data-style="btn btn-sm btn-primary h-100">
                  <optgroup>
                    <option selected>전체</option>
                    <option>입금확인중</option>
                    <option>배송준비중</option>
                    <option>배송진행중</option>
                    <option>배송완료</option>
                  </optgroup>
                </select>
              </div>
              <div class="btn-group" role="group" aria-label="Fourth group" 
                   style="width:12%;margin-left:20px;margin-right:0px;">
                <button type="button" class="btn searchbtn btn-sm btn-primary">조회</button>
              </div>
                
            </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <table class="col-sm-12 table-hover text-center my-table my-product-table my-table-col" cellpadding="20" cellspacing="1">
          <thead>
            <tr>
              <th class="text-center my-col-2">구매일</th>
              <th class="text-center my-col-6">상품</th>
              <th class="text-center my-col-2">배송상태</th>
              <th class="text-center my-col-2">판매자</th>
            </tr>
          </thead>
          <tbody id="my-OrderList">
          <c:forEach items="${orderProductList}" var="orderProduct" varStatus="status">
            <tr>
              <td class="my-date">${orderProduct.order.paymentDate}</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="/upload/product/${orderProduct.productOptionItem.productOption.product.photos[0].photoPath}" data-toggle="modal" data-target="#exampleModal${status.index}" data-toggle="modal" data-target="#exampleModal${status.index}" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal${status.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel">주문 상세정보</h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <h5 class="my-modal-h5">주문정보</h5>
                            <table class="col-sm-12 table-hover text-center my-table my-product-table" cellpadding="20" cellspacing="1">
                            <thead>
                              <tr>
                                <th class="text-center my-col-2">구매일</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">배송상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">${orderProduct.order.paymentDate}</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="/upload/product/${orderProduct.productOptionItem.productOption.product.photos[0].photoPath}" data-toggle="modal" data-target="#exampleModal${status.index}" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >${orderProduct.order.no}</span><br>
                                      상품명: <span id="product-name">${orderProduct.productOptionItem.productOption.product.productName}</span><br>
                                      옵션: <span id="product-option">${orderProduct.productOptionItem.optionItemMatter}</span><hr class="my-1">
                                      가격: <span id="product-price"><span style="font-size:15px;font-weight:bold;">${orderProduct.productOptionItem.productOption.product.price}</span>원 [+${orderProduct.productOptionItem.optionsPrice}]<c:if test="${orderProduct.quantity > 1}"> x ${orderProduct.quantity}개</c:if>
                                      </span>
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송준비중</td>
                               <td class="my-seller">${orderProduct.productOptionItem.productOption.product.seller.member.name}</td>
                              </tr>
                            </tbody>
                            </table>
                            <hr>
                            <br>
                            
                            <h5 class="my-modal-h5">결제정보</h5>
                            <table class="col-sm-12 table-hover text-center my-table my-product-table" cellpadding="20" cellspacing="1">
                            <thead>
                              <tr>
                                <th class="text-center my-col-4">결제일</th>
                                <th class="text-center my-col-4">결제방법</th>
                                <th class="text-center my-col-4">결제금액</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-payment-date">${orderProduct.order.paymentDate}</td>
                                <td class="my-payment-way">${orderProduct.order.paymentWay}</td>
                                <td class="my-price" style="border-right:none;"><span id="product-price"><span style="font-size:15px;font-weight:bold;">${((orderProduct.productOptionItem.productOption.product.price + orderProduct.productOptionItem.optionsPrice) * orderProduct.quantity) + 2500}</span>원
                                      </span>(배송비 포함)
                                 </td>
                              </tr>
                            </tbody>
                            </table>
                            <hr>
                            <br>
                            
                            <h5 class="my-modal-h5">배송정보</h5>
                            <table class="col-sm-12 table-hover text-center my-table my-table-row my-product-table my-table-modal">
                            <tbody>
                              <tr>
                                <th class="text-center my-col-2">이름</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" 
                                  value='${orderProduct.order.delivery.recieverName}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" 
                                  value='${orderProduct.order.delivery.recieverCellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">배송지</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:100%"
                                  value='${orderProduct.order.delivery.deliveryAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:100%" 
                                  value='${orderProduct.order.delivery.recieverRequest}'/>
                                </td>
                              </tr>
                            </tbody>
                            </table>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">배송정보 수정</button>
                            <button type="button" class="btn btn-dark" data-dismiss="modal">닫기</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-9 px-0" style="font-size:12px">
                    주문번호: <span id="product-id" >${orderProduct.order.no}</span><br>
                    상품명: <span id="product-name">${orderProduct.productOptionItem.productOption.product.productName}</span><br>
                    옵션: <span id="product-option">${orderProduct.productOptionItem.optionItemMatter}</span><hr class="my-1">
                    가격: <span id="product-price"><span style="font-size:15px;font-weight:bold;">${orderProduct.productOptionItem.productOption.product.price + orderProduct.productOptionItem.optionsPrice}</span>원<c:if test="${orderProduct.quantity > 1}"> x ${orderProduct.quantity}개</c:if></span>
                  </div>
                </div>
              </td>
              <td class="my-state">배송준비중</td>
              <td class="my-seller">${orderProduct.productOptionItem.productOption.product.seller.member.name}</td>
            </tr>
            </c:forEach>
          </tbody>
          </table>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col text-center">
          <div class="block-27">
            <ul>
              <li><a href="#">&lt;</a></li>
              <li class="active"><span>1</span></li>
              <!-- <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li> -->
              <li><a href="#">&gt;</a></li>
            </ul>
          </div>
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
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>

<script>
"use strict"

if(${loginUser.memberClass} == 2) {
  $("#infoMenu").append(
      "<li class='my-menu'><a href='sellerinfo'>판매자 정보</a></li>");
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
$(function() {
  
  const fromDateInput = $('[data-trigger="#from-datepicker"]').datepicker({
    language: 'ko-KR',
    format: "yyyy-mm-dd",
    endDate : "today",
    autoHide : true,
    autoPick : true,
    trigger : "#from-datepicker"
  });
  
  const toDateInput = $('[data-trigger="#to-datepicker"]').datepicker({
    language: 'ko-KR',
    format: "yyyy-mm-dd",
    endDate : "today",
    autoHide : true,
    autoPick : true,
    trigger : "#to-datepicker"
  });
  
  $('.selectpicker').selectpicker({
    style: 'btn btn-sm btn-primary'
  });
  
  $(".my-date-btn").on("click", function(e) {
    var today = new Date();
    var fromDate = new Date();
    if (e.target.value == 7) {
      fromDate = new Date(today.setDate(today.getDate() - e.target.value));
    } else {
      fromDate = new Date(today.setMonth(today.getMonth() - e.target.value));
    }
    fromDateInput.datepicker("setDate", fromDate);
    toDateInput.datepicker("setDate", new Date());
  });
  
});
</script>

 