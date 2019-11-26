<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
.payment-sidenav {
  height: 100%;
}
</style>

<div id="mypage-title-h1">
<h1>BASKET</h1>
</div>

<section class="ftco-section py-5">
<div id="mainContent">

<div class="container-fluid">
<h2 id="mypage-title-h2">장바구니</h2>
<hr>
  <div class="row">
    <div class="col-sm-9">
      
      <div class="row">
        <div class="col">
          <table class="col-sm-12 table-hover text-center my-table my-product-table my-table-col" cellpadding="20" cellspacing="1">
          <thead>
            <tr>
              <th class="my-col-1 px-0">
                <div class="round mx-0">
                  <input type="checkbox" id="checkbox0" class="my-check-all my-checkbox"/>
                  <label for="checkbox0"></label>
                </div>
              </th>
              <th class="text-center my-col-6">상품</th>
              <th class="text-center my-col-1">수량</th>
              <th class="text-center my-col-2">가격</th>
              <th class="text-center my-col-2">판매자</th>
            </tr>
          </thead>

          <tbody class="my-basket-list"> <!-- 상품 테이블 -->
          </tbody>
          </table>
        </div>
      </div>
      <button type="button" id=my-delete class="searchbtn btn-primary btn-md btn-block w-25 mt-2">선택상품 삭제</button>
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
    <div class="col-sm-3 sidenav payment-sidenav hidden-xs px-0">
      <div style="background-color:#82AE46;padding:5px 5px;">
      <h2 class="text-center mt-2 font-weight-bold" style="color:white;">전체 합계</h2>
      </div>
      <table class="col-sm-12 table-hover text-center my-table">
        <tbody>
          <tr>
            <th class="text-left my-col-6 pt-4 pl-3 font-weight-normal"
                style="color:black;background-color:RGBA(130,174,70,0);">상품가격</th>
            <td class="text-right pt-4 pr-3"
                style="color:black;"><span class="my-priceSum" style="font-size:150%;color:#82AE46;font-weight:bold;">0</span> 원</td>
          </tr>
          <tr>
            <th class="text-left my-col-6 pb-4 pl-3 font-weight-normal"
                style="color:black;background-color:RGBA(130,174,70,0);">배송비</th>
            <td class="text-right pb-3 pr-3"
                style="color:black;"><span class="my-deliveryChargeSum" style="font-size:150%;color:#82AE46;font-weight:bold;">0</span> 원</td>
          </tr>
        </tbody>
      </table>
      <div style="background-color:RGBA(130,174,70,0.1);">
        <hr class="mt-0 mb-4">
        <h5 class="text-left font-weight-bold pl-2"
            style="color:black;">예상 결제금액</h5>
        <p class="text-right font-weight-bold mb-2 pr-2"
            style="color:black;font-size:150%;"><span class="my-sum" style="font-size:150%;color:#82AE46;">0</span> 원</p>
        <hr class="mb-2 mt-0">
      </div>
      <form id='my-basketForm' action='../order/form' method='post' style='display:none'>
        <input id='my-orderListJson' name='orderListJson'>
      </form>
      <button id="my-buyBtn" class="searchbtn btn-lg btn-primary btn-inline-block mr-1 w-100" type="button">구매하기</button>
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
"use strict"
$(function(){
  
  let orderList = new Array();
  
  $.ajax({
    type: "GET",
    url: "../json/basket/list",
    dataType: "json",
    async: false,
    success: function(basketList) {
      if (basketList.state == "success") {
        for (var i = 0; i < basketList.result.length; i++) {
          var basket = basketList.result[i];
          $(".my-basket-list").append(
              "<tr class='my-basket-tr'>"
           +  "<td class='my-check-td'>"
           +  "  <div class='round'>"
           +  "  <input type='checkbox' id='checkbox" + (i+1) + "' class='my-check my-checkbox'/>"
           +  "  <label for='checkbox" + (i+1) + "'></label>"
           +  "  </div>"
           +  "</td>"
           +  "<td class='my-product text-left py-2'>"
           +  "  <div class='row'>"
           +  "    <div class='col-sm-3 px-0'>"
           +  "      <img id='product-photo' src='/upload/product/" + basket.productOptionItem.productOption.product.photos[0].photoPath + "'>"
           +  "    </div>"
           +  "    <div class='col-sm-9 px-0' style='font-size:12px'>"
           +  "      상품번호: <span id='product-id'>" + basket.productOptionItem.productOption.product.no + "</span><br>"
           +  "      상품명: <span id='product-name'>" + basket.productOptionItem.productOption.product.productName + "</span><br>"
           +  "      옵션: <span id='product-option'>" + basket.productOptionItem.productOption.optionName + " (" + basket.productOptionItem.optionItemMatter + ")</span><hr class='my-1'>"
           +  "      가격: <span id='product-price' style='font-size:120%;font-weight:bold;'>" + numberFormat(basket.productOptionItem.productOption.product.price + basket.productOptionItem.optionsPrice) + "</span> 원"
           +  "    </div>"
           +  "  </div>"
           +  "</td>"
           +  "<td class='my-quantity-td'>" + basket.quantity + "</td>"
           +  "<td class='my-price-td'><span class='my-price-span' style='font-size:120%;font-weight:bold;color:#82AE46;'>" + numberFormat((basket.productOptionItem.productOption.product.price + basket.productOptionItem.optionsPrice) * basket.quantity) + "</span> 원</td>"
           +  "<td class='my-seller-td'>" + basket.productOptionItem.productOption.product.seller.member.name + "</td>"
           +  "<td class='my-optionItemNo-td' style='display:none;'>" + basket.optionItemNo + "</td>"
           +  "<td class='my-realPrice-td' style='display:none;'><span class='my-realPrice-span'>" + ((basket.productOptionItem.productOption.product.price + basket.productOptionItem.optionsPrice) * basket.quantity) + "</span> 원</td>"
           +  "</tr>"
          );
        }
      } else if (basketList.state == "failure") {
      }
    },
    error: function(basketList) {
    }
  });
  
  $(document).on("change", ".my-checkbox", function(e) {
    orderList = new Array();
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
              .children(".my-realPrice-td")
              .children(".my-realPrice-span").html());
        i++;
      }
    }
    $(".my-priceSum").html(numberFormat(sumPrice));
    $(".my-deliveryChargeSum").html(numberFormat(2500 * i));
    $(".my-sum").html(numberFormat(sumPrice + (2500 * i)));
    e.stopImmediatePropagation();
  });
  
  $("#my-buyBtn").click(function(e) {
    var form = $("#my-basketForm");
    
    var jsonArray = "[";
    for (var i = 0; i < orderList.length; i++){
      jsonArray += JSON.stringify(orderList[i]);
      if (i != orderList.length - 1){
        jsonArray += ",";
      }
      
    }
    jsonArray += "]";
    form.children("#my-orderListJson").val(jsonArray);
    
    form.submit();
  });
  
});
</script>

<script>
"use strict"
$(function() {
  
  $('.my-check-all').click(function() {
    $('.my-check').prop('checked', this.checked);
  });
  
  $('#my-delete').click(function() {
    var checks = $(".my-check");
    var sumPrice = 0;
    var optionItemNoList = new Array();
    var i = 0;
      
    for (var check of checks) {
      if ($(check).prop("checked") == true) {
        i++;
        optionItemNoList.push($(check).parents(".my-basket-tr").children(".my-optionItemNo-td").html());
      }
    }
    
    if (i <= 0) {
      swal("삭제할 상품을 선택해 주세요");
      return;
    }
    
    $.ajax({
      type: "GET",
      url: "delete",
      data: "&optionItemNoList=" + optionItemNoList,
      async: true,
      success: function() {
        swal("삭제하였습니다.").then((value) => {
          window.location.href = "list";
          }
        );
      },
      error: function() {
        swal("장바구니 상품 삭제중 오류 발생.");
      }
    });
    
  });
  
});
</script>
