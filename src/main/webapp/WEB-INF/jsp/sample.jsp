<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>FAQ DETAIL</title>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>


</head>

<body>


<%-- <jsp:include page="../header.jsp"/>   --%>









  <form id="upt" name="upt" method="post" action="update">
    <input  type="text" id="faqID" name="faqID" value="${faq.faqID}" hidden="" readonly ><br/>
    <label>질문 유형 :</label>
    <div>
      <select id="questionType" name="questionType">
        <option value="">- 질문 유형을 선택하세요 -</option>
        
        <option value="배송안내">배송안내</option>
        <option value="주문결제">주문결제</option>
        <option value="주문취소">주문취소</option>
        <option value="교환,환불">교환,환불</option>
        <option value="적립금">적립금</option>
        <option value="기타">기타</option>
      </select>
    </div>
    제목:<input  type="text" id="title" name="title" value="${faq.title}"><br/>
    내용:<input  type="text" id="contents" name="contents" value="${faq.contents}"><br/>
    <div>
      <button id="uptbtn" name="uptbtn">수정</button>
      <a href="delete?no=${faq.faqID}" >삭제</a>
    </div>
  </form>
  
  
  
<%--   <jsp:include page="../footer.jsp"></jsp:include> --%>
  
  
  

<script>
function upt(){
  document.upt.submit();
}
</script>
      


</body>

</html>