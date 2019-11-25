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
<script src='/node_modules/jquery/dist/jquery.min.js'></script>

</head>
<body>

  <div>
    <div>
      <h1> 자주 묻는 질문</h1>
      <a href='form'>새 글</a><br>
      <p> 
            자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.<br>  
            원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다 . 
      </p>
    </div>  
    
    
    <form id="faqForm" name="faqForm" action="search">
      <div>
        <label>제목 검색 :</label>
        <div>
          <input id="searchInput" name="keyword" type="search" placeholder="검색할 제목을 입력해주세요" aria-label="Search">
          <button id="searchbtn">검색</button> 
          <button id="resetbtn" type="reset">초기화</button>
        </div>
      </div>
      
      <div>
        <label>질문 유형 :</label>
        <div>
          <select id="faqSelect" name="faqSelect">
            <option value="">- 질문 유형을 선택하세요 -</option>
            <option value="1">배송안내</option>
            <option value="2">주문결제</option>
            <option value="주문취소">주문취소</option>
            <option value="교환,환불">교환,환불</option>
            <option value="적립금">적립금</option>
            <option value="기타">기타</option>
          </select>
        </div>
        
      </div>
    
      <div>
        <section>
          <h6>검색 건수 </h6>
          <div>
            <table id="faq">
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
                  <tr id="contents">
                    
                    <td class="content-value"><label>${FAQ.faqID }</label></td>
                    <td class="content-value"><label>${FAQ.questionType }</label></td>
                    <td class="content-value"><label><a href='detail?no=${FAQ.faqID}'>${FAQ.title}</a></label></td>
                  </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          
          
        </section>
      </div>
    
    </form>
  
  </div>

  <script>
   var $setRows = $('#nSelect');
  
  $setRows.change(function (e) {
    e.preventDefault();
    
    var rowPerPage = $('#nSelect option:selected').html() *1;
    
    
    $('#nav').remove();
    var $faq = $('#faq');
    
    $faq.after('<div id="nav">');
    
    var $tr = $($faq).find('tbody tr');
    var rowTotals = $tr.length;
    
    var pageTotal = Math.ceil(rowTotals/rowPerPage);
    var i = 0;
    
    for(; i < pageTotal; i++) {
      $('<a href="#"></a>')
      .attr('rel', i)
      .html(i + 1)
      .appendTo('#nav');
    }
    
    $tr.addClass('off-screen')
    .slice(0, rowPerPage)
    .removeClass('off-screen');
    
    var $pagingLink = $('#nav a');
    $pagingLink.on('click', function (evt) {
      evt.preventDefault();
      var $this = $(this);
      if ($this.hasClass('active')){
        return;
      }
      $pagingLink.removeClass('active');
      $this.addClass('active');
      
      var currPage = $this.attr('rel');
      var startItem = currPage * rowPerPage;
      var endItem = startItem + rowPerPage;
      $tr.css('opacity', '0.0')
      .addClass('off-screen')
      .slice(startItem, endItem)
      .removeClass('off-screen')
      .animate({opacity: 1}, 300);
    });
    
    $pagingLink.filter(':first').addClass('active');
    
  });
  
  $setRows.submit(); 
 
  
    
  </script>
  
  <script>
  
  $(function(){
    
  })
</script>
  

</body>
</html>