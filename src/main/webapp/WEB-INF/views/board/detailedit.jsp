<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
 #ndp {
display:none
} 
.btn.btn-primary {
  width: 58px;
  height: 38px;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.adder {
  width: 250px;
  height: 30px;
  resize: none; /* 크기고정 */
  /*   resize: horizontal; // 가로크기만 조절가능  resize: vertical;  세로크기만 조절가능  */
}
inpit {
  width: 40px;
  height: 50px;
}
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger {
  cursor: pointer;
}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker {
  cursor: pointer;
}
.dv {
  border: solid 0.5px #82ae46;
}
.fordivide {
  display: none;
}
.out {
  text-align: center;
  width: 1000px;
  margin: auto auto;
  border: solid 0.5px #82ae46;
  background: #f7f6f2 !important;
}
select#Bselect {
  height: 30px;
  padding-top: 0px;
  padding-bottom: 0px;
  width: 760px;
  margin-left: 10px;
}
select.custom-select {
  width: 120px;
}
.in {
  padding-left: 10px;
  text-align: left;
  padding-bottom: 10px;
  border-top: 0.1px #82ae46 solid;
  padding-top: 5px;
  padding-bottom: 8px;
}
.btn {
  height: 40px;
  padding: 0px 0px 0px 0px !important;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  margin-right: 3px;
}
h5 {
  color: #82ae46;
  font-weight: bold;
}
h6 {
  padding-bottom: 10px;
  font-weight: 600;
}
select#Aselect {
  height: 30px;
  padding-top: 0px;
  padding-bottom: 0px;
  width: 760px;
  margin-left: 10px;
}
form {
  padding-top: 20px;
}
h3 {
  color: #82ae46;
  font-weight: bold;
}
input#pN {
  margin-top: 5px;
  width: 963.1px;
}
input#mN {
  margin-top: 5px;
  width: 963.5px;
}
input#datetimepicker4 {
  width: 963.5px;
  margin-top: 5px;
}
input#original {
  width: 963.5px;
  margin-top: 5px;
}
input#sellprice {
  width: 963.5px;
  margin-top: 5px;
}
input#btnAdd {
  margin-left: 10px;
}
input#optionN {
  margin-left: 10px;
}
body.goto-here {
  padding-top: 15px;
  padding-bottom: 15px;
}
.attachFileDiv {
  display: inline-block;
  margin-right: 10px;
}
.attachFileDiv label {
  -webkit-appearance: button;
  display: inline-block;
  text-align: center;
  vertical-align: middle;
  user-select: none;
  font-size: 1rem;
  line-height: 1.5;
  transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
    border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
    -webkit-box-shadow 0.15s ease-in-out;
  box-shadow: 0px 24px 36px -11px rgba(0, 0, 0, 0.09);
  height: 40px;
  padding: 0px 0px 0px 0px !important;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  margin-right: 3px;
  background: #82ae46;
  border: 8px solid #82ae46;
  color: #fff;
  cursor: pointer;
  margin: 0px 0px 0px 0px;
}
.attachFileDiv input[type="file"] { /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
#addbutton {
  padding: 0px;
}
td.dv {
  font-weight: bolder;
}
label {
  font-weight: 400;
}
textarea {
  overflow: auto;
  resize: none;
}
h6#marginless {
  margin: 0px;
  padding-bottom: 1px;
}
.label {
  margin-left: 3px;
  margin-right: 3px;
  font-size: larger;
  font-style: italic;
}
</style>


<div  style="width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;">
 <h1 style="text-align: center; margin-top: 40px; font-size: 40px;">Community</h1>
    <p style="text-align: center;">GreenRight 커뮤니티입니다.</p>
<form action='update'
      method='post' enctype='multipart/form-data'>
<div class="form-group">
        <label for="inputTitle">번호</label> 
       <input type='text' name='no' value='${board.no}' class="form-control" readonly>
      </div>      
       <div class="form-group">
        <label for="message">제목</label>
       <input type='text' name='title' class="form-control" value='${board.title}'>
      </div>
       <div class="form-group">
        <label for="message">내용</label>
      <textarea name='contents' rows='5'class="form-control" cols='50'>${board.contents}</textarea>
      </div>
      조회수: ${board.viewCount}<br>
<div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text" id="btnAdd">Upload</span>
        </div>
        <div class="custom-file">
          <input type="button" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
          <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
        </div>
      </div>
      
      <div class="in">
      <br>
        <div id="attachFileDiv" class="attachFileDiv"></div>
                      <c:choose>
    <c:when test="${board.photos[0].filePath == null}"></c:when>
      <c:otherwise>
        <c:forEach items="${board.photos}" var="photo">
          <img style="display: inline-block;" width="100px" height="100px" src='/upload/board/${photo.filePath}' class='photo2'>
          <input type="checkbox" name = "boardPhotoNumber" value='${photo.no}' id="daaa"> 
          <input type="text" name="boardPhotoNumber" value ="0" id="ndp">
        </c:forEach>               
        </c:otherwise>
      </c:choose>
    </div>

