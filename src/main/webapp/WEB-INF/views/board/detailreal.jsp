<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>사진게시물 보기</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel='stylesheet'
  href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'
  integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T'
  crossorigin='anonymous'>
<link rel='stylesheet' href='/css/common.css'>
<style>
.my-comment-control {
  /* display: inline-block; */
  
}

.my-comment {
  display: none;
  width: 500px;
}
</style>
</head>
<body>

  <jsp:include page="../header.jsp" />

  <div id='content'>
    <h1>게시물</h1>
    <form action='update' method='post' enctype='multipart/form-data'>
      번호: <input id="jisooBoardNo" type='text' name='no' value='${board.no}' readonly><br>
      제목: <input type='text' name='title' value='${board.title}'
        readonly><br> 내용:
      <textarea name='contents' rows='5' cols='50'>${board.contents} </textarea>
      <br> 작성자:${board.member.name}<br> 조회수:${board.viewCount}<br>
      <p>
        <c:forEach items="${board.photos}" var="photo">
          <img src='/upload/board/${photo.filePath}' class='photo2'>
        </c:forEach>
      </p>



      <table id="list">
      </table>
      <button>변경</button>
      <a href='delete?no=${board.no}'>삭제</a>

    </form>
  </div>



  <div class="container">
    <label for="content">댓글</label>
    <div class="input-group">
      <input type="text" class="my-comment-form"
        placeholder="내용을 입력하세요.">
      <button class='my-add-btn'>등록</button>
    </div>
    <div>
      <br> <br>
      
      <div id='mymy-comment'>
      <c:forEach items="${comments}" var="comment">
        <div class='my-comment-div comment-${comment.no}' data-no='${comment.no}'>
          <span class='id-${comment.no}'>${comment.id}</span> <span class='createdDate-${comment.no}'>${comment.createdDate}</span>
          <p class='my-comment-content contents-${comment.no}'>${comment.contents}</p>
          <div>
            <textarea class="my-comment">${comment.contents}</textarea>
            <c:if test="${comment.memberNo == memberNo}" >
              <div class="my-comment-control"
                data-member-no='${comment.memberNo}'>
                <button class='my-save-btn' style="display: none"
                  data-no='${comment.no}' align="right">저장</button>
                <button class='my-cancel-btn' style="display: none"
                  data-no='${comment.no}' align="right">취소</button>
                <button class='my-update-btn' >수정</button>
                <button class='my-delete-btn'>삭제</button>
              </div>
            </c:if>
          </div>
          <hr>
        </div>
      </c:forEach>

    </div>

  </div>
  

  <script>
 $('.my-add-btn').on('click', (event) => {

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




  <jsp:include page="../footer2.jsp" />

</body>
</html>

