<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Community Detail</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<style>
.my-comment-control {
  
}

.my-comment {
  display: none;
  width: 500px;
}

#hr1 {
  width: 800px;
}

.btn.btn-primary {
   border-top-left-radius: 2px;
   border-top-right-radius: 2px;
   border-bottom-right-radius: 2px;
   border-bottom-left-radius: 2px;
}
</style>
</head>
<body>
  <% session.setAttribute("memberName","kim");%>
  <jsp:include page="../greenheader.jsp" />

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
              <p style="text-align: center;">${board.title}</p>
              <hr id="hr1">
              <div class="row">
                <div class="col">
                  <span style="font-size: 13px; font-weight: normal;">등록일
                    : ${board.createdDate}</span><br> 
                    <span
                    style="font-size: 13px; font-weight: normal;">작성자
                    : ${board.member.name}</span>
                </div>
                <div class="col" style="text-align: right;">
                  <span style="font-size: 13px; font-weight: normal;">조회수
                    : ${board.viewCount}</span><br> <span
                    style="font-size: 13px; font-weight: normal;">추천수
                    : 1</span>
                </div>
              </div>
              <hr id="hr1">
               <input id="jisooBoardNo" type='text' name='no' value='${board.no}' style="display:none;"><br>
              <p style="text-align: center;">
                <c:forEach items="${board.photos}" var="photo">
                  <img src='/upload/board/${photo.filePath}'
                    class='photo2'>
                  <br>
                  <br>
                </c:forEach>
              </p>
              <p style="font-weight: normal;">${board.contents}</p>
              <hr id="hr1">
              <p style="text-align: right;">
                <button type="button" class="btn btn-primary"
                  onclick="location.href='detailedit.jsp?no=${board.no}'">수정</button>
              </p>
            </th>
          </tr>
        </thead>
      </table>
      <table id="list">
      </table>
    </form>
  </div>


  <div class="container"  style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
    
    <div class="input-group" style="width: 802px; margin-left:170px;">
    <label for="content">댓글</label>
      <input type="text" class="my-comment-form" style="width:800px; height:70px;" placeholder="내용을 입력하세요.">
    </div>
     <p style="text-align: right; width: 802px; margin-left:170px">
      <button id='my-add-btn'>등록</button>
     </p>

    <br> <br>

    <div id='mymy-comment' style="width: 802px; margin-left:170px;">
      <c:forEach items="${comments}" var="comment">
        <div class='my-comment-div comment-${comment.no}'
          data-no='${comment.no}'>
          <span class='id-${comment.no}'>${comment.id}</span> <span
            class='createdDate-${comment.no}'>${comment.createdDate}</span>
          <p class='my-comment-content contents-${comment.no}'>${comment.contents}</p>
          <div>
            <textarea class="my-comment">${comment.contents}</textarea>
            <c:if test="${comment.memberNo == memberNo}">
              <div class="my-comment-control"
                data-member-no='${comment.memberNo}'>
                <button id='my-save-btn' style="display: none"
                  data-no='${comment.no}' align="right">저장</button>
                <button id='my-cancel-btn' style="display: none"
                  data-no='${comment.no}' align="right">취소</button>
                <button id='my-update-btn'>수정</button>
                <button id='my-delete-btn'>삭제</button>
              </div>
            </c:if>
          </div>
          <hr>
        </div>
      </c:forEach>
    </div>

  </div>




  <!-- <script>
