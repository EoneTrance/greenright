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
    
   




   <div class="py-1 bg-primary">
      <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
          <div class="col-lg-12 d-block">
            <div class="row d-flex">
              <div class="col-md pr-4 d-flex topper align-items-center">
                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                <span class="text">+ 1235 2355 98</span>
              </div>
              <div class="col-md pr-4 d-flex topper align-items-center">
                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                <span class="text">youremail@email.com</span>
              </div>
              <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                <span class="text">3-5 Business days delivery &amp; Free Returns</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
    
    <!-- nav -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.html">GreenRight</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="wishlist.html">Wishlist</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
            <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
            <li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
            <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

          </ul>
        </div>
      </div>
    </nav>
    
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
                      <option value="주문결제">주문결제</option>
                      <option value="주문취소">주문취소</option>
                      <option value="교환, 환불">교환, 환불</option>
                      <option value="적립금">적립금</option>
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
        
        <a href="form" class="btn btn-primary">새글</a>
        <a href="#" class="btn btn-primary">1대1 문의</a>
      </div>
      
    
    
  </div>  
    
<!-- footer  -->
<footer class="ftco-footer ftco-section">
  <div class="container">
    <div class="row">
      <div class="mouse">
        <a href="#" class="mouse-icon">
          <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
        </a>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Vegefoods</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
          <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span class="icon-twitter"></span></a></li>
            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span class="icon-facebook"></span></a></li>
            <li class="ftco-animate fadeInUp ftco-animated"><a href="#"><span class="icon-instagram"></span></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4 ml-md-5">
          <h2 class="ftco-heading-2">Menu</h2>
          <ul class="list-unstyled">
            <li><a href="#" class="py-2 d-block">Shop</a></li>
            <li><a href="#" class="py-2 d-block">About</a></li>
            <li><a href="#" class="py-2 d-block">Journal</a></li>
            <li><a href="#" class="py-2 d-block">Contact Us</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-4">
         <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Help</h2>
          <div class="d-flex">
            <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
              <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
              <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
              <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
              <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
            </ul>
            <ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">FAQs</a></li>
              <li><a href="#" class="py-2 d-block">Contact</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Have a Questions?</h2>
          <div class="block-23 mb-3">
            <ul>
              <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
              <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
              <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">

        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright ©<script>document.write(new Date().getFullYear());</script>2019 All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
      </div>
    </div>
  </div>
</footer>

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



<script type="text/javascript">

/* 페이지 사이즈 */
      /* (function() {
        $('#pageSize').val('${pageSize}')
      })();
      
      $(function(){
        
        $('#pageSize').change((e) => {
          
           $.ajax({
            url: "../json/faq/list",
            type: "GET",
            dataType: "json",
            data: "pageSize=" + $("#pageSize").val(),
            success: function(data){
              
             console.log(data);
             var list = data.result.faqs;
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
  
  

  
  
  
  
      
     



