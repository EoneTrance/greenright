<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/css/style.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
<link rel='stylesheet' href='/css/common.css'>

<style>
 #ndp {
display:none
} 
.bigout {
  text-align: center;
  width: 1000px;
  margin: auto auto;
  border: solid 0.5px #82ae46;
  background: #f7f6f2 !important;
}
h6 {
  color: #82ae46;
  font-weight: bold;
}
.out {
  padding-left: 10px;
  padding-right:10px;
  text-align: left;
  padding-bottom: 10px;
  padding-top: 5px;
  padding-bottom: 8px;
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
.btn {
  height: 40px;
  padding: 0px 0px 0px 0px !important;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
  margin-right: 3px;
}
.label {
  margin-left: 3px;
  margin-right: 3px;
  font-size: larger;
  font-style: italic;
}
.btn.btn-primary.py-3.px-4 {
    padding: 0px 0px 0px 0px !important;
}
.in { 
  padding-left: 10px;
  padding-right:10px;
  text-align: left;
  padding-bottom: 10px;
  border-top: 0.1px #82ae46 solid;
  padding-top: 10px;
  padding-bottom: 8px;
}
input:focus {outline:2px solid #82ae46;}
label.star:before {
    cursor: pointer;
}
</style>
 
    
<div class='bigout'>
<h1>상품상세보기</h1>
<div class ="out">
<form action='update' method='post' enctype='multipart/form-data'>
<input type="number" class="form-control" name ="no" value="${product.no}" hidden>
<input type="number" class="form-control" name ="groupNo" value ="${product.group.no}" hidden>
<input type ="number" class="form-control" name="memberNo" value="${product.seller.member.no}" hidden>
<div class ="in">
<h6>대분류명  <input type='text' class="form-control" name='groupName' value='${product.group.category.categoryName}' readonly><br></h6>
<h6>소분류명  <input type='text' class="form-control" name='categoryName' value='${product.group.groupName}' readonly><br></h6>
<h6>판매자명  <input type='text' class="form-control" name='name' value='${product.seller.member.name}' readonly><br></h6>
<h6>상품가격  <input type='text' class="form-control" name='price' value='${product.price}' readonly><br></h6>
<h6>상품이름  <input type='text' class="form-control" name='productName' value='${product.productName}' readonly><br></h6>
<h6>상품설명  <input type='text' class="form-control" name='description' value='${product.description}'><br></h6>
<h6>수량  <input type='number' class="form-control" name='diy' value='${product.quantity}' ><br></h6>
<h6>등록일  <input type='text' class="form-control" name='registeredDate' value='${product.registeredDate}' readonly><br></h6>
<h6>유통기한  <input type='text' class="form-control" name='expirationDate' value='${product.expirationDate}' readonly><br></h6>
<h6>원산지  <input type='text' class="form-control" name='origin' value='${product.origin}' readonly ><br></h6>
</div>


<c:forEach items="${product.options}"  var="option">
   <c:if test="${0 ne option.no}">
 <div class = "in">
 <div  class="${option.no} "  id="options">
  <h6> 옵션명  <input type='text' name='optionName' class="form-control" value='${option.optionName}' >
  <input type="text" name="optionName" class="form-control" value ="${option.no}" hidden>
  <img src="/images/xmark.png" class="optionDelete" width="10" height="10" alt="" ></h6>
  
 </div>
  <c:forEach items="${option.optionItem}"  var="item">
 <div class="${item.no}" id ="optionItems" > 
 <h6> 옵션항목명  <input type='text' name='optionItemMatter' class="form-control" value='${item.optionItemMatter}' ></h6>
 <h6> 추가금액  <input type='number' name='optionItemMatter' class="form-control" value='${item.optionsPrice}' step=10 ></h6>
 <h6> 옵션당개수  <input type='number' name='optionItemMatter' class="form-control" value='${item.optionsQuantity}'>
 <input type="text" name="optionItemMatter" class="form-control" value ="${item.no}" hidden>
 <input type="text" name="optionItemMatter" value="${item.optionsNo}" hidden>
  <img src="/images/xmark.png" class="optionItemDelete"  width="10" height="10" alt="" ></h6>
  </div>
  </c:forEach> 
  </div>
  </c:if>
  <c:if test="${0 eq option.no}">
  
  </c:if>
</c:forEach>
<div class="in">
<p>
<c:forEach items="${productPhoto.photos}" var="file">
<%-- ${file.no} --%>
<div class="${file.no}" id ="photos"> 
  <img src='/upload/product/${file.photoPath}' class='photo2' alt="" style="width:100px; height:100px; object-fit:cover;">
<img src="/images/xmark.png" class="imageDelete" width="10" height="10" alt="" ><br>
</div>
</c:forEach>
</p>
</div>
   <div class="in">
        <div id="attachFileDiv" class="attachFileDiv">
          <h6 id="addbutton">
            <input type="button" class="btn btn-primary py-3 px-4"
              value="이미지추가" onclick="attachFile.add()">
          </h6>
        </div>
      </div>
      <div class ="in">
<button  class="btn btn-primary py-3 px-4">변경</button>
<button type="button" onclick="location.href='delete?no=${product.no}'"
class="btn btn-primary py-3 px-4">삭제</button>
</div>
</form>
</div>
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
$(function(){
$(document).on("click", ".imageDelete", function() {
  
  var allData = {"no" : $(this).parent().attr('class')}
  $(this).parent().remove()
  $.ajax({
    url : "/greenright/json/Product/deletephotos",
    type : "GET",
    dataType : "json",
    data : allData,
    success : function(data) {
      }
    });
  })
  
  $(document).on("click", ".optionDelete", function() {
  
  var allData = {"no" : $(this).parent().parent().attr('class')}
  $(this).parent().parent().parent().remove()
  $.ajax({
    url : "/greenright/json/Product/deleteoptions",
    type : "GET",
    dataType : "json",
    data : allData,
    success : function(data) {
      }
    });
  })
  
   $(document).on("click", ".optionItemDelete", function() {
  
  var allData = {"no" : $(this).parent().parent().attr('class')}
  $(this).parent().parent().remove()
  $.ajax({
    url : "/greenright/json/Product/deleteoptionitems",
    type : "GET",
    dataType : "json",
    data : allData,
    success : function(data) {
      }
    });
  })
});
</script>
<script>
  attachFile = {
    idx : 0,
    add : function() { // 파일필드 추가
      var o = this;
      var idx = o.idx;

      var div = document.createElement('div');
      div.style.marginTop = '3px';
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
      file.name = 'photoPath';
      file.size = '40';
      file.className = 'btn btn-primary py-3 px-4';
      file.id = 'fileField' + o.idx;
      file.onchange = function() {
        o.prev(this, 'dv' + idx)
      };

      var btn = document.createElement('input');
      btn.type = 'button';
      btn.className = 'btn btn-primary py-3 px-4';
      btn.value = '삭제';
      btn.onclick = function() {
        o.del(idx)
      };
      btn.style.marginLeft = '5px';

      div.appendChild(label);
      div.appendChild(file);
      div.appendChild(btn);
      document.getElementById('attachFileDiv').appendChild(div);
      document.getElementById('attachFileDiv').appendChild(dv);

      o.idx++;
    },
    del : function(idx) { // 파일필드 삭제
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('file' + idx));
      document.getElementById('attachFileDiv').removeChild(
          document.getElementById('dv' + idx));
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
