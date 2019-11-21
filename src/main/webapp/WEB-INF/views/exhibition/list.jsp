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
  <style>
  a.active {
    margin-left: 3px;
}
  </style>
    <!--------------------------------------------------------------------------------------->
    <div class="hero-wrap hero-bread" style="background-image: url('../../images/main.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <p class="breadcrumbs"><span class="mr-2"><a href="#">Green</a></span> <span>Right</span></p>
            <h1 class="mb-0 bread">업사이클링 제품을 구매해보세요</h1>
          </div>
        </div>
      </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <section class="ftco-section">
        <div class="container">
            <!------------------------------------------------------------------------------->
            <div class="row addto">
                 <c:forEach items="${products}" var="product">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="product">
                        <a href="/greenright/exhibition/detail?memberNo=${product.memberNo}" class="img-prod">
                        <img class="img-fluid" src='/upload/product/${product.photos[0].photoPath}'  alt="Colorlib Template" style="width:253px; height:202px; object-fit:cover;"> 
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                            <h3>
                                ${product.seller.member.name}
                            </h3>
                            <div class="d-flex">
                                <div class="pricing">
                                
                                    <p class="price"><span class="price-sale totalRecommendNum" id="${product.no}"> 총추천수:${product.recommendCount}</span></p>
                                </div>
                            </div>
                            <div class="bottom-area d-flex px-3">
                                <div class="m-auto d-flex">
                                    <a href="/greenright/product/buydetail?no=${product.no}" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                        <i class="fas fa-comments"></i>
                                    </a>
                                    <a href="" class="heart d-flex justify-content-center align-items-center changewishlist" id ="${product.no}">
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
<!--             <div class="row mt-5">
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
 -->        <!--------------------------------------------------------------------------->
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
<!-- loader -->
 <!-- <div id="ftco-loader" class="show fullscreen">
<svg class="circular" width="48px" height="48px">
<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg> 
</div> -->
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
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<script>
        $(document).on("click",".changewishlist",function(e){
          e.preventDefault();
          let productNo =$(this).attr("id");
          $.post(
              "/greenright/json/UpcyclingRecommend/checkLike",
              {
                upcyclingRecommendProductNo : productNo
              },
              function(a) {
                if(a.result ==0){
                  $.post("/greenright/json/UpcyclingRecommend/increaseRecommend",{
                    "upcyclingRecommendProductNo":productNo
                  }, function(data){
                    swal("상품을 추천하셨습니다. ")
                    
                    $.post("/greenright/json/UpcyclingRecommend/getRecommendNum",{
                      "upcyclingRecommendProductNo":productNo
                    }, function(data){
                      console.log(data.result)
                        
                      $("#"+productNo+"").text("총추천수는 : "+data.result+"")
                    
                    })
                    
                  });               
                }else{
                  $.post("/greenright/json/UpcyclingRecommend/decreaseRecommend",{
                    "upcyclingRecommendProductNo":productNo
                  }, function(data){
                   swal("상품 추천을 취소하셨습니다.")
                   
                   $.post("/greenright/json/UpcyclingRecommend/getRecommendNum",{
                     "upcyclingRecommendProductNo":productNo
                   }, function(data){
                     console.log(data.result)
                     $("#"+productNo+"").text("총추천수는 : "+data.result+"")
                   }) 
                    
                  });  
                }
              })
          
          
          
        })
     
        
          
</script>