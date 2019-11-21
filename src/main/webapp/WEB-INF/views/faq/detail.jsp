<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<meta charset="UTF-8">
<title>FAQ DETAIL</title>
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
  div#faq-detail-entire {
  width: 1200px;
  margin: auto;
  margin-top :50px;
  /* border: solid 2px; */
  /* border-left: solid 3px; */
  /* border-bottom: solid 3px; */
  border: solid;
  margin-bottom: 40px
  }
  
  div#faq-detail-btn-wrap {
   margin : auto;
   margin-top : 50px;
   margin-bottom : 70px; 
   text-align: center;
  }
  
  .faq-detail-form-head {
    text-align: center;
    background-color: #82ae46;
    font-size: 35px;
    font-weight: bold;
    color: #ffffff;
    padding: 20px;
  }
  
  label.faq-detail-subtitle {
    font-size: 20px;
    font-weight: bold;
    color: black;
    display: list-item;
    margin-left: 20px;
  }
  
  .form-control.faq-detail-form-control {
  height: 40px !important; 
  }
  
</style>





  
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
  
  <div id="faq-detail-entire">
    <div class="faq-detail-form-head">FAQ &nbsp; 게시판</div>
    <form id="upt" name="upt" method="post" action="update" class="p-5 bg-light" >
    
      <div id = faqID-div class="form-group">
        <input  type="text" id="faqID" name="faqID" class="form-control" value="${faq.faqID}" hidden="" readonly ><br/>
      </div>
    
      <div class="form-group">
        <label class="faq-detail-subtitle">질문유형 &nbsp; <i class="fas fa-list-ul"></i></label>
        <select id="questionType" name="questionType" class="form-control faq-detail-form-control">
          <option value=""disabled="disabled">전체</option>
          <option value="배송안내" disabled="disabled">배송안내</option>
          <option value="주문결제" disabled="disabled">주문결제</option>
          <option value="주문취소" disabled="disabled">주문취소</option>
          <option value="교환,환불" disabled="disabled">교환,환불</option>
          <option value="적립금" disabled="disabled">적립금</option>
          <option value="기타" disabled="disabled">기타</option>
        </select>
      </div>
      <div class="form-group">
        <label class="faq-detail-subtitle">제목  &nbsp;<i class="fas fa-file-signature"></i> </label>
        <input type="text" id="title" name="title" class="form-control faq-detail-form-control" value="${faq.title}" readonly >
      </div>
  
      <div class="form-group">
        <label for="contents" class="faq-detail-subtitle">내용  &nbsp; <i class="fas fa-pen-square"></i> </label>
        <textarea  id="contents" name="contents" cols="30" rows="10" class="form-control" readonly>${faq.contents}</textarea>
      </div>
      
      <div id="faq-detail-btn-wrap" class="form-group">
        <c:if test="${loginUser.memberClass == 0}">
          <button id="clearbtn" name="clearbtn" class="btn py-3 px-4 btn-primary"  onclick="return false;" >해제</button>
          <button id="uptbtn" name="uptbtn" class="btn py-3 px-4 btn-primary">수정</button>
          <a href="delete?no=${faq.faqID}" class="btn py-3 px-4 btn-primary" >삭제</a>
        </c:if>
        <button id="backbtn" name="backbtn" class="btn py-3 px-4 btn-primary" onclick="return false;">리스트로 돌아가기</button>
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
  
  
  
  
  
  

<script>
function upt(){
  document.upt.submit();
}

  $(function(){
    $("#backbtn").click(function(){
      location.href = "list.jsp";
    });
  });
  
  
  (function(){
    $('#questionType').val('${faq.questionType}');
  })();
  
  
  /*관리자 사용버튼 미구현  */
  $(function(){
    $("#clearbtn").click(function(){
      $("#title").removeAttr("readonly");
      $("#contents").removeAttr("readonly");
      $("#questionType option").removeAttr("disabled");
      
    });
  });
</script>
      


