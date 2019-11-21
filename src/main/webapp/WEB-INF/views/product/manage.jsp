<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/css/greenright.css">
<style>
/* On small screens, set height to 'auto' for the grid */
@media screen and (max-width: 767px) {
  .row.content {
    height: auto;
  }
}
.col-sm-3.sidenav.hidden-xs {
    height: 605px;
}
#myPageContent {
  width: 960px;
  padding-top: 10px;
  padding-bottom: 10px;
  margin: auto auto;
  height: 1830px;
  
}
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
  height: 550px
}

/* Set gray background color and 100% height */
.sidenav {
  height: 100%;
  border: solid #77A43E 10px;
  background-color: RGBA(119, 164, 62, 0.1);
}

div.well {
  border: dashed #77A43E 5px;
  background-color: RGBA(119, 164, 62, 0.1);
}

/*       #597B2F */
div.well h4 {
  font-weight: bold;
}

div.well p {
  font-size: 300%;
  color: #77A43E;
}

ul.nav-pills li.active a, ul.nav-pills li.active a:hover {
  background-color: #77A43E;
  color: #FFFFFF;
}

.nav-pills li a:hover {
  background-color: RGBA(119, 164, 62, 0.5);
}

.nav-pills li a {
  color: #77A43E;
}

div.dropdown div.dropdown-menu div.inner ul li.active a, .btn-group button:focus
  {
  background-color: #77A43E !important;
  color: #FFFFFF !important;
}

button:hover {
  background-color: RGBA(119, 164, 62, 0.5);
}

table.my-join-table tbody tr:hover {
  background-color: RGBA(119, 164, 62, 0.1);
}

table.my-product-table tbody tr:hover {
  background-color: RGBA(119, 164, 62, 0.1);
}

.dropdown-menu .inner li a:hover {
  background-color: RGBA(119, 164, 62, 0.5);
}

tbody th {
  color: #77A43E;
}

.my-menu {
  font-weight: bold;
}

.notChange, .notChange:focus {
  border: none !important;
  background-color: rgba(255, 255, 255, 0) !important;
  outline: none !important;
  width: 100% !important;
}

a {
  color: #77A43E;
}

#memberInfoForm input, #memberInfoForm button {
  width: 49%;
}

