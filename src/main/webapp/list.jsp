<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<style>

    div#entire{
    max-width:1200px ;
    width: 1200px ;
    margin: auto ;
    }
    
    
    /*faq-box  */
    div#faq-box{
    
    max-width: 1200px !important;
    width: 1200px ;
    margin: auto;
    margin-top: 50px;
    margin-bottom: 50px;
    }
    
    div#faq-box div h3{
    font-size: 50px;
    font-weight: bold;
    text-align: center;
    vertical-align: middle;
    margin: auto;
    }
    
    div#faq-box .desc.align-self-md-center > p{
     margin-top: 20px;
     font-size: 15px;
     font-weight: bold;
     text-align: center;
    }
    
    div#faq-box .about-author.d-flex.p-4.bg-light{
    width: 1200px;
    text-align: center;
    margin: auto ;
    } 
    
    
        
    div#faq-box .desc.align-self-md-center {
    text-align: center;
    margin: auto;
    } 
    
    
    /*search-box  */   
    div#search-box{
    max-width: 1200px ;
    margin: auto;
    margin-top: 50px;
    margin-bottom: 50px;
    }
    
    div#search-box .about-author.d-flex.p-4.bg-light{
    width: 1200px;
    }
    
    
    

 </style>
<meta charset="UTF-8">
<title>FAQ 게시판</title>
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


</head>

<body>

  <div class="hero-wrap hero-bread" style="background-image: url('/images/bg_1.jpg');">
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center fadeInUp ftco-animated">
          <p class="breadcrumbs"><span class="mr-2"><a href="index.html"></a></span> <span>GREEN RIGHT</span></p>
          <h1 class="mb-0 bread">FAQ 게시판</h1>
        </div>
      </div>
    </div>
  </div>
    
  <div id="entire">
      
      <div  id="faq-box" class="col-lg-8 ftco-animate fadeInUp ftco-animate"> 
        <div class="about-author d-flex p-4 bg-light">
          
          <div class="desc align-self-md-center">
            <h3>자주 묻는 질문 (FAQ)</h3>
            <p>자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.</p>
            <p>원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다.</p>
          </div>
          
        </div>
      </div>  
      
      
      <div id="search-box" class="col-lg-8 ftco-animate fadeInUp ftco-animated">
        <div class="about-author d-flex p-4 bg-light">
          <form  class="search-form" onsubmit="return false;">
              <div class="form-group">
                <label for="country">검색</label>
                <div class="select-wrap">
                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                  <select name="faqselect" id="faqselect" class="form-control faq">
                    <option value="default">- 질문 유형을 선택하세요 -</option>
                        <option value="배송안내">배송안내</option>
                        <option value="주문결제">주문결제</option>
                        <option value="주문취소">주문취소</option>
                        <option value="교환">교환</option>
                        <option value="환불">환불</option>
                        <option value="적립금">적립금</option>
                        <option value="기타">기타</option>
                  </select>
                </div>
              </div>
              <div class="form-group d-flex">
                <input id="keyword" name ="keyword" class="form-control"  placeholder="검색..." style="font-size: 19px;">
              </div> 
          </form>
          
        </div>
      </div>
    
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



  
</script>   
       
      
      
  
  

</body>
</html>