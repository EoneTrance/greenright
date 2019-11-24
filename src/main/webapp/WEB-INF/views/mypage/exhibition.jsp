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
  
  .custom-control {
    padding-left:2.6rem;
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
  
  /* .box_wrap {
  display:inline-block;
  text-align: center;
  margin:0 15px;
} */

  .mainProduct {
    box-sizing: content-box;
    border: 10px solid transparent;
    border-image:url(/images/mainProduct.jpeg);
    -webkit-border-image: url(/images/mainProduct.jpeg);
    -moz-border-image: url(/images/mainProduct.jpeg);
    border-image-slice: 100;
    border-image-repeat: round;
    border-image-width: 30px;
  }
  
  /* input[type='radio'] {
        -webkit-appearance: none;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        outline: none;
        box-shadow: box-shadow: 0 0 0 2px #f00;
        border: 1px solid gray;
    }

    input[type='radio']:before {
        content: '';
        display: block;
        width: 60%;
        height: 60%;
        margin: 20% auto;
        border-radius: 50%;
        box-shadow: box-shadow: 0 0 0 2px #f00;
    }

 input[type="radio"]:checked:before {
        background: green;
        box-shadow: box-shadow: 0 0 0 2px #f00;
        
    }
    
    input[type="radio"]:checked {
      border-color:green;
      box-shadow: box-shadow: 0 0 0 2px #f00;
    }

    .my-radio-input {
        margin-right: 80px;
        margin-left: 20px;
        font-weight: normal;
    }

    .my-radio-label label {
        margin-bottom: 20px !important;
    }

    .my-radio-div {
        margin-bottom: 40px;
    } */
  
</style>

<div id="mypage-title-h1">
<h1>MY EXHIBITION</h1>
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
        <li class="my-menu"><a href="sale">판매관리</a></li>
        <li class="my-menu active"><a href="exhibition">개인전 관리</a></li>
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
        <li class="my-menu"><a href="wishlist">관심상품</a></li>
      </ul>
      <h4 class="font-weight-bold ml-2">판매</h4>
      <ul id="sellerMenu" class="nav flex-column nav-pills nav-stacked text-center">
      </ul>
      <br>
    </div>
    <br>
    
    <div class="my-col-80">
      <h2 id="mypage-title-h2">개인전 관리</h2>
      <hr>
      <div class="mainProduct">
        <div class="row">
          <div class="col">
            <table class="col-sm-12 table-hover text-center my-table my-product-table my-table-col" cellpadding="5" cellspacing="1">
            <thead>
              <tr style="background-color:RGBA(130,174,70,0.1);">
                <th class="text-center my-col-2">등록일</th>
                <th class="text-center my-col-8">대표작품</th>
                <th class="text-center my-col-2">좋아요</th>
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
                                        상품명: <span id="product-name">바지</span><br>
                                        옵션: <span id="product-option">30</span><hr class="my-1">
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
                                    <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
                <td class="my-date">2</td>
              </tr>
            </tbody>
            </table>
          </div>
        </div>
      </div>
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
              <th class="text-center my-col-2">등록일</th>
              <th class="text-center my-col-6">작품</th>
              <th class="text-center my-col-2">좋아요</th>
              <th class="text-center my-col-2">대표작 설정</th>
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
                                      상품명: <span id="product-name">바지</span><br>
                                      옵션: <span id="product-option">30</span><hr class="my-1">
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
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
              <td class="my-like">1</td>
              <td class="my-mainState">
                <div class="custom-control custom-switch">
                  <input type="radio" class="custom-control-input" id="customSwitch1" name="customRadio">
                  <label class="custom-control-label" for="customSwitch1"></label>
                </div>
              </td>
            </tr>
            <tr>
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
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
              <td class="my-like">1</td>
              <td class="my-mainState">
                <div class="custom-control custom-switch">
                  <input type="radio" class="custom-control-input" id="customSwitch2" name="customRadio" checked>
                  <label class="custom-control-label" for="customSwitch2"></label>
                </div>
              </td>
            </tr><tr>
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
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
              <td class="my-like">1</td>
              <td class="my-mainState">
                <div class="custom-control custom-switch">
                  <input type="radio" class="custom-control-input" id="customSwitch3" name="customRadio">
                  <label class="custom-control-label" for="customSwitch3"></label>
                </div>
              </td>
            </tr><tr>
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
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
              <td class="my-like">1</td>
              <td class="my-mainState">
                <div class="custom-control custom-switch">
                  <input type="radio" class="custom-control-input" id="customSwitch4" name="customRadio">
                  <label class="custom-control-label" for="customSwitch4"></label>
                </div>
              </td>
            </tr><tr>
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
                                  <input type="text" name="name" class="input-md" maxlength="8"  style="width:20%;" value='${loginUser.name}'/>
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
              <td class="my-like">1</td>
              <td class="my-mainState">
                <div class="custom-control custom-switch">
                  <input type="radio" class="custom-control-input" id="customSwitch5" name="customRadio">
                  <label class="custom-control-label" for="customSwitch5"></label>
                </div>
              </td>
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
    + "<li class='my-menu active'><a href='exhibition'>개인전 관리</a></li>");
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

 