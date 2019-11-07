<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.css">
  <link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
  
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      height: 100%;
      border: solid #77A43E 10px;
      background-color: RGBA(119,164,62,0.1);
    }
    
    div.well {
      border: dashed #77A43E 5px;
      background-color: RGBA(119,164,62,0.1);
    }
    
/*       #597B2F */

    div.well h4 {
      font-weight:bold;
    }
    
    div.well p {
      font-size:300%;
      color:#77A43E;
    }
    
    ul.nav-pills li.active a, ul.nav-pills li.active a:hover {
      background-color: #77A43E;
      color: #FFFFFF;
    }
    
    .nav-pills li a:hover {
      background-color:RGBA(119,164,62,0.5);
    }
    
    .nav-pills li a {
      color: #77A43E;
    }
    
    .btn-group button, .btn-group .dropdown-menu .inner li.active a,
    .btn-group button:focus
    {
      background-color:#77A43E;
      color:#FFFFFF;
    }
    
    .btn-group button:hover {
      background-color:RGBA(119,164,62,0.5);
    }
    
    .btn-group .dropdown-menu .inner li a:hover
    {
      background-color:RGBA(119,164,62,0.5);
    }
    
    table.my-product-table tbody tr:hover {
      background-color:RGBA(119,164,62,0.1);
    }
    
    
    
    
    
    
    
    
    
    
    
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    
    #myPageContent {
      width: 960px;
      padding-top: 10px;
      padding-bottom: 10px;
      margin: auto auto;
    }
    
    .my-menu {
      font-weight:bold;
    }
    
  </style>
  
<div id="myPageContent">
<nav class="navbar navbar-inverse visible-xs">
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
        <li class="my-menu active"><a href="order">주문내역</a></li>
        <li class="my-menu"><a href="#">관심상품</a></li>
        <li class="my-menu"><a href="#">업적</a></li>
        <li class="my-menu"><a href="#">판매내역</a></li>
        <li class="my-menu"><a href="#">개인전</a></li>
        <li class="my-menu"><a href="#">판매회원 전환</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2 class="text-center">MyPage</h2>
      <hr>
      <h4 class="font-weight-bold">기본정보</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center">
        <li class="my-menu"><a href="userinfo">기본정보</a></li>
      </ul>
      <h4 class="font-weight-bold">구매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center">
        <li class="my-menu active"><a href="order">주문내역</a></li>
        <li class="my-menu"><a href="#section3">관심상품</a></li>
        <li class="my-menu"><a href="#section3">업적</a></li>
      </ul>
      <h4 class="font-weight-bold">판매</h4>
      <ul class="nav flex-column nav-pills nav-stacked text-center">
        <li class="my-menu"><a href="#section3">판매내역</a></li>
        <li class="my-menu"><a href="#section3">개인전</a></li>
        <li class="my-menu"><a href="#section3">판매회원 전환</a></li>
      </ul>
      <br>
    </div>
    <br>
    
    <div class="col-sm-9">
      
      <!-- <div class="well">
        h4>주문내역</h4>
        <p>- 기본적으로 최근 3개월간의 자료가 조회되며 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</p>
        <p>- 주문번호를 클릭하시면 해당 주문엗 대한 상세내역을 확인하실 수있습니다.</p>
        <p>- [세금계산서 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [세금계산서 신청] 클릭</p>
        <p>- [현급영수증 신청] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [현금영수증 신청] 클릭</p>
        <p>- [거래명세서 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [거래명세서 신청] 클릭</p>
        <p>- [카드매출전표 인쇄] 방법 → 해당 [주문번호] 클릭 → 왼쪽 하단 [카드매출전표 인쇄] 클릭</p>
      </div> -->
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well pb-2 text-center">
            <h4>입금대기중</h4>
            <p>3</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well pb-2 text-center">
            <h4>발송준비중</h4>
            <p>3</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well pb-2 text-center">
            <h4>발송진행중</h4>
            <p>3</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well pb-2 text-center">
            <h4>발송완료</h4>
            <p>3</p> 
          </div>
        </div>
      </div>
      
      <hr>
      
      <div class="row">
        <div class="col-sm-12">
            <div class="btn-toolbar mb-2" role="toolbar" aria-label="Toolbar with button groups">
              <div class="btn-group" role="group" aria-label="First group">
                <button type="button" class="btn btn-sm">1주일</button>
                <button type="button" class="btn btn-sm">1개월</button>
                <button type="button" class="btn btn-sm">3개월</button>
                <button type="button" class="btn btn-sm">6개월</button>
              </div>
              <div class="btn-group mr-3 pb-2 ml-4 text-center" role="group" 
                   aria-label="Second group"
                   style="border:solid #77A43E 2px;width:36%;height:120%;">
                <span class="text-left">
                  <input type="text" data-trigger="#from-datepicker" class="text-center"
                         style="outline:0px;border:0px;width:30%;">
                  <span id="from-datepicker" class="">
                    <img src="/img/btn_cal.gif">
                  </span>
                </span>
                <span class="mx-4">~</span>
                <span class="text-right">
                  <input type="text" data-trigger="#to-datepicker" class="text-center"
                         style="outline:0px;border:0px;width:30%;">
                  <span id="to-datepicker" class="mr-1">
                    <img src="/img/btn_cal.gif">
                  </span>
                </span>
              </div>
              <div class="btn-group" role="group" aria-label="Third group" style="width:15%">
                <select class="selectpicker" data-style="btn btn-sm w-50">
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
                <button type="button" class="btn btn-sm ml-4" style="width:158%">조회</button>
              </span>
            </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <table class="table table-hover text-center my-product-table">
          <thead>
            <tr>
              <th class="col-sm-2 text-center">날짜</th>
              <th class="col-sm-6 text-center">상품</th>
              <th class="col-sm-2 text-center">상태</th>
              <th class="col-sm-2 text-center">판매자</th>
            </tr>
          </thead>
          <tbody>
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
      
    </div>
  </div>
</div>
</div>

<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous">
</script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>
<script src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

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

 