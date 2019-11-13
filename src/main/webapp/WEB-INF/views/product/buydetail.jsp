<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
li {
  list-style: none
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  width: 450px;
}

li {
  margin: 0 0 0 0;
  padding: 0 0 0 0;
  border: 0;
  float: left;
}

img.img-fluid {
  margin-bottom: 14px;
}

select.form-control {
  width: 400px;
}

section.ftco-section {
  padding: 30px 0;
}

li.useruse {
  display: inline;
  padding: 10px 17px;
  margin-top: 12px;
  margin-left: 20px;
  margin-right: 20px;
}

ul.widthsizer {
  width: 1110px
}

.btn.btn-primary {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}

textarea {
  resize: none;
}

div.biglr {
  width: 100%;
  height: 500Wpx;
}

div.leftphoto {
  width: 60%;
  float: left;
  box-sizing: border-box;
  line-height: 500px;
}

div.rightcontents {
  width: 40%;
  float: right;
  box-sizing: border-box;
}

.tcontents {
  margin-top: 19px;
}

div.stars {
  width: 270px;
  display: inline-block;
}

input.star {
  display: none;
}

label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before {
  color: #F62;
}

label.star:hover {
  transform: rotate(-15deg) scale(1.3);
}

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}

.qnamodal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.qnamodal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.qnaclose {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.qnaclose:hover, .qnaclose:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
input.titleholder {
    width: 100%;
}

textarea.contentholder {
    height: 200px;
    width: 100%;
}
div.qnabody{
width:97%
}
button#submitbut {
    float: right;
}
.anqfooter {
    margin-bottom: 10px;
}
details {
    text-align: left;
}

</style>
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
  href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
  rel="stylesheet">
<!-- 별점 표시를 위한 css -->
<link rel="stylesheet"
  href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">

<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">

<link rel="stylesheet" href="/css/aos.css">

<link rel="stylesheet" href="/css/ionicons.min.css">

<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">


<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/style.css">
<div class="py-1 bg-primary">
  <div class="container">
    <div
      class="row no-gutters d-flex align-items-start align-items-center px-md-0">
      <div class="col-lg-12 d-block">
        <div class="row d-flex">
          <div class="col-md pr-4 d-flex topper align-items-center">
            <div
              class="icon mr-2 d-flex justify-content-center align-items-center">
              <span class="icon-phone2"></span>
            </div>
            <span class="text">+ 1235 2355 98</span>
          </div>
          <div class="col-md pr-4 d-flex topper align-items-center">
            <div
              class="icon mr-2 d-flex justify-content-center align-items-center">
              <span class="icon-paper-plane"></span>
            </div>
            <span class="text">youremail@email.com</span>
          </div>
          <div
            class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
            <span class="text">3-5 Business days delivery &amp;
              Free Returns</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<nav
  class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
  id="ftco-navbar">
  <div class="container">
    <a class="navbar-brand" href="index.html">Vegefoods</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
      data-target="#ftco-nav" aria-controls="ftco-nav"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="oi oi-menu"></span> Menu
    </button>

    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
        <li class="nav-item active dropdown"><a
          class="nav-link dropdown-toggle" href="#" id="dropdown04"
          data-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false">Shop</a>
          <div class="dropdown-menu" aria-labelledby="dropdown04">
            <a class="dropdown-item" href="shop.html">Shop</a> <a
              class="dropdown-item" href="wishlist.html">Wishlist</a> <a
              class="dropdown-item" href="product-single.html">Single
              Product</a> <a class="dropdown-item" href="cart.html">Cart</a>
            <a class="dropdown-item" href="checkout.html">Checkout</a>
          </div></li>
        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
        <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
        <li class="nav-item"><a href="contact.html"
          class="nav-link">Contact</a></li>
        <li class="nav-item cta cta-colored"><a href="cart.html"
          class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

      </ul>
    </div>
  </div>
</nav>
<!-- END nav -->

<div class="hero-wrap hero-bread"
  style="background-image: url('/images/bg_1.jpg');">
  <div class="container">
    <div
      class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <p class="breadcrumbs">
          <span class="mr-2"><a href="index.html">Home</a></span> <span
            class="mr-2"><a href="index.html">Product</a></span> <span>Product
            Single</span>
        </p>
        <h1 class="mb-0 bread">Product Single</h1>
      </div>
    </div>
  </div>
