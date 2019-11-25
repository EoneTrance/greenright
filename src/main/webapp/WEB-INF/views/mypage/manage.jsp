<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
  href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
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

.btn-group .dropdown-menu .inner li.active
{
  background-color:#82AE46;
  color:#FFFFFF;
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
  
span.productadderm {
    margin-left: 406px;
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
          <h2 id="mypage-title-h2">상품관리</h2>
          <hr>


      <div class="btn-group" role="group" style="width: 15%">
                      <select class=" bigselect custom-select"
                        data-style="btn btn-sm w-180" id="Aselect">
                        <optgroup label="대분류명">
                          <option value=23 selected>전체</option>
                          <option value=19>청소</option>
                          <option value=20>사무</option>
                          <option value=21>유기농</option>
                          <option value=22>가구</option>
                          <option value=18>업사이클링</option>
                        </optgroup>
                      </select>
      
                    </div>
                    <span class="productadderm"><a href="/greenright/product/form">상품 등록</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/greenright/product/upcyclingform">업사이클링 상품 등록</a>
            </span>
          <div class="row">
            <div class="col">


            <table
              class="col-sm-12 table-hover text-center my-table my-product-table my-table-col"
              cellpadding="20">
              <thead>
                <tr>
                  <th class="my-col-1 px-0">
                    <div class="round mx-0">
                      <input type="checkbox" id="checkbox0"
                        class="my-check-all my-checkbox" /> <label
                        for="checkbox0"></label>
                    </div>
                  </th>
                  <th class="text-center my-col-1">상품</th>
                  <th class="text-center my-col-5">상품정보</th>
                  <th class="text-center my-col-2">가격</th>
                  <th class="text-center my-col-2">판매자</th>
                </tr>
              </thead>
              <tbody id="addto" class="my-basket-list">
                <c:forEach items="${products}" var="product"
                  varStatus="status">

                  <tr>
                    <td class=""><div class="round">
                        <input type='checkbox'
                          id="checkbox${status.count}"
                          class='my-check my-checkbox'
                          value="${product.no }" /> <label
                          for='checkbox${status.count}'></label>
                      </div></td>
                    <td class="my-product text-left py-2">
                      <div class="row">
                        <div class="col-sm-3 px-0">
                          <a href="/greenright/product/buydetail?no=${product.no}"><img id="product-photo"
                            src="/upload/product/${product.photos[0].photoPath}"
                            style="weight: 80px; height: 100px; object-fit: cover;"></a>
                        </div>
                      </div>
                    </td>
                    <td class="">
                      <div class="col-sm-9 text-left px-0"
                        style="font-size: 12px">
                        상품명: <span id="product-name"><a href="/greenright/product/detail?no=${product.no}">${product.productName}</a></span><br>
                        상품설명 :<span id="product-name">${product.description}</span>
                      </div>

                    </td>
                    <td class="my-state">${product.price}원</td>
                    <td class="my-seller">${product.seller.member.name }</td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
            <button type="button" id="deletewishlist" class="searchbtn btn-primary btn-md btn-block w-25 mt-2">선택상품 삭제</button>
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
        <h2 style="font-size: 22px;" class="mb-0">Subcribe to our
          Author</h2>
        <span>Get e-mail updates about our latest products and
          special upcycling</span>
      </div>
      <div class="col-md-6 d-flex align-items-center">
        <form action="#" class="subscribe-form">
          <div class="form-group d-flex">
            <input type="text" class="form-control"
              placeholder="Enter email address"> <input
              type="submit" value="Subscribe" class="submit px-3">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>




<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script
  src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
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
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>

<script>

if(${loginUser.memberClass} == 2) {
  $("#infoMenu").append(
      "<li class='my-menu'><a href='sellerinfo'>판매자 정보</a></li>");
  $("#sellerMenu").append(
      "<li class='my-menu active'><a href='manage'>판매물품 관리</a></li>"
    + "<li class='my-menu'><a href='sale'>판매내역</a></li>"
    + "<li class='my-menu'><a href='exhibition'>개인전 관리</a></li>");
} else {
  $("#sellerMenu").append(
      "<li class='my-menu'><a href='conversion'>판매회원 전환</a></li>");
}

$("#deletewishlist").click(function(){
  var k = $(".my-check").length;
  for(let i =1; i<k+1; i++) {
    if(($("#checkbox"+i+"")).is(":checked")==true){
      let thisNode = $('#checkbox'+i).parent().parent().parent();
      $.post("/greenright/json/Product/deleteProduct",{
        "productNo":($("#checkbox"+i+"")).val()
      }, function(data){
        swal("상품이 삭제되었습니다!")
        thisNode.remove();
      }); 
    }
  }
})
</script>

<script>
    
$(document).on("change","#Aselect",function() {
  var allData ={"no" : $('#Aselect option:selected').val() }
  $.ajax({
    url : "/greenright/json/Product/search",
    type : "GET",
    dataType : "json",
    data : allData,
    success : function(data) {
       var list = data.result;
       var tableTag ="";
       for(var i = 0 ; i < list.length; i++) {
         tableTag += "<tr><td><div class='round'>"
         tableTag += "<input type='checkbox' id='checkbox"+(i+1)+"'  class='my-check my-checkbox' value="+list[i].no+" />" 
         tableTag += "<label for='checkbox"+(i+1)+"'></label></div></td>"
         tableTag += "<td class='my-product text-left py-2'><div class='row'><div class='col-sm-3 px-0'>" 
         tableTag += "<img id='product-photo' src='/upload/product/"+list[i].photos[0].photoPath+"' style='weight: 80px; height: 100px; object-fit: cover;'>"
         tableTag += "</div></div></td><td >"
         tableTag += "<div class='col-sm-9 text-left px-0'  style='font-size: 12px'>"
         tableTag += "상품명: <span id='product-name'>"+list[i].productName+"</span><br>"
         tableTag += "상품설명 :<span id='product-name'>"+list[i].description+"</span></div>"
         tableTag += "</td><td class='my-state'>"+list[i].price+"원</td><td class='my-seller'>"
         tableTag += ""+list[i].seller.member.name+"</td></tr>"
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
           var list = data.result;
           var tableTag ="";
           for(var i = 0 ; i < list.length; i++) {
            tableTag += "<tr><td><div class='round'>"
            tableTag += "<input type='checkbox' id='checkbox"+(i+1)+"'  class='my-check my-checkbox' value="+list[i].no+" />" 
            tableTag += "<label for='checkbox"+(i+1)+"'></label></div></td>"
            tableTag += "<td class='my-product text-left py-2'><div class='row'><div class='col-sm-3 px-0'>" 
            tableTag += "<img id='product-photo' src='/upload/product/"+list[i].photos[0].photoPath+"' style='weight: 80px; height: 100px; object-fit: cover;'>"
            tableTag += "</div></div></td><td >"
            tableTag += "<div class='col-sm-9 text-left px-0'  style='font-size: 12px'>"
            tableTag += "상품명: <span id='product-name'>"+list[i].productName+"</span><br>"
            tableTag += "상품설명 :<span id='product-name'>"+list[i].description+"</span></div>"
            tableTag += "</td><td class='my-state'>"+list[i].price+"원</td><td class='my-seller'>"
            tableTag += ""+list[i].seller.member.name+"</td></tr>"
           };
          $("#addto").html(tableTag);  
        }
      });
    })
    
    
    function numberFormat(inputNumber) {
   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
    
</script>
<script>
"use strict"
$(function() {
  $('.my-check-all').click(function() {
    $('.my-check').prop('checked', this.checked);
  });
});
</script>
