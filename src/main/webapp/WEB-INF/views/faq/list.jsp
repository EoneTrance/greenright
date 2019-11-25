<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<style>
    div#entire{
    max-width:1200px ;
    width: 1200px ;
    margin: auto ;
    }
    
    /*faq-box  */
    div#faq-box{
    
    width: 1080px;
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
    
    label.search-label {
    width: 50px;
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
    
     .faq.select-wrap {
    display: inline-flex;
    }
    
    form.search-form {
    display: inline-flex;
    text-align: center;
    margin: auto;
    }
    
    label.search-label {
    font-size: 20px;
    margin: auto;
    text-align: center;
    }
    
    select#faqselect {
    margin-left: 15px;
    margin-right: 15px;
    }
    
    .div-form {
    display: inline-flex;
    }
    
    input#keyword {
    font-size: 19px;
    text-align: center;
    }
    
    input#searchbtn {
    margin: 10px;
    width: 100px;
    }
    
    table#faq-table {
     margin: 15px;
    }
    
    div.faq-per-page {
    float: right;
    margin-bottom: 10px;
    }
    
    div.insert-wrap {
    flaot: left;
    margitn-bottom: 10px;
    }
    
    
    td.content-value.faq {
    padding: 15px;
    } 
    div#btn-wrap {
    margin-bottom: 100px;
    }
    
    nav.pagination-wrap {
    text-align: center;
    margin: auto;
    inline-size: fit-content;
    }
    
    .page-item.active .page-link {
    z-index: 1;
    color: #fff;
    background-color: #82ae46 !important;
    border-color: #82ae46 !important;
    }
    
    a.page-link {
    color: black;
    width: 40px;
    height: 40px;
    text-align: center;
    display: inline-block;
    border-radius: 50%;
    margin: 2px;
    }
    
    .page-item:first-child .page-link {
    margin-left: 0;
    border-top-left-radius: 50% !important; 
    border-bottom-left-radius: 50% !important;
    }
    
    .page-item:last-child .page-link {
    border-top-right-radius: 50% !important;
    border-bottom-right-radius: 50% !important;
    }
    
    
   /* #pagination .page-item.active .page-link {
    z-index: 1;
    color: #fff;
    background-color: #82ae46 ;
    border-color: #82ae46 ;
    }
    
    #pagination .page-link {
    color:#000000 ;
    }
    
    nav#pagination-nav {
    margin: auto;
    inline-size: min-content;
    margin-top: 40px;
    }
    */
 </style>
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

<%--   <%
    session.setAttribute("memberNo", "1");
  %> --%>

  <div id="entire">
    
      <!-- faq 배경  -->
      <div  id="faq-box" class="col-lg-8 ftco-animate fadeInUp ftco-animated"> 
        <div class="about-author d-flex p-4 bg-light">
          
          <div class="desc align-self-md-center">
            <h3>자주 묻는 질문 (FAQ)</h3>
            <p>자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.</p>
            <p>원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다.</p>
          </div>
          
        </div>
      </div>  
      
      
      <div id="search-box" class="col-lg-8 ftco-animate fadeInUp ftco-animated">
        <div id="search-box-contents" class="about-author d-flex p-4 bg-light">
          <form  class="search-form" onsubmit="return false;">
             <div class="div-form">
                <div class="form-group">
                  <label class="search-label">검색 : </label>
                  <div class="faq select-wrap">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="faqselect" id="faqselect" class="form-control faq">
                      <option value="default">전체 </option>
                      <option value="배송안내">배송안내</option>
                      <option value="주문">주문</option>
                      <option value="교환, 환불">교환, 환불</option>
                      <!-- <option value="적립금">적립금</option> -->
                      <option value="기타">기타</option>
                    </select>
                  </div>
                </div>
                <div class="form-group d-flex">
                  <input id="keyword" name ="keyword" class="form-control" >
                </div>
              </div> 
              <div class="faqbtn"> 
                <input type="button"  id="searchbtn" name="searchbtn" value="검색" class="btn btn-primary submit px-3 faq faqbtn">
              </div>
          </form>
          
          
        </div>
      </div>
      
      
      
       <!-- <div class="faq-per-page"> 한 페이지당:
        <select id="pageSize" class="pageSize" name= "rowPerPage1">
          <option value=5> 5개</option>
          <option value=10 selected="selected"> 10개</option>
          <option value=20> 20개</option>
        </select>
      </div> -->
 
      
      <table id="faq-table" class="table table-striped">
        <colgroup>
          <col width="20%">
          <col width="20%">
          <col width="60%">
        </colgroup>    
            
        <thead class="thead-primary" style="background: #82ae46;">
          <tr>
            <th scope="col">번호</th>
            <th scope="col">질문유형</th>
            <th scope="col">질문</th>
          </tr>
        </thead>
        <tbody>
           <c:forEach items="${faqs}" var="FAQ">
            <tr id="contents" class="contents">
              <td class="content-value faq">${FAQ.faqID }</td>
              <td class="content-value faq">${FAQ.questionType }</td>
              <td class="content-value faq"><a href='detail?no=${FAQ.faqID}'>${FAQ.title}</a></td>
            </tr>
          </c:forEach>
          
          
            
          
        </tbody>
      </table>
      

      
      
      <!-- 페이지네이션 원본  -->
        <%-- <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled" data-page="prev">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
              Previous
            </a>
          </li>
        <c:forEach begin="${beginPage}" end="${endPage}" var="page"> 
          <li class="page-item" data-page="${page}">
            <a class="page-link" ${page != pageNo? "href=#" : ""}>${page}</a>
          </li>
        </c:forEach>
          <li id="next-btn" class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav> --%>
      
      
