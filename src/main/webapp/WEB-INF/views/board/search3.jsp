

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

#my-paging-last span:hover {
  background-color:#82ae46;
}
#my-paging-first span:hover {
  background-color: #82ae46;
}
.btn.btn-primary {
   width: 68px;
   height: 38px;
   border-top-left-radius: 2px;
   border-top-right-radius: 2px;
   border-bottom-right-radius: 2px;
   border-bottom-left-radius: 2px;
   font-size: 14px; 
}

</style>




 <div class="hero-wrap hero-bread" style="background-image: url('/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center fadeInUp ftco-animated">
            <p class="breadcrumbs">
              <span class="mr-2">
                <a href="index.html"></a>
              </span> 
              <span>greenright</span>
            </p>
            <h1 class="mb-0 bread">COMMUNITY</h1>
          </div>
        </div>
      </div>
    </div>
<section class="ftco-section">
<div id='content'
      style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
       
   
          

<div id='content'>
<h1>게시판</h1>
 
<a href='form'>새 사진게시물</a><br>
<div id ="np"style=float:right;>검색결과개수:[개]</div>
>>>>>>> c28f244e9d67e839ca34df71c49211e075300ec3
<table class='table table-hover' id="products" >

<thead class="thead-primary">
<tr class="text-center">
  <th>번호</th>
  <th>제목</th>
  <th>글쓴이</th>
  <th>등록일</th>
  <th>조회수</th>
  <th>추천수</th>
</tr>
</thead>

     <tbody id='tb1'>
          <c:forEach items="${boards}" var="board">
            <tr class="tr1">
              
              <td id="nono">${board.no}</td>
              <td>
              <a  href='detail?no=${board.no}'>${board.title}</a>
              <c:if test="${board.createdDate == today}">
              <img  src='/images/new.jpg'/>
              </c:if>
              </td>
              <td>${board.member.name}</td>
              <td class="cdate">${board.createdDate}</td>
              <td>${board.viewCount}</td>
                <td>${board.recommendation}</td>
            </tr>
          </c:forEach>
        </tbody>
</table>
<p style="text-align: right;">
       <button type="button" onclick="location.href='form.jsp'" id='newC' class="btn btn-primary" >글쓰기</button>
       </p>
       
  <select id="Aselect" name="Aselect" style="height:33px; margin-left:400px;">
      <option value="Aoption1">제목</option>
      <option value="Aoption2">내용</option>
      <option value="Aoption3">글쓴이</option>
    </select>
 
    <div id="forsel" style="display:inline-block; width:auto;">
      <form action='search1'>
        <input type='text' name='title' id="searchtitle" style= "width:auto; margin-right: 330px;">
        <button id='search1' class="btn btn-primary" style="height:33px;">검색</button>
      </form>
    </div>
   
   
 
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul id="my-paging">
                <li id='my-paging-first'>
                 <span class="page-item" data-page="prev"  style="cursor: pointer;">&lt;</span>
                </li>
                <li data-page="1" class="active">
               <!-- <span class="my-page-no">1</span> -->  
                 </li>
                   <c:forEach begin="${beginPage}" end="${endPage}" var="page" >
                     <li class="page-item" data-page="${page}">
                       <span style ="${page != pageNo ? "cursor: pointer;" : "color: white; background-color: #82ae46;"} border:1px solid #e6e6e6">${page}</span>
                     </li>
                    </c:forEach>
                    
                      <li id="my-paging-last">
                      <span class="page-item" data-page="next" style="cursor: pointer;">&gt;</span> 
                      </li>
              </ul>
            </div>
          </div>
        </div>
    </div>
  </section>     

<tbody>
<c:forEach items="${boards}" var="board" >
  <tr class="tr1">
    <td>${board.no}</td>
    <td><a href='detail?no=${board.no}'>${board.title}</a></td>
    <td>${board.member.nickname}</td>
    <td class="cdate">${board.createdDate}</td>
    <td>${board.viewCount}</td>
    <td>${board.recommendation}</td>
  </tr>
</c:forEach> 
</tbody>
</table>
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

<script>
$('#my-paging').on('click','.page-item', () => {
  /*  var currentLi = $(event.target).parent().attr('data-page'); 
   $(event.target).parent().parent().children('.active').removeClass('active'); */ 
  $(event.target).parent().addClass('active');
  
  //var boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
  //var param = "commentNo="+commentNo+"&boardNo="+boardNo;
  
});

/* var currentPage = ${pageNo};

$('.page-item').click((e) => {
  //e.preventDefault();
 
  //var page = e.currentTarget.getAttribute('data-page');
  var page = $(e.currentTarget).attr('data-page');

  $.get("list",{
  }, function(success) {
    if (page == "prev") {
      if (currentPage == 1)
        return;
      location.href = "list?pageNo=" + (currentPage - 1) + "&pageSize=" + ${pageSize};
      
      
    } else if (page == "next") {
      if (currentPage >= ${totalPage})
        return
      location.href = "list?pageNo=" + (currentPage + 1) + "&pageSize=" + ${pageSize};
    
    } else {
      location.href = "list?pageNo=" + page + "&pageSize=" + ${pageSize};
    
    }
    
  });


}); 

*/

 var currentPage = ${pageNo};
