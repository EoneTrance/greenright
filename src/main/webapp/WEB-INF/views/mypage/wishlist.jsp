<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
  href="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.css">
<link rel="stylesheet"
  href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="/css/greenright.css">

<style>
div.well {
  border: dashed #82AE46 5px;
  background-color: RGBA(130, 174, 70, 0.1);
}
/* #597B2F */
div.well h4 {
  font-weight: bold;
}
div.well p {
  font-size: 300%;
  color: #82AE46;
}
.btn-group .dropdown-menu .inner li.active {
  background-color: #82AE46;
  color: #FFFFFF;
}
/* .btn-group button:hover {
    background-color:RGBA(130,174,70,0.5);
  } */
.dropdown .dropdown-menu div.inner ul.inner li a:hover {
  background-color: RGBA(130, 174, 70, 0.5);
}
.dropdown .dropdown-menu div.inner ul.inner li a.selected {
  background-color: #82AE46;
}
.filter-option-inner {
  text-align: center;
}
table.my-product-table td {
  color: black;
}
table.my-table td.my-product {
  padding-left: 1.5rem;
  padding-right: 1.5rem;
}
table.my-table-col td.my-seller {
  border-right: none;
}
.round {
  position: relative;
}
.round label {
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 50%;
  cursor: pointer;
  position: absolute;
  height: 28px;
  width: 28px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.round label:after {
  border: 2px solid #fff;
  border-top: none;
  border-right: none;
  content: "";
  position: absolute;
  height: 6px;
  width: 12px;
  top: 8px;
  left: 7px;
  transform: rotate(-45deg);
  opacity: 0;
}
.round input[type="checkbox"] {
  visibility: hidden;
}
.round input[type="checkbox"]:checked+label {
  background-color: #82AE46;
  border-color: #82AE46;
}
.round input[type="checkbox"]:checked+label:after {
  opacity: 1;
}
button#deletewishlist {
  width: 65px;
  margin-top: 7px;
}
</style>

<div id="mypage-title-h1">
  <h1>WISHLIST</h1>
</div>

<section class="ftco-section py-5">
  <div id="myPageContent">

    <div class="container-fluid">
      <div class="row">
        <div class="my-col-20 sidenav mypage-sidenav hidden-xs px-1">
          <h2 class="text-center mt-2 font-weight-bold">MyPage</h2>
          <hr>
          <h4 class="font-weight-bold ml-2">회원정보</h4>
          <ul id="infoMenu"
            class="nav flex-column nav-pills nav-stacked text-center mb-4">
            <li class="my-menu"><a href="userinfo">기본정보</a></li>
          </ul>
          <h4 class="font-weight-bold ml-2">구매</h4>
          <ul
            class="nav flex-column nav-pills nav-stacked text-center mb-4">
            <li class="my-menu"><a href="order">구매내역</a></li>
            <li class="my-menu active"><a href="#section3">관심상품</a></li>
            <li class="my-menu"><a href="#section3">업적</a></li>
          </ul>
          <h4 class="font-weight-bold ml-2">판매</h4>
          <ul id="sellerMenu"
            class="nav flex-column nav-pills nav-stacked text-center">
          </ul>
          <br>
        </div>
        <br>

        <div class="my-col-80">
          <h2 id="mypage-title-h2">관심상품</h2>
          <hr>


          <div class="row">
            <div class="col">
              <table
                class="col-sm-12 table-hover text-center my-table my-product-table my-table-col"
                cellpadding="20" cellspacing="1">
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

                <tbody class="my-basket-list">

                  <c:forEach items="${productList}" var="product"
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
                              style="weight: 80px; height: 100px; object-fit: cover;">
                            </a>
                          </div>
                        </div>
                      </td>
                      <td class="">
                        <div class="col-sm-9 text-left px-0"
                          style="font-size: 12px">
                          상품명: <span id="product-name">${product.productName}</span><br>
                          상품설명 :<span id="product-name">${product.description}</span>
                        </div>

                      </td>
                      <td class="my-state">${product.price}원</td>
                      <td class="my-seller">${product.seller.member.name }</td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
              <button id="deletewishlist" class="btn btn-primary"
                style="border-radius: 2px 2px 2px 2px;">삭제</button>
            //끝
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
<script
  src="/node_modules/@chenfengyuan/datepicker/dist/datepicker.min.js"></script>
<script
  src="/node_modules/@chenfengyuan/datepicker/i18n/datepicker.ko-KR.js"></script>
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>

<script>
"use strict"
$(function(){
  
  $(document).on("change", ".my-checkbox", function(e) {
    let orderList = new Array();
    var checks = $(".my-check");
    var sumPrice = 0;
    var i = 0;
    for (var check of checks) {
      if ($(check).prop("checked") == true) {
        var optionItemNumber = $(check).parents(".my-basket-tr").children(".my-optionItemNo-td").html();
        var basketQuantity = $(check).parents(".my-basket-tr").children(".my-quantity-td").html();
        var jsonData = 
        {optionItemNo:optionItemNumber,
        quantity:basketQuantity};
        
        orderList[i] = jsonData;
        
        sumPrice +=
          parseInt(
              $(check)
              .parents(".my-basket-tr")
              .children(".my-price-td")
              .children(".my-price-span").html());
        i++;
      }
    }
    $(".my-priceSum").html(sumPrice);
    $(".my-deliveryChargeSum").html(2500 * i);
    $(".my-sum").html(sumPrice + (2500 * i));
    e.stopImmediatePropagation();
  });
  
  
});
</script>
<script>
$("#deletewishlist").click(function(){
  var k = $(".my-check").length;
  for(let i =1; i<k+1; i++) {
    if(($("#checkbox"+i+"")).is(":checked")==true){
      let thisNode = $('#checkbox'+i).parent().parent().parent();
      $.post("/greenright/json/Like/decreaseLike",{
        "productNo":($("#checkbox"+i+"")).val()
      }, function(data){
       swal("wishlist 에서 삭제되었습니다!")
        thisNode.remove();
      }); 
    }
  }
  
  
})
</script>
<script>
"use strict"
$(function() {
  $('.my-check-all').click(function() {
    $('.my-check').prop('checked', this.checked);
  });
  
});
</script>
