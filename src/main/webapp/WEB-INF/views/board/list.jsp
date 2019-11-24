<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>

<link rel="stylesheet" href="/css/mypage.css">

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

  <%
    session.setAttribute("memberName", "choi");
  %>
  <%
    session.setAttribute("loginName", "choi");
  %>
  
  

  <!-- <div id="newimg" style="display:none">
    <img  src='/images/new.jpg'/>
    </div> -->

  <section class="ftco-section">
    <div id='content'
      style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
      
      <div id="np" style="float:left;"></div>
      
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
              <td id="btitle"><a href='detail?no=${board.no}'>${board.title}</a></td>
              <td>${board.member.nickname}</td>
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
  </div>
</section>

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
    location.href = "list?pageNo=" + (currentPage - 1) + "&pageSize=" + ${pageSize};
    
    
  } else if (page == "next") {
    if (currentPage >= ${totalPage})
      return
    location.href = "list?pageNo=" + (currentPage + 1) + "&pageSize=" + ${pageSize};
  
  } else {
    console.log(e.currentTarget);
    if (page != currentPage)
      location.href = "list?pageNo=" + page + "&pageSize=" + ${pageSize};
    
  }
}); 



</script>  
  
<!-- <script>
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
</script> -->

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
                          "<form action='search3'><input type='text' name='nickname'><button id='search3' class='btn btn-primary' style='height:33px;'>검색</button></form>");
                }
              });
    </script>
<script>


var dt;
dt = new Date();
dt = dt.getFullYear() + "-" + (dt.getMonth() + 1) + "-" + dt.getDate();
console.log(dt);
var img = document.getElementById('#newimg');
console.log(img);

if($('.cdate') == dt) {
  $('#btitle').append(imgs);
}



/* var newt = "<img src='/images/new.jpg' />"
if(year.equals(yea)){
  $("#btitle").append("newt");
} */



   /*    var textareaVal = $(".cdate").text();
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
      $("#np").text("새글[" + count + "/" + ((textareaVal.length / 10)) + "]"); */
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

