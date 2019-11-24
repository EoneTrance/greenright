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
 

  
  
  <div class="about-author d-flex p-4 bg-light faq">
    <div class="col-md-7 heading-section ftco-animate text-center fadeInUp ftco-animated faq">
      <h2 class="mb-4">자주 묻는 질문 ( F A Q )</h2>
      <p>자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.<br>  
              원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다 . </p>
    </div>
  </div>
  
  <div>
 
    <div class="faq about-author d-flex p-4 bg-light">
        <form  class="search-form faq" onsubmit="return false;">
          <div class="form-group d-flex">
          <input id="keyword" name ="keyword" class="form-control"  placeholder="검색..." style="font-size: 19px;">
          </div> 
            <div class="form-group">
              <label for="country">질문유형</label>
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
        </form>
        
    </div>
    
    
        <div class="faqbtn"> 
          <input type="reset"  id="resetbtn" name="resetbtn" value="초기화" class="btn btn-primary submit px-3 faq faqbtn"> 
          <input type="button"  id="searchbtn" name="searchbtn" value="검색" class="btn btn-primary submit px-3 faq faqbtn">
        </div>
    
    
    <hr style="margin: 15px">
    
    <table id="faq-table" class="table table-striped">
     <caption> 한 페이지당:
      <select id="nSelect" class="nSelect" name= "rowPerPage1">
        <option value=5> 5개</option>
        <option value=10> 10개</option>
        <option value=20> 20개</option>
      </select>
    </caption>
    
      <thead style="background: #82ae46;">
        <tr>
          <th scope="col">번호</th>
          <th scope="col">질문유형</th>
          <th scope="col">질문</th>
        </tr>
      </thead>
      <tbody id="tbody_insert">
        <c:forEach items="${faqs}" var="FAQ">
          <tr id="contents">
            <td class="content-value faq"><label>${FAQ.faqID }</label></td>
            <td class="content-value faq"><label>${FAQ.questionType }</label></td>
            <td class="content-value faq"><label><a href='detail?no=${FAQ.faqID}'>${FAQ.title}</a></label></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    
    
    
   <nav id="faq-page" aria-label="Page navigation example">
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
      <li class="page-item"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
  </nav>
    
    
    
    
    
    
    
    <div style="text-align: center;">
      <a href="#" class="btn btn-primary">1대1 문의</a>
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
    
  /* var $setRows = $('#nSelect');
  
    $("#nSelect").val(5).trigger("change"); 
 
     $setRows.change(function (e) {
    e.preventDefault();
    
    var rowPerPage = $('#nSelect option:selected').html() *1;
    
    
    $('#nav').remove();
    var $faq = $('#faq-table');
    
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
    
   */
 
  
  </script>
  
  
  
<script>
   /*검색 ajax 적용*/
      $(function(){
        $("#searchbtn").click(function(){
          var allData = {"keyword" : $("#keyword").val()}
          $.ajax({
            url : "../json/faq/search",
            type : "GET",
            dataType : "json",
            data : allData,
            success : function(data) {
              var list = data.result;
              var tableTag ="";
              for(var i = 0 ; i < list.length; i++) {
                tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
                "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
              };
              $("#tbody_insert").html(tableTag);
            }
          });
        })
      
      });
</script>

<script>

/*셀렉트 ajax 적용 */
  $(function(){
    $("#faqselect").change(function(){
      var allData = {"keyword" : $("#faqselect option:selected").val()}
      $.ajax({
        url : "../json/faq/search",
        type : "GET",
        dataType : "json",
        data : allData,
        success : function(data) {
          var list = data.result;
          var tableTag ="";
          for(var i = 0 ; i < list.length; i++) {
            tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
            "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
          };
          $("#tbody_insert").html(tableTag);
        }
      });
    })
  });
   
  
  /*리셋버튼 ajax 적용  */
  $(function(){
    $("#resetbtn").click(function(){
      $.ajax({
        url : "../json/faq/list",
        type : "GET",
        dataType : "json",
        success : function(data){
          var list = data.result;
          var tableTag ="";
          for(var i = 0 ; i < list.length; i++) {
            tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
            "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
          };
          $("#tbody_insert").html(tableTag);
        }
      })
    });
  })
  
  
  
  /* 검색  Enter ajax 적용*/
  $(function(){
    
    $("#keyword").keypress(function(key){
      if(key.keyCode == 13) {
        var allData = {"keyword" : $("#keyword").val()}
        $.ajax({
          url :"../json/faq/search",
          type : "GET",
          dataType : "json",
          data : allData,
          success : function(data) {
            var list = data.result;
            var tableTag ="";
            for(var i = 0 ; i < list.length; i++) {
              tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
              "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
            };
            $("#tbody_insert").html(tableTag);
          }
          
        });
      }
      
    });
   
  })
  
  
  

  
    
  
</script>   
       
      
      
  
  

</body>
</html>