.btn-group button, .btn-group .dropdown-menu .inner li.active a,
  .btn-group button:focus {
  background-color: #77A43E;
  color: #FFFFFF;
}
.btn-group>.btn:first-child {
    margin-left: 0 !important;
}
select#Aselect {
    height: 30px;
    font-size: medium;
}
select#subSelect {
    height: 30px;
    font-size: medium;
}

}
td {
    font-weight: 500;
}
div#forright {
    padding: 3.75px 17.5px 3.75px 7.5px;
}
div#forright {
    width: 83%!important;
}
</style>
<meta charset="UTF-8">
<title>물품관리</title>
  <% session.setAttribute("SellerNo", 1); %>
  <div id="myPageContent">
    <nav class="navbar navbar-inverse visible-xs">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle"
            data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span> <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="" >MyPage</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="my-menu active"><a href="/greenright/mypage/userinfo">기본정보</a></li>
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
            <li class="my-menu"><a href="/greenright/mypage/userinfo">기본정보</a></li>
          </ul>
          <h4 class="font-weight-bold text-center">구매</h4>
          <ul class="nav flex-column nav-pills nav-stacked">
            <li class="my-menu"><a href="/greenright/mypage/order">주문내역</a></li>
            <li class="my-menu"><a href="#section3">관심상품</a></li>
            <li class="my-menu"><a href="#section3">업적</a></li>
          </ul>
          <h4 class="font-weight-bold text-center">판매</h4>
          <ul class="nav flex-column nav-pills nav-stacked">
            <li class="my-menu"><a href="#section3">판매내역</a></li>
            <li class="my-menu"><a href="#section3">개인전</a></li>
            <li class="my-menu"><a href="#section3">판매회원 전환</a></li>
          </ul>
           <h4 class="font-weight-bold text-center">상품</h4>
          <ul class="nav flex-column nav-pills nav-stacked">
            <li class="my-menu active"><a href="/greenright/product/manage">상품관리</a></li>
          </ul>
          <br>
        </div>
        <br>

        <div class="col-sm-9">

          <div class="row">
            <div class="col-sm-12">
              <div class="btn-toolbar mb-2" role="toolbar"
                style="width:100%;">
                <div class="btn-group" role="group"
                 style="width: 15%">
                  <select class="selectpicker bigselect custom-select"
                    data-style="btn btn-sm w-180" id ="Aselect">
                    <optgroup label="대분류명">
                      <option value= 23 selected>전체</option>
                      <option value= 19 >청소</option>
                      <option value= 20 >사무</option>
                      <option value= 21 >유기농</option>
                      <option value= 22>가구</option>
                      <option value= 18>업사이클링</option>
                    </optgroup>
                  </select>
                  
                </div>
                  &nbsp;&nbsp;&nbsp;
              <!--   <div class="btn-group" role="group"
                  aria-label="Third group" style="width: 15%">
                  <select class="selectpicker subselect custom-select"
                    data-style="btn btn-sm w-50" id="subSelect">
                    <optgroup label="소분류명">
                      <option selected value=23 >전체</option>
                    </optgroup>
                  </select>
                </div> -->
                <div id = forright class="active" style= "text-align:right;float:right;width: 66%;">
                <a href="/greenright/product/form" id="formlink" >상품 등록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/greenright/product/upcyclingform" id ="formlink">업사이클링상품등록</a>
              </div>
              </div>
            </div>
          </div>

          <div id=memberInfoForm>
            <div>
              <table
                class="col-sm-12 table-hover my-table my-table-row text-center" cellpadding="20" >
                <thead>
                  <tr>
                    <th class="my-col-2 text-center">상품번호</th>
                    <th class="my-col-2 text-center">상품이름</th>
                    <th class="my-col-2 text-center">대분류명</th>
                    <th class="my-col-2 text-center">소분류명</th>
                    <th class="my-col-2 text-center">등록일</th>
                    <th class="my-col-2 text-center">가격</th>
                  </tr>
                </thead>
                <tbody id ="addto">
                  <c:forEach items="${products}" var="product">

                    <tr >
                      <td>${product.no}</td>
                      <td><a href='detail?no=${product.no}'>${product.productName}</a></td>
                      <td>${product.group.category.categoryName}</td>
                      <td>${product.group.groupName}</td>
                      <td>${product.registeredDate}</td>
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
    
$(document).on("change","#Aselect",function() {
  var allData ={"no" : $('#Aselect option:selected').val() }
  $.ajax({
    url : "/greenright/json/Product/search",
    type : "GET",
    dataType : "json",
    data : allData,
    success : function(data) {
      console.log(data);
       var list = data.result;
       var tableTag ="";
       for(var i = 0 ; i < list.length; i++) {
        tableTag += "<tr><td>"+list[i].no+"</td>"
        tableTag += "<td><a href='detail?no="+list[i].no+"'>"+list[i].productName+"</a></td>"
        tableTag += "<td>" +list[i].group.category.categoryName+"</td>"
        tableTag += "<td>" +list[i].group.groupName+"</td>" 
        tableTag += "<td>" +list[i].registeredDate+"</td>"
        tableTag += "<td>" +list[i].price + "</td></tr>";
   };
      $("#addto").html(tableTag);  
    }
  });
})
    
    $(document).on("change","#subSelect",function() {
      var allData ={"no" : $('#subSelect option:selected').val() }
      $.ajax({
        url : "/greenright/json/Product/search",
        type : "GET",
        dataType : "json",
        data : allData,
        success : function(data) {
          console.log(data);
           var list = data.result;
           var tableTag ="";
           for(var i = 0 ; i < list.length; i++) {
            tableTag += "<tr><td>"+list[i].no+"</td>"
            tableTag += "<td><a href='detail?no="+list[i].no+"'>"+list[i].productName+"</a></td>"
            tableTag += "<td>"+list[i].group.category.categoryName+"</td>"
            tableTag += "<td>"+list[i].group.groupName+"</td>" 
            tableTag += "<td>"+list[i].registeredDate+"</td>"
            tableTag += "<td>"+list[i].price+"</td></tr>";
          };
          $("#addto").html(tableTag);  
        }
      });
    })
    
    
    function numberFormat(inputNumber) {
   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
    
</script>

