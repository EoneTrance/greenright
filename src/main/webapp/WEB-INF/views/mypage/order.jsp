<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.css">
  
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
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
        <li class="my-menu"><a href="#">기본정보</a></li>
        <li class="active my-menu"><a href="#">주문내역</a></li>
        <li class="my-menu"><a href="#">관심상품</a></li>
        <li class="my-menu"><a href="#">업적</a></li>
        <li class="my-menu"><a href="#">판매내역</a></li>
        <li class="my-menu"><a href="#">개인전</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>MyPage</h2>
      
      <ul class="nav flex-column nav-pills nav-stacked">
        <li class="my-menu"><a href="#section1">기본정보</a></li>
        <li class="active my-menu"><a href="#section2">주문내역</a></li>
        <li class="my-menu"><a href="#section3">관심상품</a></li>
        <li class="my-menu"><a href="#section3">업적</a></li>
        <li class="my-menu"><a href="#section3">판매내역</a></li>
        <li class="my-menu"><a href="#section3">개인전</a></li>
      </ul><br>
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
          <div class="well" style="text-align:center">
            <h4>입금대기중</h4>
            <p>3</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well" style="text-align:center">
            <h4>발송준비중</h4>
            <p>1</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well" style="text-align:center">
            <h4>발송진행중</h4>
            <p>2</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well" style="text-align:center">
            <h4>발송완료</h4>
            <p>1</p> 
          </div>
        </div>
      </div>
      
      <hr>
      
      <div class="row">
        <div class="col-sm-12">
            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
              <div class="btn-group mb-2" role="group" aria-label="First group">
                <button type="button" class="btn btn-secondary btn-xs">1주일</button>
                <button type="button" class="btn btn-secondary btn-xs">1개월</button>
                <button type="button" class="btn btn-secondary btn-xs">3개월</button>
                <button type="button" class="btn btn-secondary btn-xs mr-2">6개월</button>
              </div>
              
              <div class="btn-group my-1 border border-secondary" role="group" aria-label="Second group">
                  <input type="text" data-trigger="#from-datepicker" class="text-center mr-0"
                         style="width:30%;outline:0px;border:0px;">
                  <span id="from-datepicker">
                  <img src="/img/btn_cal.gif"></span>
                  <span class="mx-4">~</span>
                  <input type="text" data-trigger="#to-datepicker" class="text-center"
                         style="width:30%;outline:0px;border:0px;">
                  <span id="to-datepicker">
                  <img src="/img/btn_cal.gif"></span>
              </div>
              
              <div class="btn-group mb-2" role="group" aria-label="Third group">
                <select class="selectpicker">
                  <option>Mustard</option>
                  <option>Ketchup</option>
                  <option>Relish</option>
                </select>
                <button type="button" class="btn btn-secondary btn-xs">조회</button>
              </div>
            </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
      </div>
      
      
      
    </div>
  </div>
</div>
</div>

<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>

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

 