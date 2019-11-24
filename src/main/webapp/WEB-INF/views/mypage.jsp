<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/greenright.css">

<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
</style>
    <!-- Custom styles for this template -->
<div class="hero-wrap hero-bread" style="background-image: url('/images/bg_1.jpg');">
  <div class="container">
    <div class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center fadeInUp ftco-animated">
        <p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span>GREEN RIGHT</span></p>
        <h1 class="mb-0 bread font-weight-bold">My Page</h1>
      </div>
    </div>
  </div>
</div>
    
<!-- <div class="pricing-header px-3 py-3 pt-md-1 pb-md-4 mx-auto text-center">
  <h1 class="display-4 font-weight-bold">My Page</h1>
  <p class="lead">마이페이지</p>
</div> -->

<section class="ftco-section py-5">
<div id="myPageContent">
  <div class="container">
    <div class="card-deck mb-3 text-center">
      <div class="card mb-4 shadow-sm">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">PROFILE</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">기본정보</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>내 회원정보 관리</li>
          </ul>
          <a href="mypage/userinfo">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">PROFILE</button>
          </a>
        </div>
      </div>
      <div class="card mb-4 shadow-sm">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">ORDERS</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">구매내역</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>구매내역 관리</li>
          </ul>
          <a href="mypage/order">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">ORDERS</button>
          </a>
        </div>
      </div>
      <div class="card mb-4 shadow-sm">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">WISHLIST</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">관심상품</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>관심상품 관리</li>
          </ul>
          <a href="mypage/wishlist">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">WISHLIST</button>
          </a>
        </div>
      </div>
    </div>
    <div id="my-sellerMenu" class="card-deck mb-3 text-center">
      <div id="my-manage" class="card mb-4 shadow-sm" style="display:none;">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">PRODUCT MANAGE</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">판매상품 관리</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>내 판매상품 관리</li>
          </ul>
          <a href="mypage/manage">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">PRODUCT MANAGE</button>
          </a>
        </div>
      </div>
      <div id="my-sale" class="card mb-4 shadow-sm" style="display:none;">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">SALES</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">판매내역</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>판매내역 관리</li>
          </ul>
          <a href="mypage/sale">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">SALES</button>
          </a>
        </div>
      </div>
      <div id="my-exhibition" class="card mb-4 shadow-sm" style="display:none;">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">EXHIBITION</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">개인전</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>개인전 관리</li>
          </ul>
          <a href="mypage/exhibition">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">EXHIBITION</button>
          </a>
        </div>
      </div>
      <div id="my-conversion" class="card mb-4 shadow-sm" style="display:none;">
        <div class="card-header my-bg-color-gray">
          <h4 class="my-0 font-weight-bold">CONVERSION</h4>
        </div>
        <div class="card-body">
          <h1 class="card-title pricing-card-title my-color">판매회원 전환</h1>
          <ul class="list-unstyled mt-3 mb-4">
            <li>판매회원 전환</li>
          </ul>
          <a href="mypage/conversion">
          <button type="button" class="searchbtn btn-primary btn-lg btn-block">CONVERSION</button>'
          </a>
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
$(function(){
  if (${loginUser.memberClass} == 2) {
    $("#my-manage").css("display", "inline-block");
    $("#my-sale").css("display", "inline-block");
    $("#my-exhibition").css("display", "inline-block");
  } else {
    $("#my-conversion").css("display", "inline-block");
  }
});
</script>