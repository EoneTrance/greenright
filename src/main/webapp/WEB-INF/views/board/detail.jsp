<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Community Detail</title>

<style>
.my-comment-control {
  
}
.my-comment {
  display: none;
  width: 500px;
}
#hr1 {
  width: 1100px;
}
.btn.btn-primary {
   border-top-left-radius: 2px;
   border-top-right-radius: 2px;
   border-bottom-right-radius: 2px;
   border-bottom-left-radius: 2px;
}
.banner {
  margin-top: 60px;
  max-width: 500px;
  max-height: 500px;
  
}
.far.fa-thumbs-up.active {
  color:#82ae46;
}
.far.fa-thumbs-up.recommend{
  display:flex;
  justify-content: center;
  align-items: center;
}
</style>
  <!-- <div id='content'
    style="width: 1140px; margin-left: 374px; padding-right: 15px; padding-left: 15px;"> -->
    <div id='content'
    style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">Community</h1>
    <p style="text-align: center;">GreenRight 커뮤니티입니다.</p>
    <form action='update' method='post' enctype='multipart/form-data' 
      style="width: 1140px; padding-right: 15px; padding-left: 15px;">
      <table style="margin: auto; margin-top: 20px;">
        <thead>
          <tr>
            <th style="width:1100px;">
              <hr id="hr1">
              <p style="text-align: center; font-size: 25px; font-weight: normal;">${board.title}</p>
              <hr id="hr1">
              <div class="row" >
                <div class="col" style="text-align: left;">
                  <span style="font-size: 13px; font-weight: normal;">등록일: ${board.createdDate}</span><br> 
                  <span style="font-size: 13px; font-weight: normal;">작성자 : ${board.member.name}</span>
                </div>
                <div class="col" style="text-align: right;">
                  <span style="font-size: 13px; font-weight: normal;">조회수: ${board.viewCount}</span><br> 
                    
                    <span id="rec" style="font-size: 13px; font-weight: normal;">추천수: ${board.recommendation}</span>
                    
                </div>
              </div>
              <hr id="hr1">
               <input id="jisooBoardNo" type='text' name='no' value='${board.no}' style="display:none;"><br>
              <p style="text-align: center;">
              <c:choose>
                <c:when test="${board.photos[0].filePath == null}">                  
                </c:when>
                <c:otherwise>
                  <c:forEach items="${board.photos}" var="photo">
                  <img src='/upload/board/${photo.filePath}' class='banner'>
                  <br>
                  <br>
                </c:forEach>                
                </c:otherwise>
              </c:choose>
              </p>
              <span style="display: block; text-align:center; font-weight: normal; width: 1100px; font-size: 20px; word-break:break-all;">${board.contents}</span>
              <br>
         
              <i class="far fa-thumbs-up recommend" style="font-size:35px;"></i>
              <hr id="hr1">
              <br>
              <c:if test="${board.memberNo == loginUser.no}">
              <p style="text-align: right;">
                <button type="button" class="btn btn-primary"
                  onclick="location.href='detailedit.jsp?no=${board.no}'">수정</button>
              </p>
              </c:if>
            </th>
          </tr>
        </thead>
      </table>
      <table id="list">
      </table>
    </form>
  </div>


  <div class="container" style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    <div style="width: inherit;">
    <div class="input-group" style="width: 870px; margin: auto;">댓글</div>
    <div class="input-group" style="width: 870px; margin: auto;">
      <input type="text" class="my-comment-form" style="width:800px; height:70px;" placeholder="내용을 입력하세요.">
      <button id='my-add-btn' class="btn btn-primary">등록</button>
    </div>
    </div>
    <br> <br>

  <div style="width: 1140px;">
    <div id='mymy-comment' style="width: 870px; margin: auto;">
      <c:forEach items="${comments}" var="comment">
        <div class='my-comment-div comment-${comment.no}'
          data-no='${comment.no}'>
          <span class='id-${comment.no}'>${comment.id}</span> 
          <span class='createdDate-${comment.no}'>${comment.createdDate}</span>
          <p class='my-comment-content contents-${comment.no}'>${comment.contents}</p>
          <div>
            <textarea class="my-comment">${comment.contents}</textarea>
            <c:if test="${comment.memberNo == loginUser.no}">
              <div class="my-comment-control"
                data-member-no='${comment.memberNo}'>
                <button class='my-save-btn btn btn-primary' style="display: none"
                  data-no='${comment.no}' align="right">저장</button>
                <button class='my-cancel-btn btn btn-primary' style="display: none"
                  data-no='${comment.no}' align="right">취소</button>
                <button class='my-update-btn btn btn-primary'>수정</button>
                <button class='my-delete-btn btn btn-primary'>삭제</button>
              </div>
            </c:if>
          </div>
          <hr>
        </div>
      </c:forEach>
    </div>
  </div>
  <div style="margin-bottom: 50px;"></div>
 </div>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel="stylesheet" href="/css/fontawesome/css/all.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
 $(document).ready(function() {
  $('.far.fa-thumbs-up').on('click', () => {
    if($('.far.fa-thumbs-up').hasClass('active')) {
      $('.far.fa-thumbs-up').removeClass('active');
    } else {
      $('.far.fa-thumbs-up').addClass('active');
    }
  });  
}); 
</script>

