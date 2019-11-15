
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
