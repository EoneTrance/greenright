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
                    <ul class="product-category big_c">
                        <li value=0 class="searchbtn" id ="set"><a  class="vv active" id="productAll"><b>All</b></a></li>
                        <li value=1 class="searchbtn" id ="clean"><a class="vv"  ><b>청소</b></a></li>
                        <li value=2 class="searchbtn" id ="office"><a class="vv" ><b>사무</b></a></li>
                        <li value=3 class="searchbtn" id ="organic"><a class="vv" ><b>유기농</b></a></li>
                        <li value=4 class="searchbtn" id ="furniture"><a class="vv" ><b>가구</b></a></li>
                        <li value=5 class="searchbtn" id ="upcycleing"><a class="vv" ><b>업사이클링</b></a></li>
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
                        <img class="img-fluid" src='/upload/product/${product.photos[0].photoPath}'  alt="Colorlib Template" style="width:253px; height:202px; object-fit:cover;"> 
                        </a>
                        <div class="text py-3 pb-4 px-3 text-center">
                            <h3><a href="#">
                                ${product.productName}
                            </a></h3>
                            <div class="d-flex">
                                <div class="pricing">
                                
                                    <p class="price"><span class="price-sale"><fmt:formatNumber value="${product.price}" groupingUsed="true" /></span></p>
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
   // 카테고리 검새액(유기농, 가구 ... )
      $(function(){
        $(".searchbtn").click(function(){
          
          $(this).parent().find(".active").removeClass("active");
          $(this).children(".vv").addClass("active");
          var chkid = $(this).attr('id')
          if(chkid=="productAll"){
           
          }
          else if(chkid=="clean"){
           var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
               sublist += "<li value=1 class='subbutton'><a class='vv'  ><b>세제류</b></a></li>"
               sublist += "<li value=2 class='subbutton'><a class='vv' ><b>위생용품</b></a></li>"
               sublist += "<li value=3 class='subbutton'><a class='vv' ><b>화장지</b></a></li>"
               sublist += "<li value=4 class='subbutton'><a class='vv' ><b>티슈</b></a></li>"
                 $(".listchange").html(sublist);  
           $(".listchange").show();
          }else if(chkid=="office"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=5 class='subbutton'><a class='vv' ><b>복사용지</b></a></li>"
              sublist += "<li value=6 class='subbutton'><a class='vv' ><b>화일</b></a></li>"
              sublist += "<li value=7 class='subbutton'><a class='vv' ><b>토너</b></a></li>"
              sublist += "<li value=8 class='subbutton'><a class='vv' ><b>기타</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show();
          }else if(chkid=="organic"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=9 class='subbutton'><a class='vv' ><b>과일</b></a></li>"
              sublist += "<li value=10 class='subbutton'><a class='vv' ><b>채소</b></a></li>"
              sublist += "<li value=11 class='subbutton'><a  class='vv'><b>간식</b></a></li>"
              sublist += "<li value=12 class='subbutton'><a class='vv' ><b>축산품</b></a></li>"
                $(".listchange").html(sublist); 
            $(".listchange").show(); 
              
          }else if(chkid=="furniture"){
            var sublist = "<ul class='product-groups product-category' id='groups' style=text-align: center; style=margin-top:3px; >"
              sublist += "<li value=13 class='subbutton'><a class='vv' ><b>침대</b></a></li>"
              sublist += "<li value=14 class='subbutton'><a class='vv' ><b>소파</b></a></li>"
              sublist += "<li value=15 class='subbutton'><a class='vv' ><b>테이블</b></a></li>"
              sublist += "<li value=16 class='subbutton'><a class='vv' ><b>의자</b></a></li>"
              sublist += "<li value=17 class='subbutton'><a class='vv' ><b>파티션</b></a></li>"
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
                tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "' alt='Colorlib Template' style='width:253px; height:202px; object-fit:cover;' >" 
                tableTag += "<span class='status'>30%</span>"
                tableTag += "<div class='overlay'></div></a>"
                tableTag += "<div class='text py-3 pb-4 px-3 text-center'>"
                tableTag += "<h3><a href='#'>"+ list[i].productName +"</a></h3>"
                tableTag += "<div class='d-flex'>"
                tableTag += "<div class='pricing'>"
                var a =  list[i].price ; 
                tableTag += "<p class='price'><span class='mr-2 price-dc'>"+list[i].price+"</span><span class='price-sale'>"+list[i].price+"</span></p>"
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
        $(this).parent().find(".active").removeClass("active");
        $(this).children(".vv").addClass("active");
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
                  tableTag += "<img class='img-fluid' src='/upload/product/"+list[i].photos[0].photoPath+ "' alt='Colorlib Template' style='width:253px; height:202px; object-fit:cover;' >" 
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
        
        $(document).on("click",".changewishlist",function(e){
          e.preventDefault();
          let productNo =$(this).attr("id");
          let memberNo = 1;
          $.post(
              "/greenright/json/Like/checkLike",
              {
                productNo : productNo,
                memberNo : memberNo
              },
              function(a) {
                if(a.result ==0){
                  $.post("/greenright/json/Like/increaseLike",{
                    "productNo":productNo,
                    "memberNo":memberNo
                  }, function(data){
                    swal("wishlist 에 추가되었습니다")
                  });               
                }else{
                  $.post("/greenright/json/Like/decreaseLike",{
                    "productNo":productNo,
                    "memberNo":memberNo
                  }, function(data){
                   swal("wishlist 에서 삭제되었습니다.")
                    
                  });  
                }
              })
          
          
          
        })
     
        
          
</script>