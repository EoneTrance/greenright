<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.css">
<link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/css/mypage.css">
  
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
  
  table.my-product-table td {
    color:black;
  }
  
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
  
</style>

<div id="mypage-title-h1">
<h1>SALES</h1>
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
        <li class="my-menu"><a href="order">주문관리</a></li>
        <li class="my-menu"><a href="#">관심상품</a></li>
        <li class="my-menu"><a href="#">업적</a></li>
        <li class="my-menu active"><a href="sale">판매관리</a></li>
        <li class="my-menu"><a href="#">개인전관리</a></li>
        <li class="my-menu"><a href="#">판매회원 전환</a></li>
      </ul>
    </div>
  </div>
</nav> -->

<div class="container-fluid">
  <div class="row">
    <div class="my-col-20 sidenav hidden-xs px-1">
      <h2 class="text-center mt-2 font-weight-bold">MyPage</h2>
      <hr>
      <h4 class="font-weight-bold ml-2">기본정보</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu"><a href="userinfo">기본정보</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">구매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center mb-4">
        <li class="my-menu"><a href="order">구매내역</a></li>
        <li class="my-menu"><a href="#section3">관심상품</a></li>
        <li class="my-menu"><a href="#section3">업적</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center">
        <li class="my-menu active"><a href="sale">판매내역</a></li>
        <li class="my-menu"><a href="#section3">개인전관리</a></li>
        <li class="my-menu"><a href="#section3">판매회원 전환</a></li>
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <h2 id="mypage-title-h2">판매내역</h2>
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
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">입금대기중</h4>
            <p class="mb-1">3</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">발송준비중</h4>
            <p class="mb-1">3</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">발송진행중</h4>
            <p class="mb-1">3</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well text-center">
            <h4 class="mt-3 mb-0">발송완료</h4>
            <p class="mb-1">3</p>
          </div>
        </div>
      </div>
      
      <hr>
      
      <div class="row">
        <div class="col-sm-12">
            <div class="btn-toolbar mb-2" role="toolbar" aria-label="Toolbar with button groups">
              <div class="btn-group" role="group" aria-label="First group">
                <button type="button" class="btn my-btn my-btn-hover btn-sm">1주일</button>
                <button type="button" class="btn my-btn my-btn-hover btn-sm">1개월</button>
                <button type="button" class="btn my-btn my-btn-hover btn-sm">3개월</button>
                <button type="button" class="btn my-btn my-btn-hover btn-sm">6개월</button>
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
              <div class="btn-group" role="group" aria-label="Third group" style="width:15%">
                <select class="selectpicker" data-style="btn btn-sm my-btn my-btn-hover h-100">
                  <optgroup label="주문상태">
                    <option disable hidden>주문상태</option>
                    <option selected>전체</option>
                    <option>입금확인중</option>
                    <option>결제완료</option>
                    <option>배송중</option>
                    <option>배송완료</option>
                    <option>구매확정</option>
                  </optgroup>
                </select>
              </div>
              <span class="btn-group" role="group">
                <button type="button" class="btn-sm my-btn my-btn-hover px-3 ml-4">조회</button>
              </span>
            </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <table class="col-sm-12 table-hover text-center my-table my-product-table" cellpadding="20" cellspacing="1">
          <thead>
            <tr>
              <th class="text-center my-col-3">날짜</th>
              <th class="text-center my-col-5">상품</th>
              <th class="text-center my-col-2">상태</th>
              <th class="text-center my-col-2">구매자</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
              <td class="my-state">배송완료</td>
              <td class="my-seller">이원주</td>
            </tr>
            <tr>
              <td class="my-date">2019-09-09</td>
              <td class="my-product">Doe</td>
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

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>
<script src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="/js/main.js"></script>

<script>
$(function() {  
  $('[data-trigger="#from-datepicker"]').datepicker({
    language: 'ko-KR',
    format: "yyyy-mm-dd",
    endDate : "today",
    autoHide : true,
    autoPick : true,
    trigger : "#from-datepicker"
  });
});

$(function() {  
  $('[data-trigger="#to-datepicker"]').datepicker({
    language: 'ko-KR',
    format: "yyyy-mm-dd",
    endDate : "today",
    autoHide : true,
    autoPick : true,
    trigger : "#to-datepicker"
  });
});
</script>

 