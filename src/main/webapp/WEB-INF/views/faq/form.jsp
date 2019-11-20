<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
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
  div#faq-form-entire {
  width: 1200px;
  margin: auto;
  margin-top :50px;
  }
  
  div#faq-form-btn-wrap {
   margin : auto;
   margin-top : 50px;
   margin-bottom : 70px; 
   text-align: center;
  }
</style>


</head>
<body>
  <div id="faq-form-entire">
      <form action="add" method="post" class="p-5 bg-light">
       <div class="form-group">
           <div class="icon"><span class="ion-ios-arrow-down"></span></div>
          <select id="questionType" name="questionType" class="form-control">
            <option value="default">전체</option>
            <option value="배송안내">배송안내</option>
            <option value="주문결제">주문결제</option>
            <option value="주문취소">주문취소</option>
            <option value="교환,환불">교환,환불</option>
            <option value="적립금">적립금</option>
            <option value="기타">기타</option>
          </select>
       </div>
        <!-- <div>
          <input type="text" id="questionType" name="questionType" placeholder="질문유형">
        </div> -->
      <div class="form-group">
        <input type="text" id="title" name="title" placeholder="제목" class="form-control"><br>
        <textarea id="contents" name="contents" rows="10" cols="30" placeholder="내용을 입력해주세요" class="form-control"></textarea><br>
      </div>
      <div id="faq-form-btn-wrap" class="form-group">
        <button class="btn py-3 px-4 btn-primary">등록</button>
      </div>
    
      </form>
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
<script src="/js/jquery.twbsPagination.min.js"></script>
 

