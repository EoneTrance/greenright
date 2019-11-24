<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
 <div>
 
  <form action="add" method="post">
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
    <!-- <div>
      <input type="text" id="questionType" name="questionType" placeholder="질문유형">
    </div> -->
    <div>
      <input type="text" id="title" name="title" placeholder="제목"><br>
      <textarea id="contents" name="contents" rows="5" cols="50" placeholder="내용을 입력해주세요"></textarea><br>
    </div>
      <button>등록</button>
  
  </form>
 </div>
 

