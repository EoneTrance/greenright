<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
  href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
  rel="stylesheet">
<link rel="stylesheet" href="../../css/fontawesome/css/all.css">
<link rel="stylesheet" href="../../css/animate.css">
<link rel="stylesheet" href="../../css/owl.carousel.min.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/magnific-popup.css">
<link rel="stylesheet" href="../../css/aos.css">
<link rel="stylesheet" href="../../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../../css/jquery.timepicker.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheer"
  href="../../node_modules/bootstrap/css/bootstrap.min.css">
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<style>
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

input:focus {
  outline: 2px solid #82ae46;
}
</style>
<script src="../../js/jquery.min.js"></script>
<script src="../../js/jquery-migrate-3.0.1.min.js"></script>
<script src="../../js/popper.min.js"></script>
<script src="../../js/jquery.easing.1.3.js"></script>
<script src="../../js/jquery.waypoints.min.js"></script>
<script src="../../js/jquery.stellar.min.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<script src="../../js/jquery.magnific-popup.min.js"></script>
<script src="../../js/aos.js"></script>
<script src="../../js/jquery.animateNumber.min.js"></script>
<script src="../../js/bootstrap-datepicker.js"></script>
<script src="../../js/scrollax.min.js"></script>
<script src="../../js/main.js"></script>
<link rel="stylesheet"
  href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<%
    session.setAttribute("memberNo", "1");
  %>
<div class="out">
  <form action='add' method='post' enctype='multipart/form-data'>
    <h3>새 상품 등록 관리</h3>
    <br>
    <div class="in">
      <h5>I. 상품 등록</h5>
      <h6>
        상품 카테고리 대분류 선택 <select id="Aselect" class="custom-select">
          <option value="clean">청소</option>
          <option value="office">사무</option>
          <option value="organic">유기농</option>
          <option value="furniture">가구</option>
          <option value="upcycleing">업사이클링</option>
        </select>
      </h6>
      <div id="subselect">
        <h6>
          상품 카테고리 소분류 선택 <select name="groupNo" id="Bselect"
            class="custom-select">
            <option value=1>세제류</option>
            <option value=2>위생용품</option>
            <option value=3>화장지</option>
            <option value=4>티슈</option>
          </select>
        </h6>
      </div>

      <h6>
        상품명 <br> <input class="adder form-control" type="text"
          id="pN" name="productName" required>
      </h6>

      <h6>
        <!--  일단 판매자 값을 받아서 처리중 나중에 마이페이지 구현되었을경우에는 세션에서 값 빼와서 처리할수있도록 .  -->
        판매자명 <br> <input class="adder form-control" type="text"
          id="mN" name="memberNo" required>
      </h6>

      <h6>
        수량 <input class="adder form-control" type="number" id="pN"
          name="quantity" min="0" required>
      </h6>

      <h6>
        유통기한 <br> <input class="adder datetimepicker4 form-control"
          type='text' id='datetimepicker4' name="expirationDate"
          required readonly />
      </h6>



      <h6>
        원산지 <br> <input class="adder form-control" id="original"
          type="text" name="origin" class="form-control" required>
      </h6>
      <h6>
        판매가 <br> <input class="adder form-control" id="sellprice"
          type="number" name="price" class="form-control" step=10
          required>
      </h6>
    </div>
    <div class="in">
      <h5>II. 이미지 등록</h5>
      <div id="attachFileDiv" class="attachFileDiv">
        <h6 id="addbutton">
          <input type="button" class="btn btn-primary py-3 px-4"
            value="추가" onclick="attachFile.add()">
        </h6>
      </div>
    </div>
    <table id="list">
    </table>

    <div class="in">
      <h5>III. 옵션 관리</h5>
      <h6>
        <!--  옵션 이름<input class="btn btn-primary py-3 px-4" type="button"
            id="optionN" value="옵션이름추가버튼"> -->

        <input type="text" name="optionName" value="neverNo" hidden /> <input
          type="text" name="optionContents" value="neverNo" hidden /> <input
          type="text" name="optionprice" value="neverNo" hidden /> <input
          type="text" name="optionquantity" value="neverNo" hidden />
      </h6>
      <table id="optionplus">
       <tr><td class="dv">옵션명<input type="text" name="optionName" required>
    <table class="dr"><input class="btn btn-primary py-3 px-4" type="button" id="optionitemadd" value="옵션항목추가"/></table>
    <input type ="text" name="optionContents" value="divide" class="fordivide">
    <input type ="text" name="optionprice" value="divide" class="fordivide">
    <input type ="text" name="optionquantity" value="divide" class="fordivide">
    </td></tr>
      </table>
    </div>
    <div class="in">
      <h5>IV. 상품 설명</h5>
      <textarea rows="5" cols="50" name="description"
        placeholder="내용을 입력하세요" required> </textarea>
      <br>
      <button class="btn btn-primary py-3 px-4 adderButton" id=button>등록하기</button>
      <INPUT type="button" value="취소" class="btn btn-primary py-3 px-4"
        onClick="location.href='/greenright/product/manage'">
    </div>
  </form>
