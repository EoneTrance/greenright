<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.btn.btn-primary {
  width: 90px;
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
            <h1 class="mb-0 bread">1:1 문의게시판</h1>
          </div>
        </div>
      </div>
    </div>
     <br>
      
    <section class="ftco-section">
  
    <div id='content'
      style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
  
   <div id="np" style="float:left;"></div>
      
      <br>
      
     <table class='table table-hover' id="products">
        <thead class="thead-primary">
             <tr class="text-center">
                <th>No</th>
                <th>등록일</th>
                <th>문의유형</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>답변여부</th>
            </tr>
         </thead>
            <tbody>
            <c:forEach items="${boards}" var="board">
                <tr class="tr1">
                <td class="content-value inquire">${board.no}</td>
                <td class="content-value inquire">${board.date}</td>
                <td class="content-value inquire">${board.type}</td>
                <td class="content-value inquire"><a href='detail?no=${board.no}'>${board.title}</a></td>
                <td class="content-value inquire">${board.id}</td>
                <td class="content-value inquire">${board.answerTrueFalse}</td>
                </tr>
            </c:forEach>
            </tbody>
    
    </table>

    <p style="text-align: right;">
     <button type="button" onclick="location.href='form.jsp'"  class="btn btn-primary" >문의 작성</button>
    </p>
      <select id = "answerselect" name="answer" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline; margin-left:450px;">
            <option value="default">전체</option>
            <option value="미답변">미답변</option>
            <option value="답변완료">답변완료</option>
      </select> 
      <select id ="inquireselect" name="date" value='${member.cell_phone.substring(0,3)}'
            style="width:120px;height:35px;display: inline;">
            <option value="default">전체</option>
            <option value="배송문의">배송문의</option>
            <option value="판매문의">판매문의</option>
            <option value="상품문의">상품문의</option>
      </select>
      <%-- <select name="type" value='${member.cell_phone.substring(0,3)}'
            style="width:120px; height: 33px; display: inline;">
            <option>제목</option>
            <option>내용</option>
            <option>글쓴이</option>
            <option>아이디</option>
            <option>닉네임</option>
      </select> --%>
      
      
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
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
var searchQuestionType = undefined;
$('#inquireselect').change(function() {
  searchQuestionType = $('#inquireselect option:selected').val();
  answerSelectType = $('#answerselect option:selected').val();
  loadData(1,answerSelectType);
})
function loadData(pageNo,answerSelectType) {
  $.ajax({
    url: "../json/inquire/list",
    type:"GET",
    dataType: "json",
    data: {
      "questionType": (searchQuestionType) ? searchQuestionType : undefined
    },
    
    success: function(data){
      var list = data.result.privateBoards;
      var tableTag ="";
      console.log(answerSelectType);
      $("td").removeClass("content-value inquire");
      
       for(var i = 0 ; i < list.length; i++) {
        if(answerSelectType=="default"){
        tableTag += "<tr><td>" + list[i].no + "</td><td>" + list[i].date +
        "<td>" + list[i].type + "</td><td><a href='detail?no="+ list[i].no+"'>" + list[i].title +"</a></td>"+
        "<td>" + list[i].id +  "</td><td>" + list[i].answerTrueFalse + "</td></tr>"
        } else if(answerSelectType=="미답변"){
          if(list[i].answerTrueFalse == "미답변"){
            tableTag += "<tr><td>" + list[i].no + "</td><td>" + list[i].date +
            "<td>" + list[i].type + "</td><td><a href='detail?no="+ list[i].no+"'>" + list[i].title +"</a></td>"+
            "<td>" + list[i].id +  "</td><td>" + list[i].answerTrueFalse + "</td></tr>"
          }
        } else {
          if(list[i].answerTrueFalse != "미답변"){
            tableTag += "<tr><td>" + list[i].no + "</td><td>" + list[i].date +
            "<td>" + list[i].type + "</td><td><a href='detail?no="+ list[i].no+"'>" + list[i].title +"</a></td>"+
            "<td>" + list[i].id +  "</td><td>" + list[i].answerTrueFalse + "</td></tr>"
          }
        }
    };
    $("#products tbody").html(tableTag);
    $("td").addClass("content-value inquire");
    }
  });
  
}
</script>
<script>
$('#my-paging').on('click','.page-item', () => {
  $(event.target).parent().addClass('active');
});
 var currentPage = ${pageNo};
$('.page-item').click((e) => {
  e.preventDefault();
 
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


