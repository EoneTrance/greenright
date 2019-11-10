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
textarea{
resize:none;}
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
        <input type="text" value="${product.no}" id ="productNo" hidden>
        <div class="rating d-flex">
          <p class="text-left mr-4">
            <a href="#" class="mr-2">5.0</a> <a href="#"><span
              class="ion-ios-star-outline"></span></a> <a href="#"><span
              class="ion-ios-star-outline"></span></a> <a href="#"><span
              class="ion-ios-star-outline"></span></a> <a href="#"><span
              class="ion-ios-star-outline"></span></a> <a href="#"><span
              class="ion-ios-star-outline"></span></a>
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
          <li class="useruse" id="producttest"><h4>
             상품평
            </h4></li>
          <li class="useruse" id="detaildesc"><h4>
             상세설명
            </h4></li>
          <li class="useruse" id="question"><h4>
             상품문의
            </h4></li>
          <li class="useruse" id="review"><h4>
           상품평작성
            </h4></li>
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
      
        <div class="productscore">
        평점이 몇점인지 볼수있는 부분 
        </div>
      
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
<script>
$(document).on("click",".useruse",function(){
  if($(this).attr("id")=="producttest"){
    var a="";
    a += "<div class='review'>"
    a += "상품평 볼수있는 부분"
    a += "</div>";
   
    $(".userusechanage").html(a);
  }
  if($(this).attr("id")=="detaildesc"){
    var a="";
    a += "<div class='review'>"
    a += "상서설명 볼수있는부분"
    a += "</div>";
   
    $(".userusechanage").html(a);
  }
  if($(this).attr("id")=="question"){
    var a="";
    a += "<div class='review'>"
    a += "상품문의 하는부분"
    a += "</div>";
   
    $(".userusechanage").html(a);
  }
  if($(this).attr("id")=="review"){
    var a="";
    a += "<div class='container' style='width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;'>"
    a += "<div style='width: inherit;'>"
    a += "<div class='input-group' style='width: 1000px; margin: auto;'>"
    a += "<input type='text' id='title' style='width :700px' placeholder='제목을입력하세요'/>"
    a += "<select id='rating' style='width:101px;'><option value=1>★☆☆☆☆</option><option value=2>★★☆☆☆</option><option value=3>★★★☆☆</option><option value=4>★★★★☆</option><option value=5>★★★★★</option></select>"
    a += "<br><TEXTAREA  id ='contents' cols='90' rows='10' style='resize:none;'  placeholder='내용을 입력하세요.'/>"
    a += "<button id='review-add-btn' class='btn btn-primary'>등록</button>"
    a += "<input type='file' id='filePath'>"
    a += "<img src='' id='view_file' alt='' style='width: 150px; height: 150px; object-fit: cover;' >"
    a += "</div></div><br><br>";
    $(".userusechanage").html(a);
  }
  
})
</script>
<script>
$(document).on("click","#review-add-btn",function(){
  console.log("why?")
  let productNo = $("#productNo").val();
  let memberNo = 1;
  let rating = $("#rating option:selected").val();
  let title = $("#title").val();
  let contents = $("#contents").val();
  let ReviewPhoto = $("#filePath").val();
  console.log(ReviewPhoto)
  $.post("/greenright/json/Review/add",{
    "productNo" :productNo,
    "memberNo" :memberNo,
    "rating" : rating,
    "title" : title,
    "contents" :contents,
    "ReviewPhoto" :ReviewPhoto
    }, function(result){
   console.log(result);
    })
})
</script>
<script>
$(document).on("change","#filePath",(function() {
     var input = document.getElementById("filePath");
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#view_file').attr('src', e.target.result);
            }
        reader.readAsDataURL(input.files[0]);
    }
    var dp = document.getElementById("view_file");
    dp.style.display = "block";
})
);
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