</div>

<section class="ftco-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 mb-5 ftco-animate">
        <img src='/upload/product/${productPhoto.photos[0].photoPath}'
          id="clickchange" class="img-fluid" alt="Colorlib Template"
          style="width: 450px; height: 450px; object-fit: cover;">
        <ul>
          <c:forEach items="${productPhoto.photos}" var="photo">
            <li><img src='/upload/product/${photo.photoPath}'
              id="/upload/product/${photo.photoPath}"
              class="changesaver"
              style="width: 50px; height: 50px; object-fit: cover;">
            </li>
          </c:forEach>
        </ul>
      </div>
      <div class="col-lg-6 product-details pl-md-5 ftco-animate">
        <h3>${product.productName}</h3>
        <input type="text" value="${product.no}" id="productNo" hidden>
        <div class="rating d-flex">
          <p class="text-left mr-4">
            <img src="" alt="" class="ratingimg"
              style="width: 243px; height: 50px; object-fit: cover;">
          </p>
        </div>
        <p class="price">
          <span>${product.price}원</span>
        </p>
        <p>${product.description}</p>
        <div class="row mt-4">
          <div class="col-md-6">
            <div class="form-group d-flex">
              <div class="select-wrap">
                <div class="icon">
                  <span class="ion-ios-arrow-down"></span>
                </div>
                <c:forEach items="${product.options}" var="option">
                  <select name="" id="" class="form-control">
                    <c:forEach items="${option.optionItem}" var="item">
                      <option value="${item.no}">옵션명:&nbsp;${item.optionItemMatter}&nbsp;|&nbsp;가격:&nbsp;+${item.optionsPrice}원</option>
                    </c:forEach>
                  </select>

                </c:forEach>
              </div>
            </div>
          </div>
          <div class="w-100"></div>
          <div class="input-group col-md-6 d-flex mb-3">
            <span class="input-group-btn mr-2">
              <button type="button" class="quantity-left-minus btn"
                data-type="minus" data-field="">
                <i class="ion-ios-remove"></i>
              </button>
            </span> <input type="text" id="quantity" name="quantity"
              class="form-control input-number" value="1" min="1"
              max="100"> <span class="input-group-btn ml-2">
              <button type="button" class="quantity-right-plus btn"
                data-type="plus" data-field="">
                <i class="ion-ios-add"></i>
              </button>
            </span>
          </div>
          <div class="w-100"></div>
          <div class="col-md-12"></div>
        </div>
        <p>
          <a href="cart.html" class="btn btn-black py-3 px-5">Add to
            Cart</a>
        </p>
      </div>
    </div>
  </div>
</section>

<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <span class="subheading">상품</span>
        <h2 class="mb-4">같이 보면 좋은 상품</h2>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <input type="text" value="${product.no}" class="numberfinder"
        hidden />
      <c:forEach items="${productLiST}" var="production">
        <c:if test="${production.no ne product.no}">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              <a href="#" class="img-prod"><img class="img-fluid"
                src="/upload/product/${production.photos[0].photoPath}"
                alt="Colorlib Template"
                style="width: 208px; height: 208px; object-fit: cover;">
                <span class="status">30%</span> </a>
              <div class="overlay"></div>
              <div class="text py-3 pb-4 px-3 text-center">
                <h3>
                  <a href="#">"${production.productName}"</a>
                </h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price">
                      <span class="mr-2 price-dc">"${production.price}"</span><span
                        class="price-sale">"${production.price-5000}"</span>
                    </p>
                  </div>
                </div>
                <div class="bottom-area d-flex px-3">
                  <div class="m-auto d-flex">
                    <a href="#"
                      class="add-to-cart d-flex justify-content-center align-items-center text-center">
                      <span><i class="ion-ios-menu"></i></span>
                    </a> <a href="#"
                      class="buy-now d-flex justify-content-center align-items-center mx-1">
                      <span><i class="ion-ios-cart"></i></span>
                    </a> <a href="#"
                      class="heart d-flex justify-content-center align-items-center ">
                      <span><i class="ion-ios-heart"></i></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </c:if>
        <c:if test="${product.no eq product.no}">

        </c:if>
      </c:forEach>
    </div>
  </div>
</section>
<!-- 상품평 상품문의 상세설명 리뷰 -->

