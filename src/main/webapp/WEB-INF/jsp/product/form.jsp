<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 상품 등록 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../../css/fontawesome/css/all.css">
<link rel="stylesheet" href="../../css/animate.css">
<link rel="stylesheet" href="../../css/owl.carousel.min.css">
<link rel="stylesheet" href="../../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../../css/magnific-popup.css">
<link rel="stylesheet" href="../../css/aos.css">
<link rel="stylesheet" href="../../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../../css/jquery.timepicker.css">
<link rel="stylesheet" href="../../css/style.css">
<style>

.adder{ width:250px;  height:30px; resize:none;/* 크기고정 */  /*   resize: horizontal; // 가로크기만 조절가능  resize: vertical;  세로크기만 조절가능  */ }
inpit{ width:40px; height:50px;}
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
.dv {
    border: 1px solid #444444;
  } 
 .fordivide{
  display: none;
} 
.out {
 text-align: center;
 width: 1000px;
 margin: auto auto;
 
 }
 select#Aselect {
    width: 120px;
}
select.custom-select {
    width: 120px;
}
.in {
  text-align: left;
  }
</style>
</head>
<body class="goto-here">
    <!--------------------------------------------------------------------------------------->
        <div class="py-1 bg-primary">
        <div class="container">
            <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                <div class="col-lg-12 d-block">
                    <div class="row d-flex">
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span style="padding-top: 3px" class="icon-phone2"></span></div>
                            <span style="padding-top: 5px" class="text">070 2132 6485</span>
                        </div>
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span style="padding-top: 3px" class="icon-paper-plane"></span></div>
                            <span style="padding-top: 5px" class="text">green@.gmail.com</span>
                        </div>
                        <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                            <span style="padding-top: 5px" class="text">1-2 Business days delivery &amp; Free Returns</span>
                        </div>
                    </div>
                </div>
            </div>
          </div>
    </div>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
          <a class="navbar-brand" href="#">GreenRight</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
          </button>

          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"><a href="#" class="nav-link">HOME</a></li>
              <li class="nav-item"><a href="#" class="nav-link">SHOP</a></li>
              <li class="nav-item"><a href="#" class="nav-link">EXHIBITION</a></li>
              <li class="nav-item"><a href="#" class="nav-link">MYPAGE</a></li>
              <li class="nav-item"><a href="#" class="nav-link">CONTACT</a></li>
              <li class="nav-item cta cta-colored"><a href="#" class="nav-link"><span class="fas fa-cart-arrow-down"></span>[0]</a></li>
            </ul>
          </div>
        </div>
      </nav>
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    <!--------------------------------------------------------------------------------------->
    
<% session.setAttribute("memberNo", "1"); %>
  <div class="out">
<form action='add' method='post' enctype='multipart/form-data'>
  <h3>새 상품 등록 관리</h3>
  <br>
  <br>
  <div class="in">
  <h5>I. 상품 등록 및 진열 재고 관리</h5>
  <h6>상품 카테고리 대분류 선택
  <select id="Aselect" class="custom-select" >
          <option  value="clean">청소</option>
          <option  value="office">사무</option>
          <option  value="organic">유기농</option>
          <option  value="furniture">가구</option> 
          <option  value="upcycleing">업사이클링</option> 
  </select>
   </h6>
   <div id="subselect">
   <h6>상품 카테고리 소분류 선택 
  <select  name="groupNo" id="Bselect" class="custom-select">
          <option  value=1>세제류</option>
          <option  value=2>위생용품</option>
          <option  value=3>화장지</option>
          <option  value=4>티슈</option> 
  </select>
  </h6>
  </div>
  
  <h6>상품명         <input class="adder" type="text" name="productName" class="form-control"  required></h6>
  <h6>판매자명       <input class="adder" type="text" name="memberNo" class="form-control"  required></h6>
  <h6>유통기한       <input class="adder" type='date' class="form-control" id='datetimepicker4' /></h6>
  <h6>직접제작여부  <input type='radio' name='diy' value=1 />yes
               <input type='radio' name='diy' value=0 />no
  </h6>
  
  <h6>원산지     <input class="adder"  type="text" name="origin" class="form-control"  required></h6>
  <h6>판매가     <input class="adder"  type="text" name="price" class="form-control"  required></h6>
  </div>
  <br>
  <div class="in">
  <h5>II. 이미지 등록</h5>
  <h6>이미지<input class="btn btn-primary py-3 px-4" type="button" id="btnAdd" value ="사진추가버튼추가"></h6>
  <table id="list">  
  </table>
  </div>
  <br>
  <div class="in">
  <h5>III. 옵션 관리</h5>
  <h6>옵션 이름<input class="btn btn-primary py-3 px-4" type="button"  id ="optionN" value="옵션이름추가버튼"></h6>
  <table id="optionplus"></table>
  </div>
  <br>
  <div class="in">
  <h5>IV. 상품 설명</h5>
  <textarea rows="5" cols="50" name="description" required > 내용을 입력해주세요</textarea>
  <br>
  <button class="btn btn-primary py-3 px-4" id=button>등록하기</button>
  <INPUT type="button" value="자바스크립트 버튼 (1) "class="btn btn-primary py-3 px-4" onClick="location.href='http://www.jasko.co.kr'">
  </div>
  </form>
  </div>
  
  <!-- ----------------------------------------------------------------------------- -->
  <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row">
            <div class="mouse">
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                        </a>
                    </div>
        </div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">GreenRight</h2>
              <p>Try eco-friendly products.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="fab fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fab fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Community</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
                  <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                    <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                    <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                    <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                    <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                  </ul>
                  <ul class="list-unstyled">
                    <li><a href="#" class="py-2 d-block">FAQs</a></li>
                    <li><a href="#" class="py-2 d-block">Contact</a></li>
                  </ul>
                </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Have a Questions?</h2>
                <div class="block-23 mb-3">
                  <ul>
                    <li><span class="icon icon-map-marker"></span><span class="text">459, Gangnam-daero, Seocho-gu, Seoul, Republic of Korea</span></li>
                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">070 2132 6485</span></a></li>
                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">GreenRight@bitcamp.com</span></a></li>
                  </ul>
                </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Web is made by <a href="https://greenright.com" target="_blank">GreenRight</a></p>
          </div>
        </div>
      </div>
    </footer>
    <!--------------------------------------------footer-end--------------------------------------->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg>
        </div>
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/jquery-migrate-3.0.1.min.js"></script>
        <script src="../../js/popper.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
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


