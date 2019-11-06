<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Community List</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet'
  href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel="stylesheet" href="/css/fontawesome/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <link rel="stylesheet" href="/css/aos.css">

    <link rel="stylesheet" href="/css/ionicons.min.css">

    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/icomoon.css">
    <link rel="stylesheet" href="/css/style.css">
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
</head>
<body>

  <jsp:include page="../greenheader.jsp" />
  <%
    session.setAttribute("memberName", "choi");
  %>
  <%
    session.setAttribute("loginName", "choi");
  %>
  
  

 

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
      
      <div id="np" style="float: left;"></div>
      <br>

      <table class='table table-hover' id="products">

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
              
              <td>${board.no}</td>
              <td><a href='detail?no=${board.no}'>${board.title}</a></td>
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
       
 
   
    <select id="Aselect" name="Aselect" style="height:33px;">
      <option value="Aoption1">제목</option>
      <option value="Aoption2">내용</option>
      <option value="Aoption3">글쓴이</option>
    </select>
 
    <div id="forsel" style="display:inline-block; width:auto;">
      <form action='search1'>
        <input type='text' name='title' style= "width:auto;">
        <button id='search1' class="btn btn-primary" style="height:33px;">검색</button>
      </form>
    </div>
   
   
 
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul id="my-paging">
                <li id='my-paging-first'><span>&lt;</span></li>
                <li data-no="1" class="active">
                  <span class="my-page-no">1</span></li>
                    <c:forEach var="i" begin="2" end="5" step="1">
                     <li data-no="${i}"><span class="my-page-no">${i}</span></li>
                    </c:forEach>
                <li id="my-paging-last"><span>&gt;</span></li>
              </ul>
            </div>
          </div>
        </div>
    </div>
  </section>
<script>
var indexP=1;
$('#my-paging').on('click','.my-page-no', () => {
  var currentLi = $(event.target).parent().attr('data-no');
  $(event.target).parent().parent().children('.active').removeClass('active');
  $(event.target).parent().addClass('active');
  //var boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
  //var param = "commentNo="+commentNo+"&boardNo="+boardNo;
  
});
$('#my-paging-first').click(function(e){
  var page='';
  indexP-=5;
  var i = indexP;
  console.log(i)
  
  if(i <= 1) {
    indexP=1;
    i = indexP;
    console.log(i);
  }
  
  page += "\n<li class='active' data-no='"+i+"'><span class='my-page-no'>"+i+"</span></li>\n";
  page += "<li data-no='"+(i+1)+"'><span class='my-page-no'>"+(i+1)+"</span></li>\n";
  page += "<li data-no='"+(i+2)+"'><span class='my-page-no'>"+(i+2)+"</span></li>\n";
  page += "<li data-no='"+(i+3)+"'><span class='my-page-no'>"+(i+3)+"</span></li>\n";
  page += "<li data-no='"+(i+4)+"'><span class='my-page-no'>"+(i+4)+"</span></li>\n";
  
  
  $('#my-paging > li[data-no]').remove();
  $('#my-paging-first').after(page);
  
  
});
$('#my-paging-last').click(function(){
  var page='';
  indexP+=5;
  var i = indexP;
  console.log(i)
  
 
  var listcount = $('#products tbody tr').length;
  
  console.log(count)
  
 
   
  page += "\n<li class='active' data-no='"+i+"'><span class='my-page-no'>"+i+"</span></li>\n";
  page += "<li data-no='"+(i+1)+"'><span class='my-page-no'>"+(i+1)+"</span></li>\n";
  page += "<li data-no='"+(i+2)+"'><span class='my-page-no'>"+(i+2)+"</span></li>\n";
  page += "<li data-no='"+(i+3)+"'><span class='my-page-no'>"+(i+3)+"</span></li>\n";
  page += "<li data-no='"+(i+4)+"'><span class='my-page-no'>"+(i+4)+"</span></li>\n";
  
  $('#my-paging > li[data-no]').remove();
  $('#my-paging-first').after(page);
});
</script>
<br>
<br>
<jsp:include page="../greenfooter.jsp" />

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
      var textareaVal = $(".cdate").text();
      var count = 0;
      var dt = new Date();
      var day = dt.getDate();
      var month = (dt.getMonth() + 1);
      var year = dt.getFullYear();
      if (month < 10) {
        month = "0" + month;
      }
      if (day < 10) {
        day = "0" + day;
      }
      
      for (var i = 0; i < (textareaVal.length / 10) + 1; i++) {
        var tday = textareaVal.substring(8 + (10 * i), (10 * (i + 1)));
        var tyear = textareaVal.substring((10 * i), (4 + (10 * i)));
        var tmonth = textareaVal.substring((5 + (10 * i)), (7 + (10 * i)));
        if (tday == day && tyear == year && tmonth == (month)) {
          count++
        }
      }
      $("#np").text("새글[" + count + "/" + ((textareaVal.length / 10)) + "]");
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


    <script>
      var member = "${loginName}"
      var smember = "${memberName}"
      if (member != smember) {
        $("#newC").remove();
      }
    </script>

</body>
</html>