<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div
        class="col-md-12 heading-section text-center ftco-animate bordermaker">
        <ul class="widthsizer">
          <li class="useruse" id="detaildesc"><h4>상세설명</h4></li>
          <li class="useruse" id="producttest"><h4>상품평</h4></li>
          <li class="useruse" id="question"><h4>상품문의</h4></li>
          <li class="useruse" id="review"><h4>상품평작성</h4></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!--  상품평 누를시 상품평 나오고 딴거 누를시 딴거 나오게 할부분  -->
<Section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div
        class="col-md-12 heading-section text-center ftco-animate userusechanage">
        <div class="productscore">상세설명</div>
        <br>
        <hr>
        <div class="productrating">상품평</div>
        <br>
        <hr>
        <div class="productquestion">
          상품문의 <br> <br>
          
          <button class='qnaAdd'>상품문의작성</button>
        <br>
       <%--  <c:forEach items="productQuestionList" var="question">
          <c:if test="${question.secretFlag eq 0}">
        <details class="nosecret">
          <summary>답변상태 : yes 제목 : ${question.title} &nbsp; 작성자 ${question.member.id}
                작성일${question.createdDate}  
          </summary>
       <p> 내용 : ${question.contents}</p>
        </details>        
        </c:if>
        <c:if test="${question.secretFlag ne 0}">
        <details class="secret">
          <summary>비밀글입니다 ㅁ^^ㅁ  
          </summary>
            <p>내용 : ${question.contents}</p>
        </details>
        </c:if>
        </c:forEach> --%>
        </div>
        <hr>
        <div class="review">상품평작성</div>

      </div>
    </div>
  </div>
</Section>

<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
  <div class="container py-4">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-6">
        <h2 style="font-size: 22px;" class="mb-0">Subcribe to our
          Newsletter</h2>
        <span>Get e-mail updates about our latest shops and
          special offers</span>
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
<footer class="ftco-footer ftco-section">
  <div class="container">
    <div class="row">
      <div class="mouse">
        <a href="#" class="mouse-icon"> </a>
        <div class="mouse-wheel">
          <span class="ion-ios-arrow-up"></span>
        </div>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Vegefoods</h2>
          <p>Far far away, behind the word mountains, far from the
            countries Vokalia and Consonantia.</p>
          <ul
            class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
            <li class="ftco-animate"><a href="#"><span
                class="icon-twitter"></span></a></li>
            <li class="ftco-animate"><a href="#"><span
                class="icon-facebook"></span></a></li>
            <li class="ftco-animate"><a href="#"><span
                class="icon-instagram"></span></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4 ml-md-5">
          <h2 class="ftco-heading-2">Menu</h2>
          <ul class="list-unstyled">
            <li><a href="#" class="py-2 d-block">Shop</a></li>
            <li><a href="#" class="py-2 d-block">About</a></li>
            <li><a href="#" class="py-2 d-block">Journal</a></li>
            <li><a href="#" class="py-2 d-block">Contact Us</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-4">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Help</h2>
          <div class="d-flex">
            <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
              <li><a href="#" class="py-2 d-block">Shipping
                  Information</a></li>
              <li><a href="#" class="py-2 d-block">Returns
                  &amp; Exchange</a></li>
              <li><a href="#" class="py-2 d-block">Terms &amp;
                  Conditions</a></li>
              <li><a href="#" class="py-2 d-block">Privacy
                  Policy</a></li>
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
              <li><span class="icon icon-map-marker"></span><span
                class="text">203 Fake St. Mountain View, San
                  Francisco, California, USA</span></li>
              <li><a href="#"><span class="icon icon-phone"></span><span
                  class="text">+2 392 3929 210</span></a></li>
              <li><a href="#"><span class="icon icon-envelope"></span><span
                  class="text">info@yourdomain.com</span></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">

        <p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright &copy;
          <script>
                      document.write(new Date().getFullYear());
                    </script>
          All rights reserved | This template is made with <i
            class="icon-heart color-danger" aria-hidden="true"></i> by <a
            href="https://colorlib.com" target="_blank">Colorlib</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
      </div>
    </div>
  </div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
  <svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
      stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none"
      stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>

