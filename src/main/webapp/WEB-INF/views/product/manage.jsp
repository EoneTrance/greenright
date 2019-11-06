<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<style>
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
      color:#77A43E;
    }
    
    div.dropdown div.dropdown-menu div.inner ul li.active a,
    .btn-group button:focus
    {
      background-color:#77A43E !important;
      color:#FFFFFF !important;
    }
    
    button:hover {
      background-color:RGBA(119,164,62,0.5);
    }
    
    table.my-join-table tbody tr:hover {
      background-color:RGBA(119,164,62,0.1);
    }
    
     table.my-product-table tbody tr:hover {
      background-color:RGBA(119,164,62,0.1);
    }
    
    .dropdown-menu .inner li a:hover
    {
      background-color:RGBA(119,164,62,0.5);
    }
    
    tbody th {
      color:#77A43E;
    }
    
    .my-menu {
      font-weight:bold;
    }
    
    .notChange, .notChange:focus {
      border: none !important;
      background-color: rgba( 255, 255, 255, 0) !important;
      outline: none !important;
      width: 100% !important;
    }
    
    a{
     color :#77A43E;
    }
    #memberInfoForm input, #memberInfoForm button {
      width:49%;
    }
    
    .btn-group button, .btn-group .dropdown-menu .inner li.active a,
    .btn-group button:focus
    {
      background-color:#77A43E;
      color:#FFFFFF;
    }
    
  </style>
<meta charset="UTF-8">
<title>물품관리</title>
</head>
<body>
<% session.setAttribute("SellerNo", 1); %>
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
          <li class="my-menu active"><a href="userinfo">기본정보</a></li>
          <li class="my-menu"><a href="order">주문내역</a></li>
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
        <h4 class="font-weight-bold text-center">기본정보</h4>
        <ul class="nav flex-column nav-pills nav-stacked">
          <li class="my-menu active"><a href="userinfo">기본정보</a></li>
        </ul>
        <h4 class="font-weight-bold text-center">구매</h4>
        <ul class="nav flex-column nav-pills nav-stacked">
          <li class="my-menu"><a href="order">주문내역</a></li>
          <li class="my-menu"><a href="#section3">관심상품</a></li>
          <li class="my-menu"><a href="#section3">업적</a></li>
        </ul>
        <h4 class="font-weight-bold text-center">판매</h4>
        <ul class="nav flex-column nav-pills nav-stacked">
          <li class="my-menu"><a href="#section3">판매내역</a></li>
          <li class="my-menu"><a href="#section3">개인전</a></li>
          <li class="my-menu"><a href="#section3">판매회원 전환</a></li>
        </ul>
        <br>
      </div>
      <br>
      
      <div class="col-sm-9">
        
        <div class="row">
        <div class="col-sm-12">
            <div class="btn-toolbar mb-2" role="toolbar" aria-label="Toolbar with button groups">
              <div class="btn-group" role="group" aria-label="Third group" style="width:15%">
                <select class="selectpicker" data-style="btn btn-sm w-50">
                  <optgroup label="대분류명">
                    <option disable hidden>주문상태</option>
                    <option selected>전체</option>
                    <option>청소</option>
                    <option>사무</option>
                    <option>유기농</option>
                    <option>가구</option>
                    <option>업사이클링</option>
                  </optgroup>
                </select>
              </div>
              <span class="btn-group" role="group">
                <button type="button" class="btn btn-sm ml-4" style="width:158%">조회</button>
              </span>
            </div>
        </div>
      </div>
        
        <div id=memberInfoForm>
          <h2>mypage->product->manage로 바꿔야할듯</h2>
          <div>
                <table class="table table-hover text-center my-product-table">
                        <thead>
                        <tr>
                            <th class="col-sm-2 text-center">상품번호</th>
                            <th class="col-sm-2 text-center">상품이름</th>
                            <th class="col-sm-2 text-center">대분류명</th>
                            <th class="col-sm-2 text-center">소분류명</th>
                            <th class="col-sm-2 text-center">등록일</th>
                            <th class="col-sm-2 text-center">판매자</th>
                            <th class="col-sm-2 text-center">가격</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${products}" var="product">
                        <tr>
                        
                            <td>${product.no}</td>
                            <td><a href='detail?no=${product.no}'>${product.productName}</a></td>
                            <td>${product.group.category.categoryName}</td>
                            <td>${product.group.groupName}</td>
                            <td>${product.registeredDate}</td>
                            <td>${product.seller.member.name}</td>
                            <td>${product.price}</td>
                        
                        </tr>
                        </c:forEach> 
                        </tbody>
                      </table>
    </div>
    </div>
    </div>
    </div>
          </div>
  </div>
</body>
</html>

