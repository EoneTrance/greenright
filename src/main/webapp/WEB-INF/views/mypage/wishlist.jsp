<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel='stylesheet' href='/css/bootstrap.min.css'>
<link rel="stylesheet" href="/css/fontawesome/css/all.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">
<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/yjcss.css">
    <!--------------------------------------------------------------------------------------->
    <div class="hero-wrap hero-bread" style="background-image: url('../../images/main.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="/greenright/main">Home</a></span><span>Wishlist</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <section class="ftco-section ftco-cart">
  <div class="container">
    <div class="row">
      <div class="col-md-12 ftco-animate">
        <div class="cart-list">
          <table class="table">
            <thead class="thead-primary">
              <tr class="text-center">
                <th>
                  <div class="yj-check yj-etransall">
                    <input type="checkbox" id="checkAll"/>
                    <label for="checkAll"></label>
                  </div>
                </th>
                <th>Product List</th>
                <th>Name<br>Description</th>
                <th>Price</th>
                <th>Option</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
            <tbody id="my-wishbody">
              <c:forEach items="${wishLists}" var="wishList">
              <tr class="text-center" data-no="${wishList.no}">
                <td class="product-check">
                   <div class="yj-check yj-etrans">
                    <input type="checkbox" id="1+${wishList.no}" class="my-checkbox" value="${wishList.no}"/>
                    <label for="1+${wishList.no}"></label>
                  </div>
                </td>
                
                <td class="image-prod"><img class="img-fluid" src='/upload/product/${wishList.productPhoto.photoPath}' style="width:120px; height:120px;"></td>
                <td class="product-name">
                  <h3>${wishList.product.productName}</h3>
                  <p>${wishList.product.description}</p>
                </td>
                <td class="price">
                  <span style="font-weight: 500; font-size: 14px;">${wishList.product.price}</span>￦
                </td>
                <td>${wishList.optionName}<p>${wishList.optionPrice}￦</p></td>
                <td class="quantity">
                  <div class="input-group mb-3">
                    <button type="button" class="quantity-left-minus"><i class="fas fa-minus"></i></button>
                    <input type="text" readonly  name="quantity" class="form-control input-number" data-price-option="${wishList.optionPrice}"
                           data-price-product="${wishList.product.price}" value="${wishList.quantity}" min="1" max="100">
                    <button type="button" class="quantity-right-plus"><i class="fas fa-plus"></i></button>
                  </div>
                </td>
                <td class="total">
                <span class="price-total">${(wishList.optionPrice+wishList.product.price)*wishList.quantity}</span>￦<br>
                <c:choose>
                  <c:when test="${(wishList.optionPrice+wishList.product.price)*wishList.quantity > 50000}">
                    <span class="delevery-tf">무료배송</span>
                  </c:when>
                  <c:otherwise>
                    <span class="delevery-tf">배송비 2,500￦</span>
                  </c:otherwise>
                </c:choose>
                </td>
                <td class="product-reomove">
                   <a href="#" class="my-product-remove"><i class="fas fa-times"></i></a>
                </td>
              </tr>
              </c:forEach>
              <tr class="text-center">
                <td colspan="5" style="padding: 10px 10px;"></td>
                <td colspan="1" style="padding: 10px 10px;">
                  <font style="font-size: 12pt;">상품총액</font><br>
                  <font style="font-size: 12pt;">총 수량</font><br>
                  <font style="font-size: 12pt;">배송비</font><br>
                  <font style="font-size: 20pt;">주문총액</font>
                </td>
                <td colspan="2" style="padding: 10px 10px;">
                  <font style="font-size: 12pt;"><span id="tempTotal">0</span>원</font><br>
                  <font style="font-size: 12pt;"><span id="product-countall">0</span>개</font><br>
                  <font style="font-size: 12pt;"><span id="delivery-fee">0</span>원</font><br>
                  <font style="font-size: 24pt; font-weight: bold;"><span id="real-total">0</span>원</font>
                </td>
              </tr>
            </tbody> 
          </table>
        </div>
      </div>
      <div style="width: 1140px;"><p style="text-align: right;"><a href="checkout.html" class="btn btn-primary py-3 px-4" style="width: 214px;">주문하기</a></p></div>
    </div>
  </div>
</section>
<!------------------------------------------------------------------------------------------------->
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
    <!--------------------------------------------footer------------------------------------------>
    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row">
            <div class="mouse">
              <a href="#" class="mouse-icon"><div class="mouse-wheel"><i class="fas fa-arrow-up"></i></div></a>
            </div>
        </div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">GreenRight</h2>
              <p>Try eco-friendly products.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="fab fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Community</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
                  <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                    <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                    <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                    <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                    <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                  </ul>
                  <ul class="list-unstyled">
                    <li><a href="#" class="py-2 d-block">FAQs</a></li>
                    <li><a href="#" class="py-2 d-block">Contact</a></li>
                  </ul>
                </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Have a Questions?</h2>
                <div class="block-23 mb-3">
                  <ul>
                    <li><span class="icon icon-map-marker"></span><span class="text">459, Gangnam-daero, Seocho-gu, Seoul, Republic of Korea</span></li>
                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">070 2132 6485</span></a></li>
                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">GreenRight@bitcamp.com</span></a></li>
                  </ul>
                </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Web is made by <a href="https://greenright.com" target="_blank">GreenRight</a></p>
          </div>
        </div>
      </div>
    </footer>
    <!--------------------------------------------footer-end--------------------------------------->