<!--  사진 클릭시 뜨는 리뷰 모달 만들기용  -->
<div class="modal bd-example-modal-xl" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">리뷰</h5>
        <button type="button" class="close" data-dismiss="modal"
          aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="biglr">
          <div class="leftphoto">
            <img class="img-fluid modalimgget" src="/images/bg_1.jpg"
              alt=""
              style="width: 630px; height: 533px; object-fit: cover;">
          </div>
          <div class="rightcontents">
            <div class="memberinfo"></div>
            <div class="tcontents"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary"
          data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- 상품 q&a 작성시 버튼 클릭시 보이는 모달 작성용  -->
<div id="myModal" class="qnamodal">
  <!-- Modal content -->
  <div class="qnamodal-content">
    <div class ="qnaheader">
    <span class="qnaclose">&times;</span>
    </div>
    <br>
    <div class ="qnabody">
    <input type="text"  class ="titleholder"name="qnatitle" placeholder="제목을 입력해주세요 ">
    <br>
    <textarea  class="contentholder" name="qnacontents" placeholder="내용을 입력해주세요" maxlength=1000 style="resize:none;"></textarea>
    <br>
    <input type="checkbox" name="private" class="priv" value=0 > 비공개 
    <button id="submitbut" >작성</button>
    </div>
    <div class ="anqfooter">
    
    </div>
  </div>

</div>

<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/jquery.animateNumber.min.js"></script>
<script src="/js/bootstrap-datepicker.js"></script>
<script src="/js/scrollax.min.js"></script>
<script
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/js/google-map.js"></script>
<script src="/js/main.js"></script>
<script
  src="/node_modules/blueimp-file-upload/js/vendor/jquery.ui.widget.js"></script>
<script
  src="/node_modules/blueimp-file-upload/js/jquery.iframe-transport.js"></script>