<table id="list"></table>
<div class="form-group">
       <p style="text-align: right;">
          <button class="btn btn-primary">변경</button>
          <button type="button" class="btn btn-primary" id="board-delete"
          onclick="location.href='delete.jsp?no=${board.no}'">삭제</button>
        </p>
 </div>



</form>
</div>
<br>
<br>
<jsp:include page="../greenfooter.jsp"/>

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
<script src="/node_modules/jquery/dist/jquery.min.js"></script>
<script>
$('#board-delete').click(function() {
  swal({
    title: "Are you sure?",
    text: "You will not be able to recover this imaginary file!",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Yes, delete it!",
    closeOnConfirm: false
  },
  function(){
    swal("Deleted!", "Your imaginary file has been deleted.", "success");
  });
  
});


</script>


<script>
var temp;
$(function(){
  $("#inputGroupFile01").click(function(){
    attachFile.add();
  }); 
})
  attachFile = {
    idx : 0,
    add : function() { // 파일필드 추가
      var o = this;
      var idx = o.idx;
      var div = document.createElement('div');
      div.style.marginTop = '3px';
      div.style.display="inline-block";
      
      div.id = 'file' + o.idx;
      var label = document.createElement('label');
      label.setAttribute("for", 'fileField' + o.idx);
      label.innerHTML = "파일선택";
      var dv = document.createElement('dv');
      dv.style.marginTop = '3px';
      dv.id = 'dv' + o.idx;
      var file = document.all ? document.createElement('<input name="files">')
          : document.createElement('input');
      file.type = 'file';
      file.name = 'filePath';
      file.size = '40';
      file.className = 'btn btn-primary py-3 px-4';
      file.id = 'fileField' + o.idx;
      file.onchange = function() {
        o.prev(this, 'dv' + idx)
      };
      
      var btn = document.createElement('i');
      btn.className = 'fas fa-times';
      btn.style.color="red";
      btn.style.margin="5px";
      btn.style.display="none";
      btn.id = 'btn' + o.idx;
      btn.onclick = function() {
        o.del(idx)
      };
      btn.style.marginLeft = '5px';
      temp = btn;
      
      <!--div.appendChild(label); -->
      div.appendChild(file);
      document.getElementById('attachFileDiv').appendChild(div);
      document.getElementById('attachFileDiv').appendChild(dv);
      document.getElementById('attachFileDiv').appendChild(btn);
      $('#fileField'+o.idx).trigger('click');
      o.idx++;
    },
    del : function(idx) { // 파일필드 삭제
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('file' + idx));
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('dv' + idx));
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('btn' + idx));
      
    },
    prev : function(targetObj, View_area) { // 이미지 미리보기
      var preview = document.getElementById(View_area); //div id
      var ua = window.navigator.userAgent;
      //ie일때(IE8 이하에서만 작동)
      if (ua.indexOf("MSIE") > -1) {
        targetObj.select();
        try {
          var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
          var ie_preview_error = document.getElementById("ie_preview_error_"
              + View_area);
          if (ie_preview_error) {
            preview.removeChild(ie_preview_error); //error가 있으면 delete
          }
          var img = document.getElementById(View_area); //이미지가 뿌려질 곳
          //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
          img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
              + src + "', sizingMethod='scale')";
        } catch (e) {
          if (!document.getElementById("ie_preview_error_" + View_area)) {
            var info = document.createElement("<p>");
            info.id = "ie_preview_error_" + View_area;
            info.innerHTML = e.name;
            preview.insertBefore(info, null);
          }
        }
        //ie가 아닐때(크롬, 사파리, FF)
      } else {
        var files = targetObj.files;
        for (var i = 0; i < files.length; i++) {
          var file = files[i];
          var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
          var prevImg = document.getElementById("prev_" + View_area);
          if (!file.type.match(imageType)) {
            preview.removeChild(prevImg);
            continue;
          }
          //이전에 미리보기가 있다면 삭제
          if (prevImg) {
            preview.removeChild(prevImg);
          }
          var img = document.createElement("img");
          img.id = "prev_" + View_area;
          img.classList.add("obj");
          img.file = file;
          img.style.width = '100px';
          img.style.height = '100px';
          preview.appendChild(img);
          temp.style.display="inline-block";
          
          if (window.FileReader) { // FireFox, Chrome, Opera 확인.
            var reader = new FileReader();
            reader.onloadend = (function(aImg) {
              return function(e) {
                aImg.src = e.target.result;
              };
            })(img);
            reader.readAsDataURL(file);
          } else { // safari is not supported FileReader
            //alert('not supported FileReader');
            if (!document.getElementById("sfr_preview_error_" + View_area)) {
              var info = document.createElement("p");
              info.id = "sfr_preview_error_" + View_area;
              info.innerHTML = "not supported FileReader";
              preview.insertBefore(info, null);
            }
          }
        }
      }
    }
  }
</script>