<!-- append 페이지네이션  -->
<nav id="pagination-nav" class="pagination-wrap" aria-label="Page navigation example"></nav>
      
      
      
      
      
      
      <div id="btn-wrap" style="text-align: center;">
        <!-- <input id="faq-insert-btn" class="btn btn-primary submit px-3 faq faqbtn" type="button" value="새글"> -->      
        <c:if test="${loginUser.memberClass == 0}">
          <a href="form" class="btn btn-primary">새글</a>
        </c:if>
        <a href="../inquire/list" class="btn btn-primary">1대1 문의</a>
      </div>
      
    
    
  </div>  
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>
<script src='/js/bootstrap-datepicker.js'></script>
<script src="/js/jquery.twbsPagination.min.js"></script>
<script src="/js/jquery.twbsPagination.min.js"></script>
<script id="paginationTemplate" type="text/x-handlebars-template">
<ul class="pagination">
  <li id="previous-page" class="page-item">
    <a class="page-link" href="javascript:void(0)" aria-label="Previous">
      <span>&laquo;</span>
      <span class="sr-only">Previous</span>
    </a>
  </li>
{{#each pages}}
  <li class='page-item current-page {{active}}' data-page-no='{{pageNo}}'>
    <a class='page-link' href='javascript:void(0)'>{{pageNo}}</a>
  </li>
{{/each}}
  <li id="next-page" class="page-item">
    <a class="page-link" href="javascript:void(0)" aria-label="Next">
      <span aria-hidden="true">»</span>
      <span class="sr-only">Next</span>
    </a>
  </li>
</ul>
</script>
  





<script>
/*페이징  */
var paginationTemplateSrc = $('#paginationTemplate').html();
var template = Handlebars.compile(paginationTemplateSrc);
var numberOfItems = ${size};
var limitPerPage = ${pageSize};
var totalPages = Math.ceil(numberOfItems / limitPerPage);
var searchKeyword = undefined;
var searchQuestionType = undefined;
createPagination(1, totalPages, 1);
function createPagination(startPage, endPage, activePageNo) {
  var pages = []
  for (var i = startPage; i <= endPage; i++) {
    pages.push({
      pageNo: i, 
      active: (i == activePageNo) ? "active" : ""
    })
  }
  var paginationHtml = template({
    "pages": pages
  });
  $('#pagination-nav').html(paginationHtml);
}
$("#pagination-nav").on("click", "#next-page", function() {
  var currentPage = $(".pagination li.active").index();
  if (currentPage === totalPages) {
    return false;
  }
  moveActivePage(currentPage, +1);
  loadData(currentPage + 1);
});
     
$("#pagination-nav").on("click", "#previous-page", function() {
  var currentPage = $(".pagination li.active").index();
  if (currentPage === 1) {
    return false;
  }
  moveActivePage(currentPage, -1);
  loadData(currentPage - 1);
});
$("#pagination-nav").on("click", ".page-item.current-page", (e) => {
  var currentPage = $(".pagination li.active").index();
  var pageNo = parseInt($(e.currentTarget).attr('data-page-no'));
  moveActivePage(pageNo, 0);
  loadData(pageNo);
});
/* 검색 이벤트 ajax  */
$("#searchbtn").click(function(){
  searchKeyword = $("#keyword").val();
  searchQuestionType = $("#faqselect option:selected").val();
  loadData(1);
})
/* 검색 Enter 이벤트 ajax  */
 $("#keyword").keypress(function(key){
  if(key.keyCode == 13)
  searchKeyword = $("#keyword").val();
  searchQuestionType = $("#faqselect option:selected").val();
  loadData(1);
}) 
/*select 이벤트 ajax  */
$("#faqselect").change(function(){
  searchKeyword = $("#keyword").val();
  searchQuestionType = $("#faqselect option:selected").val();
  loadData(1);
})
function moveActivePage(currentPage, direction) {
  if ((direction > 0 && currentPage === totalPages) || (direction < 0 && currentPage == 1)) {
    return false;
  }
  currentPage += direction;
  console.log(currentPage, direction);
  $(".pagination li").removeClass("active");
  $(".pagination li.current-page:eq(" + (currentPage - 1) + ")").addClass("active");
}
function loadData(pageNo) {
  $.ajax({
    url: "../json/faq/list",
    type: "GET",
    dataType: "json",
    data: {
      "pageNo": pageNo,
      "pageSize": ${pageSize},
      "keyword": (searchKeyword) ? searchKeyword : undefined,
      "questionType": (searchQuestionType) ? searchQuestionType : undefined
    },
    success: function(data){
      console.log(data);
      var list = data.result.faqs;
      var tableTag ="";
     
      $("td").removeClass("content-value faq");
      
      for(var i = 0 ; i < list.length; i++) {
        tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
        "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
      };
      $("#faq-table tbody").html(tableTag);
      $("td").addClass("content-value faq");
      
      totalPages = data.result.totalPage;
      
      // 페이지 번호 갱신 
      createPagination(1, data.result.totalPage, pageNo);
    }
  });
  
}
</script>
  

 
 <script type="text/javascript">
 /*
 $(function(){
   $("#faqselect").change(function(){
     var allData = {questionType: $("#faqselect option:selected").val(), keyword: $("#keyword").val()};
     $.ajax({
       url : "../json/faq/search",
       type : "GET",
       dataType : "json",
       data : allData,
       success : function(data) {
           console.log(data);
         var list = data.result;
         var tableTag ="";
         $("td").removeClass("content-value faq");
         for(var i = 0 ; i < list.length; i++) {
           tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
           "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
         };
         $("#tbody_insert").html(tableTag);
         $("td").addClass("content-value faq");
         
       }
     });
   });
 });
 */
 </script> 
 
 
  
<script> 
/* 셀렉트 ajax */
/* $(function(){
  $("#faqselect").change(function(){
    var allData = {questionType: $("#faqselect option:selected").val(), keyword: $("#keyword").val()};
    $.ajax({
      url : "../json/faq/search",
      type : "GET",
      dataType : "json",
      data : allData,
      success : function(data) {
          console.log(data);
        var list = data.result;
        var tableTag ="";
        $("td").removeClass("content-value faq");
        for(var i = 0 ; i < list.length; i++) {
          tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
          "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
        };
        $("#tbody_insert").html(tableTag);
        $("td").addClass("content-value faq");
        
      }
    });
  });
}); */
$(function(){
  /* enter 이벤트 ajax  */
  /*
  $("#keyword").keypress(function(key){
    if(key.keyCode == 13) {
      var allData = {"questionType": $("#faqselect option:selected").val(), "keyword": $("#keyword").val()};
      $.ajax({
        url :"../json/faq/search",
        type : "GET",
        dataType : "json",
        data : allData,
        success : function(data) {
          console.log(data);
          var list = data.result;
          var tableTag ="";
          $("td").removeClass("content-value faq");
          for(var i = 0 ; i < list.length; i++) {
            tableTag += "<tr><td>" + list[i].faqID + "</td><td>" + list[i].questionType + 
            "</td><td><a href='detail?no="+ list[i].faqID+"'>" + list[i].title +"</a></td></tr>"
          };
          $("#tbody_insert").html(tableTag);
          $("td").addClass("content-value faq");
        }
        
      });
    }
    
  });
  */
 
})
</script>  