<script>
$('.recommend').on('click',() =>{
  let recommendBoardNo = parseInt(document.querySelector('#jisooBoardNo').value);
  let recommendMemberNo = ${loginUser.no};
   $.post("recommend/checkRecommendForCheck",{
     "recommendBoardNo":recommendBoardNo,
     "recommendMemberNo":recommendMemberNo
   }, function(data){
     if(data ==0){
       $.post("recommend/add",{
         "recommendBoardNo":recommendBoardNo,
         "recommendMemberNo":recommendMemberNo
       }, function(data){
         console.log(data.result)
         countRecommend(recommendBoardNo)
       }, "json");
     }else{
       $.post("recommend/delete",{
         "recommendBoardNo":recommendBoardNo,
         "recommendMemberNo":recommendMemberNo
  
       }, function(data){
         //console.log(data.result)
         countRecommend(recommendBoardNo)
       }, "json");
     }
   });
});
function countRecommend(boardNo) {
  $.post("recommend/checkNum",{
    "recommendBoardNo":boardNo,
  }, function(data){
    $('#rec').html("추천수:"+data);
    console.log(data)
  });
}
</script>

<script>
$(document).ready(function() { 
  let recommendBoardNo = parseInt(document.querySelector('#jisooBoardNo').value);
  let recommendMemberNo = 1;
  $.post("recommend/checkRecommendForCheck",{
    "recommendBoardNo":recommendBoardNo,
    "recommendMemberNo":recommendMemberNo
  }, function(data) {
    if(data==0) {
      $('.far.fa-thumbs-up').removeClass('active');
    } else {
      
        $('.far.fa-thumbs-up').addClass('active');
    }
  });
});
</script>

  <script>
 $('#my-add-btn').on('click', (event) => {
    let boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
    let contents = document.querySelector('.my-comment-form').value;
    
    
    $.post("detail/add", {
        "boardNo": boardNo,
        "contents": contents
      }, function(result) {
        
        var comment = "<div class='my-comment-div comment-"+result.no+"' data-no='"+result.no+"'>"; 
          comment += "<span class='id-"+result.no+"'>"+result.id+"</span>" 
          comment += "<span class='createdDate-"+result.no+"'>"+result.createdDate+"</span>";
          comment += "<p class='my-comment-content contents-"+result.no+"'>"+result.contents+"</p><div>";
          comment += "<textarea class='my-comment'>"+result.contents+"</textarea>";
          comment += "<div class='my-comment-control' data-member-no='"+result.memberNo+"'>";
          comment += "<button class='my-save-btn btn btn-primary' style='display: none' data-no='"+result.no+"' align='right'>저장</button>\n";
          comment += "<button class='my-cancel-btn btn btn-primary' style='display: none' data-no='"+result.no+"' align='right'>취소</button>";
          comment += "<button class='my-update-btn btn btn-primary'>수정</button>\n";
          comment += "<button class='my-delete-btn btn btn-primary'>삭제</button></div></div><hr></div>";
          $("#mymy-comment").append(comment); 
         
          var comment = "<div class='ana comment-"+result.no+"' data-no='"+result.no+"'>";
          $("#mymy-comment").append(comment);
  
      $(".my-comment-form").val("");
      });
});
  
  
  
  
 $('#mymy-comment').on('click','.my-delete-btn', () => {
 
      var commentDiv = event.target.parentNode.parentNode.parentNode;
      var commentNo = commentDiv.getAttribute('data-no');
      var boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
      var param = "commentNo="+commentNo+"&boardNo="+boardNo;
      
     
      $.ajax({
        url : "detail/delete",
        type: 'get',
        cache: false,
        data: param,
        dataType: "text",
        success : function(result){
          commentDiv.style['display'] = 'none';
        },
      
        
      });
    });
  
  
  
  $('#mymy-comment').on('click','.my-cancel-btn', () => {
    var commentDiv = event.target.parentNode.parentNode.parentNode;
    var commentP = commentDiv.querySelector('.my-comment-content');
    var commentTa = commentDiv.querySelector('textarea'); 
    var commentS = commentDiv.querySelector('.my-save-btn');
    var commentC = event.target;
    var commentD = commentDiv.querySelector('.my-delete-btn');
    var commentU = commentDiv.querySelector('.my-update-btn');
    commentP.style['display'] = 'block';
    commentTa.style['display'] = 'none';
    commentS.style['display'] = 'none';
    commentC.style['display'] = 'none';
    commentD.style['display'] = 'inline-block';
    commentU.style['display'] = 'inline-block';
    
  });
  
  $('#mymy-comment').on('click','.my-save-btn', () => {
    
    var commentDiv = event.target.parentNode.parentNode.parentNode;
    var str = commentDiv.querySelector('textarea').value;
    var commentNo = commentDiv.getAttribute('data-no');
    var boardNo = ${board.no};
    console.log(commentDiv);
    
    
    $.post("detail/update", {
      "contents" : str,
      "commentNo" : commentNo
    }, function(result){
        
          var commentS = commentDiv.querySelector('.my-save-btn');
          var commentC = commentDiv.querySelector('.my-cancel-btn');
          var commentU = commentDiv.querySelector('.my-update-btn');
          var commentTa = commentDiv.querySelector('textarea');
          var commentP = commentDiv.querySelector('.my-comment-content');
          var commentD = commentDiv.querySelector('.my-delete-btn');
          commentS.style['display'] = 'none';
          commentC.style['display'] = 'none';
          commentU.style['display'] = 'inline-block';
          commentTa.style['display'] = 'none';
          commentD.style['display'] = 'inline-block';
          commentP.innerHTML=commentTa.value;
          commentP.style['display'] = 'block';
        
      
      
    });
  });
$('#mymy-comment').on('click', '.my-update-btn', () => {
  var commentDiv = event.target.parentNode.parentNode.parentNode;
  var commentP = commentDiv.querySelector('.my-comment-content');
  var commentTa = commentDiv.querySelector('textarea'); 
  var commentS = commentDiv.querySelector('.my-save-btn');
  var commentC = commentDiv.querySelector('.my-cancel-btn');
  var commentD = commentDiv.querySelector('.my-delete-btn');
  var commentU = event.target;
  commentP.style['display'] = 'none';
  commentTa.style['display'] = 'inline-block';
  commentS.style['display'] = 'inline-block';
  commentC.style['display'] = 'inline-block';
  commentD.style['display'] = 'none';
  commentU.style['display'] = 'none';
    console.log(commentDiv.getAttribute('data-no'));
  
});
</script>




  <jsp:include page="../greenfooter.jsp" />