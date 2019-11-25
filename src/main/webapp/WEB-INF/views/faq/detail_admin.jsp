<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>FAQ DETAIL</title>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>


<style>
  div#faq-detail-entire {
  width: 1200px;
  margin: auto;
  margin-top :50px;
  }
  
  div#faq-detail-btn-wrap {
   margin : auto;
   margin-top : 50px;
   margin-bottom : 70px; 
   text-align: center;
  }
</style>

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
  
  <div id="faq-detail-entire">
    <form id="upt" name="upt" method="post" action="update" class="p-5 bg-light" >
    
      <div id = faqID-div class="form-group">
        <input  type="text" id="faqID" name="faqID" class="form-control" value="${faq.faqID}" hidden="" readonly ><br/>
      </div>
    
      <div class="form-group">
        <label>질문유형*</label><br>
        <select id="questionType" name="questionType" class="form-control">
          <option value="">- 질문 유형을 선택하세요 -</option>
          <option value="배송안내">배송안내</option>
          <option value="주문결제">주문결제</option>
          <option value="주문취소">주문취소</option>
          <option value="교환,환불">교환,환불</option>
          <option value="적립금">적립금</option>
          <option value="기타">기타</option>
        </select>
      </div>
      <div class="form-group">
        <label>제목</label>
        <input type="text" id="title" name="title" class="form-control" value="${faq.title}" readonly>
      </div>
  
      <div class="form-group">
        <label for="contents">내용</label>
        <textarea  id="contents" name="contents" cols="30" rows="10" class="form-control" readonly>${faq.contents}</textarea>
      </div>
      
      <div id="faq-detail-btn-wrap" class="form-group">
        <button id="uptbtn" name="uptbtn" class="btn py-3 px-4 btn-primary" hidden="">수정</button>
        <a href="delete?no=${faq.faqID}" class="btn py-3 px-4 btn-primary" hidden="">삭제</a>
        <button id="backbtn" name="backbtn" class="btn py-3 px-4 btn-primary" onclick="return false;">리스트로 돌아가기</button>
      </div>
  
    </form>
  
  
  
  </div>



  
  
  
  
  
  

<script>
function upt(){
  document.upt.submit();
}

  $(function(){
    $("#backbtn").click(function(){
      location.href = "list.jsp";
    });
  });
  
  
  /*관리자 사용버튼 미구현  */
  $(function(){
    $("#").click(function(){
      $("#title").removeAttr("readonly");
      $("#contents").removeAttr("readonly");
      
    });
  });
</script>
      


</body>

</html>