</div>
<script>
$(document).on("click",".adderButton",function(){
  if(($("#pn").val)!=($(".optionsQuantity").val)) {
  swal("옵션수량과 총수량이 일치하지않습니다");
}
})

</script>
<script>
   $(function() {
    $(document)
        .on(
            "click",
            "#optionitemadd",
            function() {
              var oip = '<tr><td>옵션내용<input type="text" name="optionContents" required>';
              oip += '추가금액<input type="number" name="optionprice" required min="0" step=10>';
              oip += '개수<input type="number" name="optionquantity" required min="0" class="optionsQuantity">';
              oip += '<input class="btn btn-primary py-3 px-4" type="button" id="buttonDel"value="옵션항목삭제"/>';
              oip += '</td></tr>';
              $(this).parent().append(oip);
            });

    $(document).on("click", "#buttonDel", function() {
      $(this).parent().parent().remove();
    });

  })
</script>
<script>
  $('#Aselect')
      .change(
          function() {
            var state = $('#Aselect option:selected').val();
            if (state == 'clean') {
              $("#subselect")
                  .html(
                      "  <h6>상품 카테고리 소분류 선택 <select name='groupNo' id='Bselect' class='custom-select'><option value=1>세제류</option><option value=2>위생용품</option><option value=3>화장지</option><option value=4>티슈</option></select></h6>");
            } else if (state == 'office') {
              $("#subselect")
                  .html(
                      "  <h6>상품 카테고리 소분류 선택 <select name='groupNo' id='Bselect' class='custom-select'><option value=5>복사용지</option><option value=6>화일</option><option value=7>토너</option><option value=8>기타</option></select></h6>");
            } else if (state == 'organic') {
              $("#subselect")
                  .html(
                      "  <h6>상품 카테고리 소분류 선택 <select name='groupNo' id='Bselect' class='custom-select'><option value=9>과일</option><option value=10>채소</option><option value=11>간식</option><option value=12>축산품</option></select></h6>");
            } else if (state == 'furniture') {
              $("#subselect")
                  .html(
                      "  <h6>상품 카테고리 소분류 선택 <select name='groupNo' id='Bselect' class='custom-select'><option value=13>침대</option><option value=14>소파</option><option value=15>테이블</option><option value=16>의자</option><option value=17>파티션</option></select></h6>");
            } else {
              $("#subselect")
                  .html(
                      "<h3>업사이클링은 소분류가없습니다.</h3><input type='hidden' name='groupNo' value=18>")
            }
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
<script>
  $(function() {
    $("#datetimepicker4").datepicker(
        {
          dateFormat : 'yy-mm-dd',
          prevText : '이전 달',
          nextText : '다음 달',
          monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
              '10월', '11월', '12월' ],
          monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
              '9월', '10월', '11월', '12월' ],
          dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
          dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
          dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
          showMonthAfterYear : true,
          changeMonth : true,
          changeYear : true,
          yearSuffix : '년',
          minDate : '-0M',
          maxDate : '+28Y'
        });
  });
</script>
<script>


</script>
<<<<<<< HEAD

=======
>>>>>>> master
