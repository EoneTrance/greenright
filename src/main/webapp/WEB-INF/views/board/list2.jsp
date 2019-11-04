<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>사진 게시물 목록</title>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
  <link rel='stylesheet' href='/css/common.css'>
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
</head>
<body>

<jsp:include page="../header.jsp"/>
<% session.setAttribute("memberName","choi");%>
<% session.setAttribute("loginName","choi");%>
<div id='content'>


<h1>게시판</h1>
 
<a href='form' id='newC'>새 사진게시물</a> 
<div id ="np"style=float:right;>새글개수[개]</div>
<br>
<select id ="Aselect" name="Aselect">
<option value ="Aoption1">제목</option>
<option value ="Aoption2">내용</option>
<option value ="Aoption3">글쓴이</option>
</select>
<div id="forsel">
<form action='search1'><input type='text' name='title'><button id='search1'>검색</button></form>
</div>
<table class='table table-hover' id="products">
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
<tbody id ='tb1'>
<c:forEach items="${boards}" var="board" >
  <tr class="tr1">
    <td>${board.no}</td>
    <td><a href='detail?no=${board.no}'>${board.title}</a></td>
    <td>${board.member.name}</td>
    <td class="cdate">${board.createdDate}</td>
    <td>${board.viewCount}</td>
    <td>1</td>
  </tr>
</c:forEach> 
</tbody>
</table>
</div>

<script>

$('#Aselect').change(function() {
  var state = jQuery('#Aselect option:selected').val();
  if ( state == 'Aoption1' ) {
  } else if ( state == 'Aoption2'){
    $("#forsel").remove;
    $("#forsel").html("<form action='search2'><input type='text' name='contents'><button id='search2'>검색</button></form>");
  } else {
    $("#forsel").remove;
    $("#forsel").html("<form action='search3'><input type='text' name='name'><button id='search3'>검색</button></form>");
  }
});
</script>
    <script>
    var textareaVal = $(".cdate").text();
    var count = 0; 
    var dt = new Date();
    var day = dt.getDate();
    var month = (dt.getMonth()+1);
    
    var year = dt.getFullYear();
    if (month < 10) {
      month ="0" + month;
    }
    if (day < 10) {
      day ="0" + day;
    }
    for(var i =0; i<(textareaVal.length/10)+1; i++){
      var tday =textareaVal.substring(8+(10*i),(10*(i+1)));
      var tyear =textareaVal.substring((10*i),(4+(10*i)));
      var tmonth =textareaVal.substring((5+(10*i)),(7+(10*i)));
      if(tday==day&&tyear==year&&tmonth==(month)){
      count++
     
    }
    }
    
    $("#np").text("새글[" + count +"/"+ ((textareaVal.length/10)) +"]");
    </script>
    
    <script>
    $(document).ready(function(){

      $("select option[value=5]").attr("selected", true);
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
    

<script>
 var member ="${loginName}"
var smember ="${memberName}"
if(member!=smember){
  $("#newC").remove(); 
}
</script>

<jsp:include page="../footer2.jsp"/>

</body></html>