<!-- loader -->
 <div id="ftco-loader" class="show fullscreen">
<svg class="circular" width="48px" height="48px">
<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg> 
</div>
<script src='/js/jquery.min.js'></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src='/js/bootstrap-datepicker.js'></script>
<script src="/js/popper.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>
<script>
var totalPrice=0;
var totalQuantity=0;
var feeCount=0;
var realtotal=0;
$(document).ready( function() {
  $('#checkAll').click( function() {
    if($(this).is(":checked")){
      $('.my-checkbox').prop('checked', true);
    }else{
      $('.my-checkbox').prop('checked', false);
    }
  });
  $("#checkAll").trigger("click");
  //feeCount = ${fn:length(wishLists)}
  <c:forEach items="${wishLists}" var="wishList">
    totalPrice+=${(wishList.product.price+wishList.optionPrice)*wishList.quantity}
    totalQuantity+=${wishList.quantity}
    <c:if test="${(wishList.product.price+wishList.optionPrice)*wishList.quantity<50000}">
    feeCount++;
    </c:if>
  </c:forEach>
  realtotal=feeCount*2500+totalPrice;
  $('#tempTotal').text(totalPrice);
  $('#product-countall').text(totalQuantity);
  $('#delivery-fee').text(2500*feeCount);
  $('#real-total').text(realtotal);
});

$(".my-checkbox").change(function(){
  var temp = $(this).val(); // 장바구니번호
  if($(this).is(":checked")){
    
  }else{
    $('#checkAll').prop('checked', false);
  }
});
$('#my-wishbody').on('click','.my-product-remove', (e) => {
  e.preventDefault();
  var rvBtn = $(e.currentTarget).parent().parent();
  var wishlistNo = rvBtn.attr('data-no');
  var param = "wishlistNo="+wishlistNo;
  if (confirm("선택하신 상품을 삭제하시겠습니까?") == true){
    $.ajax({
      url : "wishlist/delete",
      type: 'get',
      cache: false,
      data: param,
      dataType: "text",
      success : function(result){
        rvBtn.remove();
      },
      error : function(request, status, error ) {
        alert(실패);
      }
    });
  }else{
    return false;
  }
});
$('#my-wishbody').on('click','.quantity-right-plus', (e) => {
  var target = $(e.currentTarget).prev();
  var price = $(e.currentTarget).parent().parent().next().children().first();
  var deleveryTF = $(e.currentTarget).parent().parent().next().find('span.delevery-tf');
  var currentNum = target.val();
  if(currentNum<1000){
    var priceOption = target.attr('data-price-option');
    var priceProduct = target.attr('data-price-product');
    totalPrice+=priceOption*1+priceProduct*1;
    totalQuantity++;
    price.text(price.text()*1+priceOption*1+priceProduct*1);
    if(price.text()*1 == 0){
      deleveryTF.text("0￦");
    } else if (price.text()*1 >= 50000){
      deleveryTF.text("무료배송");
    } else {
      deleveryTF.text("배송비 2,500￦");
    }
    $('#tempTotal').text(totalPrice);
    $('#product-countall').text(totalQuantity);
    target.val(currentNum*1+1);
  }
  var totalDeleveryFee = document.querySelectorAll(".delevery-tf");
  var tempFeeCount=0;
  for(var i=0;i<totalDeleveryFee.length;i++){
    if(totalDeleveryFee[i].innerHTML.startsWith('배송비')){
      console.log(totalDeleveryFee[i].innerHTML);
      tempFeeCount++;
    }
  }
  $('#delivery-fee').text(tempFeeCount*2500);
  var tempA = $('#tempTotal').text();
  var tempB = $('#delivery-fee').text();
  $('#real-total').text(tempA*1+tempB*1);
});
$('#my-wishbody').on('click','.quantity-left-minus', (e) => {
  var target = $(e.currentTarget).next(); 
  var price = $(e.currentTarget).parent().parent().next().children().first();
  var deleveryTF = $(e.currentTarget).parent().parent().next().find('span.delevery-tf');
  var currentNum = target.val();
  if(currentNum >0 ){
    var priceOption = target.attr('data-price-option');
    var priceProduct = target.attr('data-price-product');
    totalPrice-=priceOption*1+priceProduct*1;
    totalQuantity--;
    var tempPrice = price.text();
    price.text(tempPrice*1-priceOption-priceProduct);
    if(tempPrice*1-priceOption-priceProduct == 0){
      deleveryTF.text("0￦");
    } else if (tempPrice*1-priceOption-priceProduct <50000){
      deleveryTF.text("배송비 2,500￦");
    } else {
      
    }
    $('#tempTotal').text(totalPrice);
    $('#product-countall').text(totalQuantity);
    target.val(currentNum*1-1);
  }
  var totalDeleveryFee = document.querySelectorAll(".delevery-tf");
  var tempFeeCount=0;
  for(var i=0;i<totalDeleveryFee.length;i++){
    if(totalDeleveryFee[i].innerHTML.startsWith('배송비')){
      console.log(totalDeleveryFee[i].innerHTML);
      tempFeeCount++;
    }
  }
  $('#delivery-fee').text(tempFeeCount*2500);
  var tempA = $('#tempTotal').text();
  var tempB = $('#delivery-fee').text();
  $('#real-total').text(tempA*1+tempB*1);
});
</script>