$('.page-item').click((e) => {
  e.preventDefault();
  // e.currentTarget? 리스너가 호출될 때, 그 리스너가 등록된 태그를 가르킨다.
  // e.target? 이벤트가 발생된 원천 태그이다. 
  //var page = e.currentTarget.getAttribute('data-page');
  var page = $(e.currentTarget).attr('data-page');
  if (page == "prev") {
    if (currentPage == 1)
      return;
    location.href = "search3?name="+"${name}"+"&pageNo=" + (currentPage - 1) + "&pageSize=" + ${pageSize};
    
    
  } else if (page == "next") {
    if (currentPage >= ${totalPage})
      return
    location.href = "search3?name="+"${name}"+"&pageNo="+ (currentPage + 1) + "&pageSize=" + ${pageSize};
  
  } else {
    if (page != currentPage)
      location.href = "search3?name="+"${name}"+"&pageNo=" + page + "&pageSize=" + ${pageSize};
    
  }
}); 



</script>  
<br>
<br>
<script>
      $('#Aselect')
          .change(
              function() {
                var state = jQuery('#Aselect option:selected').val();
                if (state == 'Aoption1') {
                } else if (state == 'Aoption2') {
                 $("#forsel").remove; 
                  $("#forsel")
                      .html(
                          "<form action='search2'><input type='text' name='contents'><button id='search2' class='btn btn-primary' style='height:33px;'>검색</button></form>");
                } else {
                  $("#forsel").remove;
                  $("#forsel")
                      .html(
                          "<form action='search3'><input type='text' name='name'><button id='search3' class='btn btn-primary' style='height:33px;'>검색</button></form>");
                }
              });
    </script>

<script>
      $(document).ready(function() {
        $("select option[value=5]").attr("selected", true);
      });
      var $setRows = $('#nSelect');
      $setRows.change(function(e) {
        e.preventDefault();
        var rowPerPage = $('#nSelect option:selected').val() * 1;
        $('#nav').remove();
        var $products = $('#products');
        $products.after('<div id="nav">');
        var $tr = $($products).find('tbody tr');
        var rowTotals = $tr.length;
        var pageTotal = Math.ceil(rowTotals / rowPerPage);
        var i = 0;
        for (; i < pageTotal; i++) {
          $('<a href="#"></a>').attr('rel', i).html(i + 1).appendTo('#nav');
        }
        $tr.addClass('off-screen').slice(0, rowPerPage).removeClass(
            'off-screen');
        var $pagingLink = $('#nav a');
        $pagingLink.on('click', function(evt) {
          evt.preventDefault();
          var $this = $(this);
          if ($this.hasClass('active')) {
            return;
          }
          $pagingLink.removeClass('active');
          $this.addClass('active');
          var currPage = $this.attr('rel');
          var startItem = currPage * rowPerPage;
          var endItem = startItem + rowPerPage;
          $tr.css('opacity', '0.0').addClass('off-screen').slice(startItem,
              endItem).removeClass('off-screen').animate({
            opacity : 1
          }, 300);
        });
        $pagingLink.filter(':first').addClass('active');
      });
      $setRows.submit();
    </script>

</script>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<div id='content'>
<h1>게시판</h1>
 
<a href='form'>새 사진게시물</a><br>
<div id ="np"style=float:right;>검색결과개수:[개]</div>
<table class='table table-hover' id="products" >
  <caption>
                한페이지당:
                <select id ="nSelect" name= "rowPerPage1">
                <option value=5>5개</option>
                <option value=10>10개</option>
                <option value=20>20개</option>
                </select>

    </caption>
    <thead>
<tr>
  <th>번호</th>
  <th>제목</th>
  <th>글쓴이</th>
  <th>등록일</th>
  <th>조회수</th>
  <th>추천수</th>
</tr>
</thead>
<tbody>
<c:forEach items="${boards}" var="board" >
  <tr class="tr1">
    <td>${board.no}</td>
    <td><a href='detail?no=${board.no}'>${board.title}</a></td>
    <td>${board.member.nickname}</td>
    <td class="cdate">${board.createdDate}</td>
    <td>${board.viewCount}</td>
    <td>${board.recommendation}</td>
  </tr>
</c:forEach> 
</tbody>
</table>
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

<script>
    var textareaVal = $(".cdate").text();
    $("#np").text("검색결과 [총:"+ ((textareaVal.length/10)) +"개]");
    </script>
    <script>
    
    $(document).ready(function(){
    $('#nSelect').val(5).trigger('change');

  });


var $setRows = $('#nSelect');

$setRows.change(function (e) {
    e.preventDefault();
    var rowPerPage = $('#nSelect option:selected').val() *1;

    $('#nav').remove();
    var $products = $('#products');

    $products.after('<div id="nav">');


    var $tr = $($products).find('tbody tr');
    var rowTotals = $tr.length;

    var pageTotal = Math.ceil(rowTotals/ rowPerPage);
    var i = 0;

    for (; i < pageTotal; i++) {
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
        if ($this.hasClass('active')) {
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
