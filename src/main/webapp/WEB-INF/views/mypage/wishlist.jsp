<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!--------------------------------------------------------------------------------------->
    <div class="hero-wrap hero-bread" style="background-image: url('../../images/main.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="/greenright/main">Home</a></span> <span>Wishlist</span></p>
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
                <th>&nbsp;</th>
                <th>Product List</th>
                <th>Name<br>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Option</th>
                <th>Total</th>
              </tr>
            </thead>
            <tbody id="my-wishbody">
            
            
              <c:forEach items="${wishLists}" var="wishList">
              <tr class="text-center">
                <td class="product-remove"><a href="#"><i class="fas fa-times"></i></a></td>
                <td class="image-prod"><img class="img-fluid" src='/upload/product/${wishList.productPhoto.photoPath}' style="width:120px; height:120px;"></td>
                <td class="product-name">
                  <h3>${wishList.product.productName}</h3>
                  <p>${wishList.product.description}</p>
                </td>
                <td class="price">${wishList.product.price}￦</td>
                <td>${wishList.optionName}<p>${wishList.optionPrice}￦</p></td>
                <td class="quantity">
                  <div class="input-group mb-3">
                    <button type="button" class="quantity-left-minus"><i class="fas fa-minus"></i></button>
                    <input type="text" name="quantity" class="form-control input-number" value="${wishList.quantity}" min="1" max="100">
                    <button type="button" class="quantity-right-plus"><i class="fas fa-plus"></i></button>
                  </div>
                </td>
                <td class="total">${(wishList.optionPrice+wishList.product.price)*3}￦</td>
              </tr>
              </c:forEach>
                
                
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<!----------------------------------------------section end----------------------------------->
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
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><i class="fas fa-arrow-up"></i></div>
                        </a>
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
$('#my-wishbody').on('click','.quantity-right-plus', (e) => {
  var target = $(e.currentTarget).prev();
  var currentNum = target.val();
  if(currentNum<1000)
    target.val(currentNum*1+1);
});
$('#my-wishbody').on('click','.quantity-left-minus', (e) => {
  var target = $(e.currentTarget).next();
  var currentNum = target.val();
  if(currentNum >0 )
    target.val(currentNum*1-1);
});

</script>