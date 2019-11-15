<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Exhibitions</title>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>

      
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
div#carousel-wrap {
    width: 1200px;
    margin: auto;
}
div.carousel-item.active.my-carousel{
 width: 600px;
}

img.d-block.w-100 {
    height: 400px;
}


div.carousel-inner.my-exhibition {
  margin-top: 200px;
}

div img.my_thumbnail{
   position: relative;
   margin: auto;
   width: 400px; 
   height: 400px;
   left: 0px;
   object-fit: cover;
}

.img-warpper {
   display: inline-flex;
   margin-bottom:  200px;
}


/* 테스트 */

/*first slide  */
/* img.d-block.w-100.first-side {
  width: 200px !important; */
  /* display: inline-block; */
/* } */

div.d-block.w-100.first-inner {
  width: 350px !important;
  margin: auto;
}

div.d-block.w-100.first-inner2 {
  width: 100px !important;
}

/* div.d-block.w-100.first-left-side {
  width: 150px !important;
}

div.d-block.w-100.first-right-side {
  width: 150px !important;
} */

div.d-block.w-100.first-left-side {
  width: 150px !important;
}

div.d-block.w-100.first-right-side {
  width: 150px !important;
  height: 200px;
}


img.d-block.w-100.first-slide-img {
  width: 500px !important;
/*   display: inline-block; */
}
 
.carousel-first {
  display: inline-flex;
}

.carousel-second {
  display: inline-flex;
}

.carousel-third {
  display: inline-flex;
}

a.carousel-control-prev {
 display: inline-flex;
 height: 400px !important;
}


a.carousel-control-next {
 display: inline-flex;
 height: 400px !important;
}


     .carousel-item.active, .carousel-item-next, .carousel-item-prev {
    display: inline-flex;
    }    
    

/*사진  */
 img.my_thumbnail.my_thumnail_first {
    width: 400px !important;
    height: 400px !important;
    object-fit: cover;
    object-position: right;
} 


/*second slide  */
div.d-block.w-100.second-left-side {
  width: 150px !important;
}

div.d-block.w-100.second-inner {
  width: 100px !important;
  height: 200px;
  background: #545A5A;
}

div.d-block.w-100.second-inner2 {
  width: 100px !important;
  height: 200px;
  background: #3C515F;
}

div.d-block.w-100.second-inner3 {
  width: 350px !important;
}

img.d-block.w-100.second-slide-img {
  width: 500px !important;
}

div.d-block.w-100.second-left-side {
  width: 125px !important;
  background-color: #24536D;
}

div.d-block.w-100.second-right-side {
  width: 125px !important;
  height: 400px;
  background-color: #24536D;
}

/*third slide  */
div.d-block.w-100.third-left-side {
  width: 150px !important;
}

div.d-block.w-100.third-inner {
  width: 350px !important;
  margin: auto;
}

div.d-block.w-100.third-inner2 {
  width: 75px !important;
  height: 200px;
}
div.d-block.w-100.third-inner3 {
  width: 75px !important;
  height: 200px;
  
}


img.d-block.w-100.third-slide-img {
  width: 500px !important;
/*   display: inline-block; */
}

div.d-block.w-100.third-right-side {
  width: 125px !important;
  
}


/*font  */
h1.my-fontcustom1 {
    font-size: 60px;
    font-weight: bold;
    text-align: left;
    margin-left: 7px;
}

h1.my-fontcustom2 {
    font-size: 60px;
    font-weight: bold;
    text-align: left;
    margin-left: 7px;
}

h1.my-fontcustom3 {
    font-size: 53px;
    font-weight: bold;
    text-align: left;
    margin: auto;
    margin-left: 7px;
    /* color: #82AE46; */
}

.div-my-fontcustom3 {
    text-decoration: underline;
}

h1.my-fontcustom4 {
    font-size: 75px;
    font-weight: bold;
    text-align: left;
    margin-left: 7px;
}

.my-fontcustom4-wrap {
    text-decoration: overline;
}

h1.my-fontcustom5 {
    font-size: 75px;
    font-weight: bold;
    text-align: right;
    margin-left: 7px;
}

.my-fontcustom5-wrap {
    text-decoration: underline;
}

div.my-fontgroup-firstwrap.d-none.d-md-block {
  text-decoration: underline;
}

h1.myfontfroup-wrap{
  margin: auto;
}

</style>