<script src="/node_modules/blueimp-file-upload/js/jquery.fileupload.js"></script>
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<script src="/node_modules/chart.js/dist/Chart.min.js"></script>
<script>
$(document).ready(function(){
  $.get("/greenright/json/Review/getRatingAVer",{
    "no" : $("#productNo").val()
  },function(a){
    console.log("평균구하기"+ a.result);
    ratingAver = a.result;
    if(ratingAver<= 1){
      $(".ratingimg").attr("src","/images/0.PNG")
    }else if(ratingAver<= 1.5){
      $(".ratingimg").attr("src","/images/1.PNG")
    }else if(ratingAver<=2.5){
      $(".ratingimg").attr("src","/images/2.PNG")
    }else if(ratingAver<=3.5){
      $(".ratingimg").attr("src","/images/3.PNG")
    }else if(ratingAver<=4.5){
      $(".ratingimg").attr("src","/images/4.PNG")
    }else if(ratingAver<=5.0){
      $(".ratingimg").attr("src","/images/5.PNG")
    }else{
      $(".ratingimg").attr("src","/images/0.PNG")
    }
    
  })
   let ratingNum = 1;
              let ratingSum = 1;
              let ratingAver= 0;
              let Num1 =0;
              let Num2 =0;
              let Num3 =0;
              let Num4 =0;
              let Num5 =0;
              $.get(
                      "/greenright/json/Review/list",
                      {
                        "no" : $("#productNo").val()
                      },
                      function(k) {
                        console.log(k);
                        var a = "";
                        if (k.result != null) {
                          ratingNum = k.result.length ;
                          a += "<div>"
                          for (var i = 0; i < k.result.length; i++) {
                            ratingSum += k.result[i].rating;
                            if(k.result[i].rating==1){
                              Num1 ++;
                            }else if(k.result[i].rating==2){
                              Num2 ++;
                            }else if(k.result[i].rating==3){
                              Num3 ++;
                            }else if(k.result[i].rating==4){
                              Num4 ++;
                            }else if(k.result[i].rating==5){
                              Num5 ++;
                            }
                            if (k.result[i].photos.photoPath != null) {
                              a += "상품평<br>"                              
                              a += "<img class='img-fluid modal_maker' id="+k.result[i].no+" src='/upload/review/"+k.result[i].photos.photoPath+"'  alt='' style='width:100px; height:100px; object-fit:cover;'> "
                            }
                          }
                          a += "</div>"
                          a += "<div>"
                          for (var i = 0; i < k.result.length; i++) {
                            a += "<details><summary>제목:" + k.result[i].title + "&nbsp;&nbsp;&nbsp;"
                            a += "아이디:" + k.result[i].member.id + "&nbsp;&nbsp;&nbsp;"
                            a += "평점:" + k.result[i].rating + "점 &nbsp;&nbsp;&nbsp;"
                            a += "작성일" + k.result[i].createdDate +"</summary>"
                            a += "내용:" + k.result[i].contents + "</details>"
                          }
                          a += "</div>"
                        } else {
                          a += "상품평이 하나도없습니다";
                        }
                        $(".productrating").html(a);

                    

                        $(document).on("click",".modal_maker",function(){
                           let reviewNo = $(this).attr('id');
                           let imagesrc = $(this).attr("src");
                           $(".modalimgget").attr("src",imagesrc);
                           $.get("/greenright/json/Review/get", {
                             "no" : reviewNo
                           }, function(a) {
                             let html1  = "";
                             html1 += "<img src='/images/member.PNG' style='width:30px; height:30px; object-fit:cover;'>"
                             html1 += "평점 :"+a.result.rating+"점<br>" ;
                             html1 += "아이디: "+a.result.member.id+""; 
                             html1 += "작성일:"+a.result.createdDate+"";
                                 $(".memberinfo").html(html1);
                             let html2 = "";
                             html2 += "제목:"+a.result.title+"<br>"
                             html2 += "내용:"+a.result.contents+"";
                             $(".tcontents").html(html2);
                           })
                           
                           
                           
                           $('div.modal').modal();
                        })
                        
                      })
  
                      
             /*  $(document).on("click",".qnaAdd",function(){
              $('div.modal2').modal();
              }) */
                      
  
              var a = "";
              a += "<div class='container' style='width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;'>"
              a += "<div style='width: inherit;'>"
              a += "<div class='input-group' style='width: 1000px; margin: auto;'>"
              a += "<input type='text' id='title' style='width :700px' placeholder='제목을입력하세요'/>"
              a += "<div class='stars'>"
              a += "<input class='star star-5' id='star-5' type='radio' name='rating' value=5 />"
              a += "<label class='star star-5' for='star-5'></label>"
              a += "<input class='star star-4' id='star-4' type='radio' name='rating' value=4 />"
              a += "<label class='star star-4' for='star-4'></label>"
              a += "<input class='star star-3' id='star-3' type='radio' name='rating' value=3 />"
              a += "<label class='star star-3' for='star-3'></label>"
              a += "<input class='star star-2' id='star-2' type='radio' name='rating' value=2 />"
              a += "<label class='star star-2' for='star-2'></label>"
              a += "<input class='star star-1' id='star-1' type='radio' name='rating' value=1 />"
              a += "<label class='star star-1' for='star-1'></label>"
              a += "</div>"  
              a += "<br><TEXTAREA  id ='contents' cols='90' rows='10' style='resize:none;'  placeholder='내용을 입력하세요.'/>"
              a += "<button id='review-add-btn' class='btn btn-primary'>등록</button>"
              a += "<input type='file' id='filePath' name='reviewPhoto'>"
              a += "<div id='images-div'></div>"
              a += "</div></div><br><br>";
              $(".review").html(a);
              
              let ratingch  = 5 ;
              $(document).on("change",".star",function(){
                ratingch = $(this).val();                
              })
                
            
              $("#review-add-btn").click(function() {
                let productNo = $("#productNo").val();
                let memberNo = 1;
                let rating = ratingch
                let title = $("#title").val();
                let contents = $("#contents").val();
                let ReviewPhoto = $("#filePath").val();
                $.post("review/check", {
                  "productNo" : productNo,
                  "memberNo" : memberNo
                }, function(a) {
                  if (a == 0) {
                    $.ajax({
                      url : "/greenright/json/Review/add",
                      type : "post",
                      data : {
                        "productNo" : productNo,
                        "memberNo" : memberNo,
                        "rating" : rating,
                        "title" : title,
                        "contents" : contents,
                      },
                      success : function(result) {
                        swal("상품평 등록완료")
                      },
                    });
                  } else {
                    swal("이미 상품평을 작성하셨습니다.")
                  }
                })

              })

              $('#filePath').fileupload(
                  {
                    url : "/greenright/json/Review/add",
                    dataType : 'json', // 서버가 보낸 응답이 JSON임을 지정하기
                    previewMaxWidth : 100, // 미리보기 이미지 너비
                    previewMaxHeight : 100, // 미리보기 이미지 높이 
                    previewCrop : true,
                    processalways : function(e, data) {
                      var imagesDiv = $('#images-div');
                      imagesDiv.html("");
                      for (var i = 0; i < data.files.length; i++) {
                        try {
                          if (data.files[i].preview.toDataURL) {
                            console.log(data.files[i].preview.toDataURL());
                            $("<img>").attr('src',
                                data.files[i].preview.toDataURL()).css('width',
                                '100px').appendTo(imagesDiv);
                          }
                        } catch (err) {
                        }
                      }
                      $('#upload-btn').unbind("click");
                      $('#upload-btn').click(function() {
                        data.submit();
                      });
                    },
                    add : function(e, data) {
                      $("#review-add-btn").unbind();
                      $("#review-add-btn").off();
                      $('#review-add-btn').click(function() {

                        $.post("review/check", {
                          "productNo" : $("#productNo").val(),
                          "memberNo" : 1
                        }, function(a) {
                          if (a == 0) {
                            data.submit(); // submit()을 호출하면, 서버에 데이터를 보내기 전에 submit 이벤트가 발생한다.
                            swal("상품평 등록완료2")
                          } else {
                            swal("이미 상품평을 작성하셨습니다.")
                          }
                        })

                      });
                    },
                    submit : function(e, data) { // submit 이벤트가 발생했을 때 호출됨. 서버에 전송하기 전에 호출됨.
                      data.formData = {
                        "productNo" : $("#productNo").val(),
                        "memberNo" : 1,
                        "rating" : ratingch,
                        "title" : $("#title").val(),
                        "contents" : $("#contents").val()
                      }
                    }
                  });
              
              
       
              // When the user clicks on the button, open the modal 
              $(document).on("click",".qnaAdd",function(){
                document.getElementById('myModal').style.display = "block";
                
              })
       
              // When the user clicks on <span> (x), close the modal
              $(document).on("click",".qnaclose",function(){
                document.getElementById('myModal').style.display = "none";
                
              })
       
              // When the user clicks anywhere outside of the modal, close it
              $(document).on("click",window,function(){
                  if (event.target == document.getElementById('myModal') ) {
                    document.getElementById('myModal').style.display = "none";
                  }
              })
              
              $(document).on("click","#submitbut",function(){
                let titl = $(".titleholder").val()
                let contents = $(".contentholder").val()
                let pri = $(".priv").val()
                let productNo = $("#productNo").val();
                let memberNo = 1;
                if(titl == "" || contents ==""){
                  swal("제목 혹은 내용을 입력하세요")
                }else {
                  $.post("/greenright/json/ProductQuestion/add", {
                    "productNo" : productNo,
                    "memberNo" : memberNo,
                    "secretFlag" : pri,
                    "title" : titl,
                    "contents" : contents
                  }, function(a) {
                    console.log(a);
                  })
                document.getElementById('myModal').style.display = "none";
                }
              })
              
              
              $(document).on("change",".priv",function(){
                if($(this).is(":checked")){
                    $(this).attr("value",1)
                }else{
                    $(this).attr("value",0);
                }
            });
  
  })  
  
</script>

<script>
  function reviewCheck(memberNo, productNo) {
    $.post("review/check", {
      "productNo" : productNo,
      "memberNo" : memberNo
    }, function(data) {
    })
  }
</script>
<script>
  
</script>
<script>
  $(document).on("mouseenter", ".changesaver", function() {
    var a = $(this).attr("id");
    $("#clickchange").attr("src", a);

  })
</script>

<script>
  $(document).ready(function() {

    var quantitiy = 0;
    $('.quantity-right-plus').click(function(e) {

      // Stop acting like a button
      e.preventDefault();
      // Get the field name
      var quantity = parseInt($('#quantity').val());

      // If is not undefined

      $('#quantity').val(quantity + 1);

      // Increment

    });

    $('.quantity-left-minus').click(function(e) {
      // Stop acting like a button
      e.preventDefault();
      // Get the field name
      var quantity = parseInt($('#quantity').val());

      // If is not undefined

      // Increment
      if (quantity > 0) {
        $('#quantity').val(quantity - 1);
      }
    });

  });
</script>

