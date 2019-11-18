<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>

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

<style>
  div#exhibition-list-entire{
    max-width:1200px ;
    width: 1200px ;
    margin: auto ;
    }
  div#piece-wrap{
  display: inline-block;
  } 
  
  div.col-md-6.col-lg-3.ftco-animate.fadeInUp.ftco-animated.my-item {
  
  margin: 0px;
  width: 300px;
  display: inline-block;
  }
</style>

<div id="exhibition-list-entire">
  <div id="piece-wrap" class="row">
  
  </div>
</div>    
<!--     
<div id="exhibition-list-entire">
  <div class="row">
    <div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
      <div class="product">
        <a href="#" class="img-prod"><img class="img-fluid" src="/images/product-1.jpg" alt="Colorlib Template">
          <span class="status">30%</span>
        </a>
        <div class="text py-3 pb-4 px-3 text-center">
          <h3><a href="#">Bell Pepper</a></h3>
          <div class="d-flex">
            <div class="pricing">
              <p class="price"><span class="mr-2 price-dc">$120.00</span><span class="price-sale">$80.00</span></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
 -->



 
 
<script id="pieceTemplate" type="text/x-handlebars-template">
    <div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated my-item">
      <div class="product">
        <a href="#" class="img-prod"><img class="img-fluid" src="/images/product-1.jpg" alt="Colorlib Template">
        </a>
        <div class="text py-3 pb-4 px-3 text-center">
          <h3><a href="#">Bell Pepper</a></h3>
          <div class="d-flex">
            <div class="pricing">
              <p class="price"><span class="mr-2 price-dc">$120.00</span><span class="price-sale">$80.00</span></p>
            </div>
          </div>
        </div>
      </div>
    </div>
</script>    

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
<script src="/js/jquery.twbsPagination.min.js"></script>



<script type="text/javascript">
var paginationTemplateSrc = $('#pieceTemplate').html();
var template = Handlebars.compile(paginationTemplateSrc);
var totalItem = 10;

pieceData(1,totalItem);



function pieceData(firstItem, lastItem) {
  var quantity =[]
  for (var i = firstItem; i<=lastItem; i++) {
    /* if(i%lastItem ==0){
      $("#exhibition-list-entire").append(<br>)
      } */
  $("#piece-wrap").append(paginationTemplateSrc)
    }
  
}
</script>