</head>
<body>
    <div class="py-1 bg-primary">
      <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
          <div class="col-lg-12 d-block">
            <div class="row d-flex">
              <div class="col-md pr-4 d-flex topper align-items-center">
                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                <span class="text">+ 1235 2355 98</span>
              </div>
              <div class="col-md pr-4 d-flex topper align-items-center">
                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                <span class="text">youremail@email.com</span>
              </div>
              <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                <span class="text">3-5 Business days delivery &amp; Free Returns</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
    
    <!-- nav -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.html">GreenRight</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="wishlist.html">Wishlist</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
            <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
            <li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
            <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

          </ul>
        </div>
      </div>
    </nav>
    
    
   <div id="carousel-wrap">
    <div class="bd-example">
      <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner my-exhibition">
          <div id="my-first-slide" class="carousel-item active my-first">
            <div class="carousel-first">
              <div class="d-block w-100 first-left-side" style="background: #FED009;"></div>
              <!-- <img src="/images/item1.jpg" class="d-block w-100 a-side" alt="..."> -->
              <div id="first-inner" class="d-block w-100 first-inner">
                <div class="my-fontgroup-firstwrap d-none d-md-block">
                 <h1 class="my-fontcustom1">GREEN</h1>
                 <h1 class="my-fontcustom1">RIGHT</h1>
                 <h1 class="my-fontcustom2">EXHIBITION</h1>
                </div>
              </div>
              <div class="d-block w-100 first-inner2" style="background: #BDBDBD;"></div>
              <a href="javascript:void(0)"><img src="/images/item1.jpg" class="d-block w-100 first-slide-img" alt="..."></a>
              <!-- <img src="/images/item1.jpg" class="d-block w-100 a-side" alt="..."> -->
              <div>
                <div class="d-block w-100 first-right-side" style="background: #BDBDBD;"></div>
                <div class="d-block w-100 first-right-side" style="background: #8C8C8C"></div>
              </div>
            </div>
          </div>
          <div id="my-second-slide" class="carousel-item my-second">
            <div class="carousel-second">
              <div class="d-block w-100 second-left-side"></div>
              <div>
                <div class="d-block w-100 second-inner"></div>
                <div class="d-block w-100 second-inner2"></div>
              </div>
              <a href="javascript:void(0)"><img src="/images/item2.jpg" class="d-block w-100 second-slide-img" alt="..."></a>
              <div id="second-inner3" class="d-block w-100 second-inner3">
                 <div class="d-none d-md-block">
                  <h1 class="my-fontcustom3">  G</h1>
                  <!-- <h1 class="my-fontcustom3">  R I G H T</h1> -->
                  <!-- <div style="display: inline-flex;">
                    <h1 class="my-fontcustom3">R</h1>
                    <h1 class="my-fontcustom3">&nbsp I</h1>
                    <h1 class="my-fontcustom3">&nbsp G</h1>
                    <h1 class="my-fontcustom3">&nbsp H</h1>
                    <h1 class="my-fontcustom3">&nbsp T</h1>
                  </div> -->
                  <div class="div-my-fontcustom3">
                   <h1 class="my-fontcustom3">  R &nbsp&nbsp I &nbsp&nbsp G &nbsp&nbsp H &nbsp&nbsp T</h1>
                  </div>
                  <h1 class="my-fontcustom3">  E</h1>
                  <h1 class="my-fontcustom3">  E</h1>
                  <h1 class="my-fontcustom3">  N</h1>
                  
                </div>
              </div>
              <!-- <div class="carousel-caption d-none d-md-block">
                 <h5>Second slide label</h5>
              </div> -->
              <div class="d-block w-100 second-right-side" ></div>
            </div>
          </div>
          <div id="my-third-slide"class="carousel-item">
           <div class="carousel-third">
              <div class="d-block w-100 third-left-side" style="background: #5F3111;"></div>
              <div id="third-inner" class="d-block w-100 third-inner">
                <div class="my-fontgroup-wrap d-none d-md-block">
                 <div class="my-fontcustom4-wrap">
                  <h1 class="my-fontcustom4">GREEN</h1>
                 </div>
                 <div class="my-fontcustom5-wrap">
                   <h1 class="my-fontcustom5">RIGHT</h1>
                 </div>
                </div>
              </div>
              
              <div>
                <div class="d-block w-100 third-inner2" style="background: #C5B697;"></div>
                <div class="d-block w-100 third-inner3" style="background: #D7CCB0;"></div>
              </div>
              <a href="javascript:void(0)"><img src="/images/item3.jpg" class="d-block w-100 third-slide-img" alt="..."></a>
            <!-- <div class="carousel-caption d-none d-md-block">
               <h5>Third slide label</h5>
            </div> -->
              <div class="d-block w-100 third-right-side" style="background: #5F3111;"></div>
           </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    
    <div class="img-warpper">
      <a href="javascript:void(0)"><img src="/images/item5.jpg" alt="..." class="my_thumbnail my_thumnail_first"></a>
      <a href="javascript:void(0)"><img src="/images/item8.jpg" alt="..." class="my_thumbnail"></a>
      <a href="javascript:void(0)"><img src="/images/item7.jpg" alt="..." class="my_thumbnail"></a>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
  /*   $(function(){
       $('.carousel').carousel({
        interval: 5000
      });
    });  */
    
     $(function(){
      $(".carousel").carousel('pause');
    });
    
    $(function(){
      $(".carousel-first").carousel('pause');
    });
    
    $(function(){
      $(".carousel-second").carousel('pause');
    });
    
    $(function(){
      $(".carousel-third").carousel('pause');
    });
    
    $(function(){
      $("#first-inner").mousemove(function(e){
        $(e.target).attr("style", "color: #82AE46;");
      });
      
    })
    
    $(function(){
      $("#first-inner").mouseout(function(e){
        $(e.target).removeAttr("style", "color: #82AE46;");
      });
      
    })
    
     $(function(){
      $("#second-inner3").mousemove(function(e){
        $(e.target).attr("style", "color: #82AE46;");
      });
      
    })
    
    $(function(){
      $("#second-inner3").mouseout(function(e){
        $(e.target).removeAttr("style", "color: #82AE46;");
      });
      
    })
    
    $(function(){
      $("#third-inner").mousemove(function(e){
        $(e.target).attr("style", "color: #82AE46;");
      });
      
    })
    
    $(function(){
      $("#third-inner").mouseout(function(e){
        $(e.target).removeAttr("style", "color: #82AE46;");
      });
      
    })
    
    </script>
</body>
</html>