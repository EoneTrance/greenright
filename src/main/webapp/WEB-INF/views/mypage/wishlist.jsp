<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel='stylesheet' href='/css/bootstrap.min.css'>
<link rel="stylesheet" href="/css/fontawesome/css/all.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">
<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/style.css">
    <!--------------------------------------------------------------------------------------->
    <div class="hero-wrap hero-bread" style="background-image: url('../../images/main.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="/greenright/main">Home</a></span> <span>Wishlist</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <section class="ftco-section ftco-cart">
  <div class="container">
    <div class="row">
      <div class="col-md-12 ftco-animate">
        <div class="cart-list">
          <table class="table">
            <thead class="thead-primary">
              <tr class="text-center">
                <th>&nbsp;</th>
                <th>Product List</th>
                <th>&nbsp;</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
              </tr>
            </thead>
            <tbody>
              <tr class="text-center">
                <td class="product-remove"><a href="#"><i class="fas fa-times"></i></a></td>
                <td class="image-prod"><div class="img" style="background-image:url(/images/product-1.jpg);"></div></td>
                <td class="product-name">
                  <h3>Bell Pepper</h3>
                  <p>Far far away, behind the word mountains, far from the countries</p>
                </td>
                <td class="price">$4.90</td>
                <td class="quantity">
                  <div class="input-group mb-3">
                    <input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
                  </div>
                </td>
                <td class="total">5000￦</td>
              </tr><!-- END TR-->
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<!----------------------------------------------section end----------------------------------->
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
    <!--------------------------------------------footer------------------------------------------>
    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row">
            <div class="mouse">
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><i class="fas fa-arrow-up"></i></div>
                        </a>
            </div>
        </div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">GreenRight</h2>
              <p>Try eco-friendly products.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="fab fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Community</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
                  <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                    <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                    <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                    <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                    <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                  </ul>
                  <ul class="list-unstyled">
                    <li><a href="#" class="py-2 d-block">FAQs</a></li>
                    <li><a href="#" class="py-2 d-block">Contact</a></li>
                  </ul>
                </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Have a Questions?</h2>
                <div class="block-23 mb-3">
                  <ul>
                    <li><span class="icon icon-map-marker"></span><span class="text">459, Gangnam-daero, Seocho-gu, Seoul, Republic of Korea</span></li>
                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">070 2132 6485</span></a></li>
                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">GreenRight@bitcamp.com</span></a></li>
                  </ul>
                </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Web is made by <a href="https://greenright.com" target="_blank">GreenRight</a></p>
          </div>
        </div>
      </div>
    </footer>
    <!--------------------------------------------footer-end--------------------------------------->
<!-- loader -->
 <div id="ftco-loader" class="show fullscreen">