var member ="${board.member.name}"
var smember ="${memberName}"
if(member!=smember){
  $("#editNum").remove();
}
</script> -->

  <script>
 $('#my-add-btn').on('click', (event) => {

    let boardNo = parseInt(document.querySelector('#jisooBoardNo').value);
    let memberNo = 1; // 1번 멤버 : jisoo
    let id = 'jisoo';
    let contents = document.querySelector('.my-comment-form').value;
    
    
    $.post("detail/add", {
        "boardNo": boardNo,
        "memberNo": memberNo,
        "id": id,
        "contents": contents
      }, function(result) {
        console.log(result);
        console.log(result.no);
        console.log(result.id);
        
        var comment = "<div class='my-comment-div comment-"+result.no+"' data-no='"+result.no+"'>"; 
          comment += "<span class='id-"+result.no+"'>"+result.id+"</span>" 
          comment += "<span class='createdDate-"+result.no+"'>"+result.createdDate+"</span>";
          comment += "<p class='my-comment-content contents-"+result.no+"'>"+result.contents+"</p><div>";
          comment += "<textarea class='my-comment'>"+result.contents+"</textarea>";
          comment += "<div class='my-comment-control' data-member-no='"+result.memberNo+"'>";
          comment += "<button class='my-save-btn' style='display: none' data-no='"+result.no+"' align='right'>저장</button>";
          comment += "<button class='my-cancel-btn' style='display: none' data-no='"+result.no+"' align='right'>취소</button>";
          comment += "<button class='my-update-btn' >수정</button>";
          comment += "<button class='my-delete-btn'>삭제</button></div></div><hr></div>";
          $("#mymy-comment").append(comment); 
         
          var comment = "<div class='ana comment-"+result.no+"' data-no='"+result.no+"'>";
          $("#mymy-comment").append(comment);
  
      $(".my-comment-form").val("");
      });
});
  
  
  
  
 $('#mymy-comment').on('click','#my-delete-btn', () => {
 
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
  
  
  
  $('#mymy-comment').on('click','#my-cancel-btn', () => {
    var commentDiv = event.target.parentNode.parentNode.parentNode;
    var commentP = commentDiv.querySelector('.my-comment-content');
    var commentTa = commentDiv.querySelector('textarea'); 
    var commentS = commentDiv.querySelector('#my-save-btn');
    var commentC = event.target;
    var commentD = commentDiv.querySelector('#my-delete-btn');
    var commentU = commentDiv.querySelector('#my-update-btn');

    commentP.style['display'] = 'block';
    commentTa.style['display'] = 'none';
    commentS.style['display'] = 'none';
    commentC.style['display'] = 'none';
    commentD.style['display'] = 'inline-block';
    commentU.style['display'] = 'inline-block';
  });

  
  $('#mymy-comment').on('click','#my-save-btn', () => {
    
    var commentDiv = event.target.parentNode.parentNode.parentNode;
    var str = commentDiv.querySelector('textarea').value;
    var commentNo = commentDiv.getAttribute('data-no');
    var boardNo = ${board.no};
    console.log(commentDiv);
    
    
    $.post("detail/update", {
      "contents" : str,
      "commentNo" : commentNo
    }, function(result){
        
          var commentS = commentDiv.querySelector('#my-save-btn');
          var commentC = commentDiv.querySelector('#my-cancel-btn');
          var commentU = commentDiv.querySelector('#my-update-btn');
          var commentTa = commentDiv.querySelector('textarea');
          var commentP = commentDiv.querySelector('.my-comment-content');
          var commentD = commentDiv.querySelector('#my-delete-btn');
          commentS.style['display'] = 'none';
          commentC.style['display'] = 'none';
          commentU.style['display'] = 'inline-block';
          commentTa.style['display'] = 'none';
          commentD.style['display'] = 'inline-block';
          commentP.innerHTML=commentTa.value;
          commentP.style['display'] = 'block';
        
      
      
    });
  });


$('#mymy-comment').on('click', '#my-update-btn', () => {
  var commentDiv = event.target.parentNode.parentNode.parentNode;
  var commentP = commentDiv.querySelector('.my-comment-content');
  var commentTa = commentDiv.querySelector('textarea'); 
  var commentS = commentDiv.querySelector('#my-save-btn');
  var commentC = commentDiv.querySelector('#my-cancel-btn');
  var commentD = commentDiv.querySelector('#my-delete-btn');
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

</body>
</html>
