<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>GreenRight</title>
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
  </head>
  <body class="goto-here">
    <!--------------------------------------------------------------------------------------->
        <div class="py-1 bg-primary">
        <div class="container">
            <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                <div class="col-lg-12 d-block">
                    <div class="row d-flex">
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span style="padding-top: 3px" class="icon-phone2"></span></div>
                            <span style="padding-top: 5px" class="text">070 2132 6485</span>
                        </div>
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span style="padding-top: 3px" class="icon-paper-plane"></span></div>
                            <span style="padding-top: 5px" class="text">green@.gmail.com</span>
                        </div>
                        <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                            <span style="padding-top: 5px" class="text">1-2 Business days delivery &amp; Free Returns</span>
                        </div>
                    </div>
                </div>
            </div>
          </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
          <a class="navbar-brand" href="#">GreenRight</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
          </button>

          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"><a href="#" class="nav-link">HOME</a></li>
              <li class="nav-item"><a href="#" class="nav-link">SHOP</a></li>
              <li class="nav-item"><a href="#" class="nav-link">EXHIBITION</a></li>
              <li class="nav-item"><a href="#" class="nav-link">MYPAGE</a></li>
              <li class="nav-item"><a href="#" class="nav-link">CONTACT</a></li>
              <li class="nav-item cta cta-colored"><a href="#" class="nav-link"><span class="fas fa-cart-arrow-down"></span>[0]</a></li>
            </ul>
          </div>
        </div>
      </nav>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <div class="hero-wrap hero-bread" style="background-image: url('../../images/main.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="#">Green</a></span> <span>Right</span></p>
            <h1 class="mb-0 bread">친환경 제품을 사용해 보세요.</h1>
          </div>
        </div>
      </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <section class="ftco-section">
        <div class="container">
            <!------------------------------------------------------------------------------->
            <div class="row justify-content-center">
                <div class="col-md-10 mb-5 text-center" style=margin-bottom:0px;>
                    <ul class="product-category">
                        <li value=0 class="searchbtn" id ="set"><a  href="#" class="active" id="productAll"><b>All</b></a></li>
                        <li value=1 class="searchbtn" id ="clean"><a href="#"><b>청소</b></a></li>
                        <li value=2 class="searchbtn" id ="office"><a href="#"><b>사무</b></a></li>
                        <li value=3 class="searchbtn" id ="organic"><a href="#" ><b>유기농</b></a></li>
                        <li value=4 class="searchbtn" id ="furniture"><a href="#"><b>가구</b></a></li>
                        <li value=5 class="searchbtn" id ="upcycleing"><a href="#"><b>업사이클링</b></a></li>
                    </ul>
                    <div class="listchange">
                    <!-- <ul class="product-category" id="groups" style=text-align: center; style=margin-top:3px; >
                        <li><a href="#"><b>청소</b></a></li>
                        <li><a href="#"><b>사무</b></a></li>
                        <li><a href="#"><b>유기농</b></a></li>
                        <li><a href="#"><b>가구</b></a></li>
                        <li><a href="#"><b>업사이클링</b></a></li>
                    </ul> -->
                    </div>
                </div >
            </div>
            <!-- ----------------------------------------------------------------- -->



            <!------------------------------------------------------------------------------->
            <div class="row addto">
                 <c:forEach items="${products}" var="product">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product">
                        <a href="/greenright/product/buydetail?no=${product.no}" class="img-prod">
                        <img class="img-fluid" src='/upload/product/${product.photos[0].photoPath}' width="253px" height="202px" alt="Colorlib Template"> 
                            <span class="status">30%</span>
                            <div class="overlay"></div>
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                            <h3><a href="#">
                                ${product.productName}
                            </a></h3>
                            <div class="d-flex">
                                <div class="pricing">
                                    <p class="price"><span class="mr-2 price-dc">￦${product.price+5000}</span><span class="price-sale">￦${product.price}</span></p>
                                </div>
                            </div>
                            <div class="bottom-area d-flex px-3">
                                <div class="m-auto d-flex">
                                    <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                        <i class="fas fa-comments"></i>
                                    </a>
                                    <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                        <span><i class="fas fa-cart-plus"></i></i></span>
                                    </a>
                                    <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                        <span><i class="far fa-heart"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach> 
            </div><!-- row 클래스 종료 -->
            <!--------------------------------------------------------------------------->
            <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!--------------------------------------------------------------------------->
        </div><!--컨테이너종료-->
    </section><!--section종료-->

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
   // 카테고리 검새액(유기농, 가구 ... )
      $(function(){
        $(".searchbtn").click(function(){
          var chkid = $(this).attr('id')
          if(chkid=="productAll"){
           
          }
          else if(chkid=="clean"){
           var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
               sublist += "<li value=1 class='subbutton'><a href='#'><b>세제류</b></a></li>"
               sublist += "<li value=2 class='subbutton'><a href='#'><b>위생용품</b></a></li>"
               sublist += "<li value=3 class='subbutton'><a href='#'><b>화장지</b></a></li>"
               sublist += "<li value=4 class='subbutton'><a href='#'><b>티슈</b></a></li>"
                 $(".listchange").html(sublist);  
           $(".listchange").show();
          }else if(chkid=="office"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=5 class='subbutton'><a href='#'><b>복사용지</b></a></li>"
              sublist += "<li value=6 class='subbutton'><a href='#'><b>화일</b></a></li>"
              sublist += "<li value=7 class='subbutton'><a href='#'><b>토너</b></a></li>"
              sublist += "<li value=8 class='subbutton'><a href='#'><b>기타</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show();
          }else if(chkid=="organic"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=9 class='subbutton'><a href='#'><b>과일</b></a></li>"
              sublist += "<li value=10 class='subbutton'><a href='#'><b>채소</b></a></li>"
              sublist += "<li value=11 class='subbutton'><a href='#'><b>간식</b></a></li>"
              sublist += "<li value=12 class='subbutton'><a href='#'><b>축산품</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show(); 
              
          }else if(chkid=="furniture"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=13 class='subbutton'><a href='#'><b>침대</b></a></li>"
              sublist += "<li value=14 class='subbutton'><a href='#'><b>소파</b></a></li>"
              sublist += "<li value=15 class='subbutton'><a href='#'><b>테이블</b></a></li>"
              sublist += "<li value=16 class='subbutton'><a href='#'><b>의자</b></a></li>"
              sublist += "<li value=17 class='subbutton'><a href='#'><b>파티션</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show(); 
              
          }else if(chkid=="upcycleing"||chkid=="set"){
            $(".listchange").hide();
          }
          var allData = {"no" : $(this).val()}
          $.ajax({
            url : "../greenright/json/Product/searchbyCategory",
            type : "GET",
            dataType : "json",
            data : allData,
            success : function(data) {
               var list = data.result;
               var tableTag ="";
              for(var i = 0 ; i < list.length; i++) {
                tableTag += "<div class='col-md-6 col-lg-3'>"
                tableTag += "<div class='product'>"
                tableTag += "<a href='/greenright/product/buydetail?no="+list[i].no+"' class='img-prod'>"
                tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "'width='253px' height='202px' alt='Colorlib Template' >" 
                tableTag += "<span class='status'>30%</span>"
                tableTag += "<div class='overlay'></div></a>"
                tableTag += "<div class='text py-3 pb-4 px-3 text-center'>"
                tableTag += "<h3><a href='#'>"+ list[i].productName +"</a></h3>"
                tableTag += "<div class='d-flex'>"
                tableTag += "<div class='pricing'>"
                tableTag += "<p class='price'><span class='mr-2 price-dc'>"+ list[i].price +"</span><span class='price-sale'>"+list[i].price+"</span></p>"
                tableTag += "</div></div><div class='bottom-area d-flex px-3'>"
                tableTag += "<div class='m-auto d-flex'>"
                tableTag += "<a href='#' class='add-to-cart d-flex justify-content-center align-items-center text-center'>"
                tableTag += "<i class='fas fa-comments'></i></a>"
                tableTag += "<a href='#' class='buy-now d-flex justify-content-center align-items-center mx-1'>"
                tableTag += "<span><i class='fas fa-cart-plus'></i></span></a>"
                tableTag += "<a href='#' class='heart d-flex justify-content-center align-items-center '>"
                tableTag += "<span><i class='far fa-heart'></i></span>"
                tableTag += "</a></div></div></div></div></div>";
              };
              $(".addto").html(tableTag);  
            }
          });
        })
      
      
   
      
        
      });
   
      $(document).on("click", ".subbutton", function() {
          var allData = {"no" : $(this).val()}
          $.ajax({
            url : "../greenright/json/Product/searchbyGroup",
            type : "GET",
            dataType : "json",
            data : allData,
            success : function(data) {
              console.log(data);
               var list = data.result;
              var tableTag ="";
                for(var i = 0 ; i < list.length; i++) {
                  tableTag += "<div class='col-md-6 col-lg-3'>"
                  tableTag += "<div class='product'>"
                    tableTag += "<a href='/greenright/product/buydetail?no="+list[i].no+"' class='img-prod'>"
                  tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "'width='253px' height='202px' alt='Colorlib Template' >" 
                  tableTag += "<span class='status'>30%</span>"
                  tableTag += "<div class='overlay'></div></a>"
                  tableTag += "<div class='text py-3 pb-4 px-3 text-center'>"
                  tableTag += "<h3><a href='#'>"+ list[i].productName +"</a></h3>"
                  tableTag += "<div class='d-flex'>"
                  tableTag += "<div class='pricing'>"
                  tableTag += "<p class='price'><span class='mr-2 price-dc'>"+ list[i].price +"</span><span class='price-sale'>"+list[i].price+"</span></p>"
                  tableTag += "</div></div><div class='bottom-area d-flex px-3'>"
                  tableTag += "<div class='m-auto d-flex'>"
                  tableTag += "<a href='#' class='add-to-cart d-flex justify-content-center align-items-center text-center'>"
                  tableTag += "<i class='fas fa-comments'></i></a>"
                  tableTag += "<a href='#' class='buy-now d-flex justify-content-center align-items-center mx-1'>"
                  tableTag += "<span><i class='fas fa-cart-plus'></i></span></a>"
                  tableTag += "<a href='#' class='heart d-flex justify-content-center align-items-center '>"
                  tableTag += "<span><i class='far fa-heart'></i></span>"
                  tableTag += "</a></div></div></div></div></div>";
                };
                $(".addto").html(tableTag);  
              }
            });
          })
        
        
     
        
          
</script>
</body>
</html>