</body>
<script >
$(function(){
  $("#optionN").click(function(){ 
     
     var html = '<tr><td class="dv">옵션명<input type="text" name="optionName" required>'; 
     html += '<input class="btn btn-primary py-3 px-4" type="button" id="btnDel" value="옵션삭제"/>'
     html += '<table class="dr"><input class="btn btn-primary py-3 px-4" type="button" id="optionitemadd" value="옵션항목추가"></table>'
     html += '<input type ="text" name="optionContents" value="divide" class="fordivide">';
     html += '</td></tr>';
     
     $("#optionplus").append(html); 
     
  });
  
  $("#optionplus").on("click", "#btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  
  
  $(document).on("click", "#optionitemadd", function(){
    var oip = '<tr><td>옵션내용<input type="text" name="optionContents" required>';
    oip += '<input class="btn btn-primary py-3 px-4" type="button" id="buttonDel"value="옵션항목삭제"/>';
    oip += '</td></tr>';
    $(this).parent().append(oip);    
  });
  
  $(document).on("click","#buttonDel",function(){
    $(this).parent().parent().remove();
  });
 
  
})
</script>
<script>
$('#Aselect').change(function() {
  var state = $('#Aselect option:selected').val();
  if ( state == 'clean' ) {
    $("#subselect").html("<h6>상품 카테고리 소분류 선택 <select name='groupNo' id='Bselect' class='custom-select'><option value=1>세제류</option><option value=2>위생용품</option><option value=3>화장지</option><option value=4>티슈</option></select></h6>");
  } else if ( state == 'office'){
    $("#subselect").html("<h6>상품 카테고리 소분류 선택<select name='groupNo' id='Bselect' class='custom-select'><option value=5>복사용지</option><option value=6>화일</option><option value=7>토너</option><option value=8>기타</option></select></h6>");
  } else if(state == 'organic'){
    $("#subselect").html("<h6>상품 카테고리 소분류 선택<select name='groupNo' id='Bselect' class='custom-select'><option value=9>과일</option><option value=10>채소</option><option value=11>간식</option><option value=12>축산품</option></select></h6>");
  } else if(state == 'furniture'){
    $("#subselect").html("<h6>상품 카테고리 소분류 선택<select name='groupNo' id='Bselect' class='custom-select'><option value=13>침대</option><option value=14>소파</option><option value=15>테이블</option><option value=16>의자</option><option value=17>파티션</option></select></h6>");
  }else{
    $("#subselect").html("<h3>업사이클링은 소분류가없습니다.</h3><input type='hidden' name='groupNo' value=18>")
  }
});
</script>
<script >
$(function(){
  $("#btnAdd").click(function(){ 
     
     var html = '<tr><td><input type="file" class="btn btn-primary py-3 px-4" name="photoPath">'; 
     html += '<button class="btn btn-primary py-3 px-4"  type="button" id="btnDel">삭제</button>'
     html += '</td></tr>';
     
     $("#list").append(html); 
  });
  
  $("#list").on("click", "#btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  

})
</script>
  <script>
  $(function () {
    $('#datetimepicker4').datetimepicker();
});
        $(function() {
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' 
                ,showOtherMonths: true 
                ,showMonthAfterYear:true 
                ,changeYear: true 
                ,changeMonth: true                
                ,showOn: "both"   
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" 
                ,buttonImageOnly: true 
                ,buttonText: "선택"                 
                ,yearSuffix: "년" 
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] 
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
                ,dayNamesMin: ['일','월','화','수','목','금','토'] 
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] 
                ,minDate: "-0D" 
                ,maxDate: "+5Y"                     
            });
 
           
            $("#datepicker").datepicker();                    
            
            
            
            $('#datepicker').datepicker('setDate', 'today'); 
        });
    </script>  
    
    
</html>