<svg class="circular" width="48px" height="48px">
<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg> 
</div>
<script src='/js/jquery.min.js'></script>
=======

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
<h1>WISHLIST</h1>
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
        <li class="my-menu active"><a href="#section3">관심상품</a></li>
        <li class="my-menu"><a href="#section3">업적</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul id="sellerMenu" class="nav flex-column nav-pills nav-stacked text-center">
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <h2 id="mypage-title-h2">관심상품</h2>
      <hr>
      
      <!-- <div class="well">
        h4>주문관리</h4>
        <p>- 기본적으로 최근 3개월간의 자료가 조회되며 기간 검색시 지난 주문관리을 조회하실 수 있습니다.</p>
        <p>- 주문번호를 클릭하시면 해당 주문엗 대한 상세관리을 확인하실 수있습니다.</p>
        <p>- [세금계산서 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [세금계산서 신청] 클릭</p>
        <p>- [현급영수증 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [현금영수증 신청] 클릭</p>
        <p>- [거래명세서 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [거래명세서 신청] 클릭</p>
        <p>- [카드매출전표 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [카드매출전표 인쇄] 클릭</p>
      </div> -->
      
      <div class="row">
        <div class="col">
          <table class="col-sm-12 table-hover text-center my-table my-product-table my-table-col" cellpadding="20" cellspacing="1">
          <thead>
            <tr>
              <th class="text-center my-col-2">날짜</th>
              <th class="text-center my-col-6">상품</th>
              <th class="text-center my-col-2">상태</th>
              <th class="text-center my-col-2">판매자</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <th class="text-center my-col-2">날짜</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">2019-09-09</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >10238374</span><br>
                                      상품명: <span id="product-name">코트</span><br>
                                      옵션: <span id="product-option">95</span><hr class="my-1">
                                      가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송완료</td>
                               <td class="my-seller">이원주</td>
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
                                <td class="my-payment-date">2019-09-09</td>
                                <td class="my-payment-way">무통장입금</td>
                                <td class="my-price font-weight-bold" style="border-right:none;">200,200</td>
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
                                  <input type="text" name="nickname" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.nickname}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" value='${loginUser.cellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">주소</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:10%;" value='${loginUser.postalCode}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;margin-right:2px" value='${loginUser.defaultAddress}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;" value='${loginUser.detailAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:99.6%" value='${loginUser.id}'/>
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
                    주문번호: <span id="product-id" >10238374</span><br>
                    상품명: <span id="product-name">코트</span><br>
                    옵션: <span id="product-option">95</span><hr class="my-1">
                    가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                  </div>
                </div>
              </td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <th class="text-center my-col-2">날짜</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">2019-09-09</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >10238374</span><br>
                                      상품명: <span id="product-name">코트</span><br>
                                      옵션: <span id="product-option">95</span><hr class="my-1">
                                      가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송완료</td>
                               <td class="my-seller">이원주</td>
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
                                <td class="my-payment-date">2019-09-09</td>
                                <td class="my-payment-way">무통장입금</td>
                                <td class="my-price font-weight-bold" style="border-right:none;">200,200</td>
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
                                  <input type="text" name="nickname" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.nickname}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" value='${loginUser.cellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">주소</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:10%;" value='${loginUser.postalCode}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;margin-right:2px" value='${loginUser.defaultAddress}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;" value='${loginUser.detailAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:99.6%" value='${loginUser.id}'/>
                                </td>
                              </tr>
                            </tbody>
                            </table>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">CLOSE</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-9 px-0" style="font-size:12px">
                    주문번호: <span id="product-id" >10238374</span><br>
                    상품명: <span id="product-name">코트</span><br>
                    옵션: <span id="product-option">95</span><hr class="my-1">
                    가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                  </div>
                </div>
              </td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <th class="text-center my-col-2">날짜</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">2019-09-09</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >10238374</span><br>
                                      상품명: <span id="product-name">코트</span><br>
                                      옵션: <span id="product-option">95</span><hr class="my-1">
                                      가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송완료</td>
                               <td class="my-seller">이원주</td>
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
                                <td class="my-payment-date">2019-09-09</td>
                                <td class="my-payment-way">무통장입금</td>
                                <td class="my-price font-weight-bold" style="border-right:none;">200,200</td>
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
                                  <input type="text" name="nickname" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.nickname}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" value='${loginUser.cellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">주소</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:10%;" value='${loginUser.postalCode}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;margin-right:2px" value='${loginUser.defaultAddress}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;" value='${loginUser.detailAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:99.6%" value='${loginUser.id}'/>
                                </td>
                              </tr>
                            </tbody>
                            </table>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">CLOSE</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-9 px-0" style="font-size:12px">
                    주문번호: <span id="product-id" >10238374</span><br>
                    상품명: <span id="product-name">코트</span><br>
                    옵션: <span id="product-option">95</span><hr class="my-1">
                    가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                  </div>
                </div>
              </td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <th class="text-center my-col-2">날짜</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">2019-09-09</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >10238374</span><br>
                                      상품명: <span id="product-name">코트</span><br>
                                      옵션: <span id="product-option">95</span><hr class="my-1">
                                      가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송완료</td>
                               <td class="my-seller">이원주</td>
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
                                <td class="my-payment-date">2019-09-09</td>
                                <td class="my-payment-way">무통장입금</td>
                                <td class="my-price font-weight-bold" style="border-right:none;">200,200</td>
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
                                  <input type="text" name="nickname" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.nickname}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" value='${loginUser.cellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">주소</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:10%;" value='${loginUser.postalCode}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;margin-right:2px" value='${loginUser.defaultAddress}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;" value='${loginUser.detailAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:99.6%" value='${loginUser.id}'/>
                                </td>
                              </tr>
                            </tbody>
                            </table>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">CLOSE</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-9 px-0" style="font-size:12px">
                    주문번호: <span id="product-id" >10238374</span><br>
                    상품명: <span id="product-name">코트</span><br>
                    옵션: <span id="product-option">95</span><hr class="my-1">
                    가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                  </div>
                </div>
              </td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product text-left py-2">
                <div class="row">
                  <div class="col-sm-3 px-0">
                    <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <th class="text-center my-col-2">날짜</th>
                                <th class="text-center my-col-6">상품</th>
                                <th class="text-center my-col-2">상태</th>
                                <th class="text-center my-col-2">판매자</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="my-date">2019-09-09</td>
                                <td class="my-product text-left py-2">
                                  <div class="row">
                                    <div class="col-sm-3 px-0">
                                      <img id="product-photo" src="ddd" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
                                    </div>
                                    <div class="col-sm-9 px-0" style="font-size:12px">
                                      주문번호: <span id="product-id" >10238374</span><br>
                                      상품명: <span id="product-name">코트</span><br>
                                      옵션: <span id="product-option">95</span><hr class="my-1">
                                      가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                                    </div>
                                  </div>
                                </td>
                                <td class="my-state">배송완료</td>
                               <td class="my-seller">이원주</td>
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
                                <td class="my-payment-date">2019-09-09</td>
                                <td class="my-payment-way">무통장입금</td>
                                <td class="my-price font-weight-bold" style="border-right:none;">200,200</td>
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
                                  <input type="text" name="nickname" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.nickname}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">연락처</th>
                                <td class="my-col-10">
                                  <input type="text" name="cellphone" class="input-md" maxlength="8" style="width:20%;" value='${loginUser.cellPhone}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">주소</th>
                                <td class="my-col-10">
                                  <input type="text" name="address" class="input-md" style="width:10%;" value='${loginUser.postalCode}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;margin-right:2px" value='${loginUser.defaultAddress}'/>
                                  <input type="text" name="address" class="input-md" style="width:44%;" value='${loginUser.detailAddress}'/>
                                </td>
                              </tr>
                              <tr>
                                <th class="text-center my-col-2">요청사항</th>
                                <td class="my-col-10">
                                  <input type="text" name="name" class="input-md" style="width:99.6%" value='${loginUser.id}'/>
                                </td>
                              </tr>
                            </tbody>
                            </table>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">CLOSE</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-9 px-0" style="font-size:12px">
                    주문번호: <span id="product-id" >10238374</span><br>
                    상품명: <span id="product-name">코트</span><br>
                    옵션: <span id="product-option">95</span><hr class="my-1">
                    가격: <span id="product-price" style="font-size:15px;font-weight:bold;">200,200</span> 원
                  </div>
                </div>
              </td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
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
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
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
>>>>>>> 6195c991c5dd01c6c29ea3df8bb611489e5bdd0f
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<<<<<<< HEAD
<script src='/js/bootstrap-datepicker.js'></script>
<script src="/js/popper.min.js"></script>
=======
>>>>>>> 6195c991c5dd01c6c29ea3df8bb611489e5bdd0f
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>
<<<<<<< HEAD
<script>
   // 카테고리 검새액(유기농, 가구 ... )
      $(function(){
        $(".searchbtn").click(function(){
          
          $(this).parent().find(".active").removeClass("active");
          $(this).children(".vv").addClass("active");
          var chkid = $(this).attr('id')
          if(chkid=="productAll"){
           
          }
          else if(chkid=="clean"){
           var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
               sublist += "<li value=1 class='subbutton'><a class='vv'  ><b>세제류</b></a></li>"
               sublist += "<li value=2 class='subbutton'><a class='vv' ><b>위생용품</b></a></li>"
               sublist += "<li value=3 class='subbutton'><a class='vv' ><b>화장지</b></a></li>"
               sublist += "<li value=4 class='subbutton'><a class='vv' ><b>티슈</b></a></li>"
                 $(".listchange").html(sublist);  
           $(".listchange").show();
          }else if(chkid=="office"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=5 class='subbutton'><a class='vv' ><b>복사용지</b></a></li>"
              sublist += "<li value=6 class='subbutton'><a class='vv' ><b>화일</b></a></li>"
              sublist += "<li value=7 class='subbutton'><a class='vv' ><b>토너</b></a></li>"
              sublist += "<li value=8 class='subbutton'><a class='vv' ><b>기타</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show();
          }else if(chkid=="organic"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=9 class='subbutton'><a class='vv' ><b>과일</b></a></li>"
              sublist += "<li value=10 class='subbutton'><a class='vv' ><b>채소</b></a></li>"
              sublist += "<li value=11 class='subbutton'><a  class='vv'><b>간식</b></a></li>"
              sublist += "<li value=12 class='subbutton'><a class='vv' ><b>축산품</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show(); 
              
          }else if(chkid=="furniture"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=13 class='subbutton'><a class='vv' ><b>침대</b></a></li>"
              sublist += "<li value=14 class='subbutton'><a class='vv' ><b>소파</b></a></li>"
              sublist += "<li value=15 class='subbutton'><a class='vv' ><b>테이블</b></a></li>"
              sublist += "<li value=16 class='subbutton'><a class='vv' ><b>의자</b></a></li>"
              sublist += "<li value=17 class='subbutton'><a class='vv' ><b>파티션</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show(); 
              
          }else if(chkid=="upcycleing"||chkid=="set"){
            $(".listchange").hide();
          }
          var allData = {"no" : $(this).val()}
          $.ajax({
            url : "../greenright/json/Product/searchbyCategory",
            type : "GET",
            dataType : "json",
            data : allData,
            success : function(data) {
               var list = data.result;
               var tableTag ="";
              for(var i = 0 ; i < list.length; i++) {
                tableTag += "<div class='col-md-6 col-lg-3'>"
                tableTag += "<div class='product'>"
                tableTag += "<a href='#' class='img-prod'>"
                tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "' alt='Colorlib Template' style='width:253px; height:202px; object-fit:cover;' >" 
                tableTag += "<span class='status'>30%</span>"
                tableTag += "<div class='overlay'></div></a>"
                tableTag += "<div class='text py-3 pb-4 px-3 text-center'>"
                tableTag += "<h3><a href='#'>"+ list[i].productName +"</a></h3>"
                tableTag += "<div class='d-flex'>"
                tableTag += "<div class='pricing'>"
                var a =  list[i].price ; 
                tableTag += "<p class='price'><span class='mr-2 price-dc'>"+list[i].price+"</span><span class='price-sale'>"+list[i].price+"</span></p>"
                tableTag += "</div></div><div class='bottom-area d-flex px-3'>"
                tableTag += "<div class='m-auto d-flex'>"
                tableTag += "<a href='#' class='add-to-cart d-flex justify-content-center align-items-center text-center'>"
                tableTag += "<i class='fas fa-comments'></i></a>"
                tableTag += "<a href='#' class='buy-now d-flex justify-content-center align-items-center mx-1'>"
                tableTag += "<span><i class='fas fa-cart-plus'></i></span></a>"
                tableTag += "<a href='#' class='heart d-flex justify-content-center align-items-center '>"
                tableTag += "<span><i class='far fa-heart'></i></span>"
                tableTag += "</a></div></div></div></div></div>";
              };
              $(".addto").html(tableTag);  
            }
          });
        })
      
      
   
      
        
      });
   
      $(document).on("click", ".subbutton", function() {
        $(this).parent().find(".active").removeClass("active");
        $(this).children(".vv").addClass("active");
          var allData = {"no" : $(this).val()}
          $.ajax({
            url : "../greenright/json/Product/searchbyGroup",
            type : "GET",
            dataType : "json",
            data : allData,
            success : function(data) {
              console.log(data);
               var list = data.result;
              var tableTag ="";
                for(var i = 0 ; i < list.length; i++) {
                  tableTag += "<div class='col-md-6 col-lg-3'>"
                  tableTag += "<div class='product'>"
                  tableTag += "<a href='#' class='img-prod'>"
                  tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "' alt='Colorlib Template' style='width:253px; height:202px; object-fit:cover;' >" 
                  tableTag += "<span class='status'>30%</span>"
                  tableTag += "<div class='overlay'></div></a>"
                  tableTag += "<div class='text py-3 pb-4 px-3 text-center'>"
                  tableTag += "<h3><a href='#'>"+ list[i].productName +"</a></h3>"
                  tableTag += "<div class='d-flex'>"
                  tableTag += "<div class='pricing'>"
                  tableTag += "<p class='price'><span class='mr-2 price-dc'>"+ list[i].price +"</span><span class='price-sale'>"+list[i].price+"</span></p>"
                  tableTag += "</div></div><div class='bottom-area d-flex px-3'>"
                  tableTag += "<div class='m-auto d-flex'>"
                  tableTag += "<a href='#' class='add-to-cart d-flex justify-content-center align-items-center text-center'>"
                  tableTag += "<i class='fas fa-comments'></i></a>"
                  tableTag += "<a href='#' class='buy-now d-flex justify-content-center align-items-center mx-1'>"
                  tableTag += "<span><i class='fas fa-cart-plus'></i></span></a>"
                  tableTag += "<a href='#' class='heart d-flex justify-content-center align-items-center '>"
                  tableTag += "<span><i class='far fa-heart'></i></span>"
                  tableTag += "</a></div></div></div></div></div>";
                };
                $(".addto").html(tableTag);  
              }
            });
          })
        
        
     
        
          
</script>








=======
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>

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

 
>>>>>>> 6195c991c5dd01c6c29ea3df8bb611489e5bdd0f
