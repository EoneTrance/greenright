<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 상품 등록 관리</title>
<style>
  #button{
  margin-left: 100px;
  }
  #button2{
  margin-left: 130px;
  }
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
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

</style>
</head>
<body>
<% session.setAttribute("memberNo", "1"); %>
<form action='add' method='post' enctype='multipart/form-data'>
  <div id="mainFont">
  <h1>새 상품 등록 관리</h1>
  </div>
  <h3>1. 상품 등록 및 진열 재고 관리</h3>
  <h3>상품 카테고리 대분류 선택
  <select id="Aselect" >
          <option  value="clean">청소</option>
          <option  value="office">사무</option>
          <option  value="organic">유기농</option>
          <option  value="furniture">가구</option> 
          <option  value="upcycleing">업사이클링</option> 
  </select>
   </h3>
   <h3>상품 카테고리 소분류 선택 </h3>
    <div id="subselect">
  <select  name="groupNo">
          <option  value=1>세제류</option>
          <option  value=2>위생용품</option>
          <option  value=3>화장지</option>
          <option  value=4>티슈</option> 
  </select>
  </div>
  
  <h3>상품명<input type="text" name="productName" required></h3>
  <h3>판매자명<input type="text" name="memberNo"  required></h3>
  <h3>유통기한<input type="text" id="datepicker" name="expirationDate" required readonly></h3>
  <h3>직접제작여부<input type="text" name="diy" required></h3>
  <h3>원산지<input type="text" name="origin" required></h3>
  <h3>판매가<input type="text" name="price" required></h3>
  <br>
  <br>
  <h3>2. 이미지 등록</h3>
  <h4>이미지<input type="button" id="btnAdd" value ="사진추가버튼추가"></h4>
  <table id="list">  
  </table>

  <br>
  <br>
  <h3>3. 옵션 관리</h3>
  <h4>옵션 이름<input type="button" id ="optionN" value="옵션이름추가버튼"></h4>
  <table id="optionplus"></table>
  <br>
  <br>
  <h3>4. 상품 설명</h3>
  <textarea rows="5" cols="10" name="description" required>내용을 입력해주세요</textarea>
  
  <button id=button>등록하기</button>
  </form>
  <button id="button1">이거 누르면 홈으로 돌아감 </button>
</body>
<script >
$(function(){
  $("#optionN").click(function(){ 
     
     var html = '<tr><td class="dv">옵션명<input type="text" name="optionName" required>'; 
     html += '<button type="button" class="btnDel">옵션삭제</button>'
     html += '<table class="dr"><button type="button" class="optionitemadd">옵션항목추가</button></table>'
     html += '<input type ="text" name="optionItem" value="divide" class="fordivide">';
     html += '</td></tr>';
     
     $("#optionplus").append(html); 
     
     console.log($("#optionitemplus"));
     console.log($(".optionitemadd"))
  });
  
  $("#optionplus").on("click", ".btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  
  
  $(document).on("click", ".optionitemadd", function(){
    console.log(1);
    var oip = '<tr><td>옵션내용<input type="text" name="optionItem" required>';
    oip += '<button type="button" class="buttonDel">옵션항목삭제</button>';
    oip += '</td></tr>';
    $(this).parent().append(oip);    
  });
  
  $(document).on("click",".buttonDel",function(){
    $(this).parent().parent().remove();
  });
 
  
})
</script>
<script>
$('#Aselect').change(function() {
  var state = $('#Aselect option:selected').val();
  if ( state == 'clean' ) {
    $("#subselect").html("<select  name='groupNo'><option value=1>세제류</option><option value=2>위생용품</option><option value=3>화장지</option><option value=4>티슈</option></select>");
  } else if ( state == 'office'){
    $("#subselect").html("<select name='groupNo'><option value=5>복사용지</option><option value=6>화일</option><option value=7>토너</option><option value=8>기타</option></select>");
  } else if(state == 'organic'){
    $("#subselect").html("<select name='groupNo'><option value=9>과일</option><option value=10>채소</option><option value=11>간식</option><option value=12>축산품</option></select>");
  } else if(state == 'furniture'){
    $("#subselect").html("<select name='groupNo'><option value=13>침대</option><option value=14>소파</option><option value=15>테이블</option><option value=16>의자</option><option value=17>파티션</option></select>");
  }else{
    $("#subselect").html("<h2>업사이클링은 소분류가없습니다.</h2><input type='hidden' name='groupNo' value=18>")
  }
});
</script>
<script >
$(function(){
  $("#btnAdd").click(function(){ 
     
     var html = '<tr><td><input type="file" name="photoPath" >'; 
     html += '<button type="button" class="btnDel">삭제</button>'
     html += '</td></tr>';
     
     $("#list").append(html); 
  });
  
  $("#list").on("click", ".btnDel", function() { 
    $(this).parent().parent().remove(); 
  });  

})
</script>
  <script>
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