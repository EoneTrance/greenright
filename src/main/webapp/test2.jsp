<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
 form {
    width: 500px;
}
table {
    border-collapse:collapse;
    margin-bottom: 10px;
}
th, td {
    padding: 3px 10px;
}
.off-screen {
    display: none;
}
#nav {
    width: 500px;
    text-align: center;
}
#nav a {
    display: inline-block;
    padding: 3px 5px;
    margin-right: 10px;
    font-family:Tahoma;
    background: #ccc;
    color: #000;
    text-decoration: none;
}
#nav a.active {
    background: #333;
    color: #fff;
}
 </style>
<meta charset="UTF-8">
<title>FAQ 게시판</title>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>

<script>$(document).ready(function(){
  $('#example').DataTable();
})</script>
</head>
<body>

  <div>
    <div>
      <h1> 자주 묻는 질문</h1>
      <p> 
            자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.<br>  
            원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다 . 
      </p>
    </div>  
    
    
    <form>
      <div>
        <label>제목 검색 :</label>
        <div>
          <input type="search" placeholder="검색할 제목을 입력해주세요" aria-label="Search">
        </div>
      </div>
      
      <div>
        <label>질문 유형 :</label>
        <div>
          <select id="faqSelect">
            <option value="">- 질문 유형을 선택하세요 -</option>
            <option value="1">배송 안내</option>
            <option value="1">주문 결제</option>
            <option value="1">주문 취소</option>
            <option value="1">교환, 환불</option>
            <option value="1">적립금</option>
            <option value="1">기타</option>
          </select>
        </div>
        
        <div>
          <input role="button" type="submit" value="search">
          <input type="reset" value="Reset">
        </div>
      </div>
    
      <div>
        <section>
          <h6>검색 건수 </h6>
          <div>
            <table id="faq" class="display"  >
              <caption> 한 페이지당:
                <select id="nSelect" class="nSelect" name= "rowPerPage1">
                  <option value=5> 5개</option>
                  <option value=10> 10개</option>
                  <option value=20> 20개</option>
                </select>
              </caption>
              
              <thead>
                <tr>
                  <th>번호</th>
                  <th>질문 유형</th>
                  <th>질문</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${faqs}" var="FAQ">
                  <tr>
                    <td>${FAQ.faqID }</td>
                    <td>${FAQ.questionType }</td>
                    <td><a href='detail?faqID={FAQ.faqID}'>${FAQ.title }</a></td>
                  </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          <!-- <div>
              <nav id="pageSelect" aria-label="Page navigation example" style="text-align: center;">
                <ul class="pagination">
                  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
              </nav>
          </div> -->
          
          <div style="text-align: center;">
              <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link disabled" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
          </div>
          
        </section>
      </div>
    
    </form>
  
  </div>

<script type="text/javascript">
$("#faq").removeClass('display').addClass('table table-striped table-bordered')



</script>  
  

</body>
</html>