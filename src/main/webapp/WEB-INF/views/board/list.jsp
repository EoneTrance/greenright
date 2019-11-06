<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Community List</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet' href='/css/bootstrap.min.css'>
<link rel='stylesheet' href='/css/common.css'>

<style>
#newC {
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
  margin-bottom: 5px;
  weight: 50px !important;
}
#my-paging-last span:hover {
  background-color:#82ae46;
}
#my-paging-first span:hover {
  background-color: #82ae46;
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

  <div class="hero-wrap hero-bread"
    style="background-image: url('/images/bg_1.jpg');">
    <div class="container">
      <div
        class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
          <p class="breadcrumbs">
            <span class="mr-2"> <a href="index.html"></a>
            </span> <span>greenright</span>
          </p>
          <h1 class="mb-0 bread">COMMUNITY</h1>
        </div>
      </div>
    </div>
  </div>
  <section class="ftco-section ftco-cart">
    <div id='content'
      style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
      
      <div id="np" style="float: right;">새글개수[개]</div>
      <button type="button" onclick="location.href='form.jsp'" id='newC'>글쓰기</button>
     
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
  
 
  var list-count = $('#products tbody tr').length;
  
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
    <select id="Aselect" name="Aselect">
      <option value="Aoption1">제목</option>
      <option value="Aoption2">내용</option>
      <option value="Aoption3">글쓴이</option>
    </select>
  <div id="forsel">
    <form action='search1'>
      <input type='text' name='title'>
      <button id='search1'>검색</button>
    </form>
  </div>
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
                          "<form action='search2'><input type='text' name='contents'><button id='search2'>검색</button></form>");
                } else {
                  $("#forsel").remove;
                  $("#forsel")
                      .html(
                          "<form action='search3'><input type='text' name='name'><button id='search3'>검색</button></form>");
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

  <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
    <div class="container py-4">
      <div class="row d-flex justify-content-center py-5">
        <div class="col-md-6">
          <h2 style="font-size: 22px;" class="mb-0">Subcribe to our
            Newsletter</h2>
          <span>Get e-mail updates about our latest shops and
            special offers</span>
        </div>
        <div class="col-md-6 d-flex align-items-center">
          <form action="#" class="subscribe-form">
            <div class="form-group d-flex">
              <input type="text" class="form-control"
                placeholder="Enter email address"> <input
                type="submit" value="Subscribe" class="submit px-3">
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</body>
</html>