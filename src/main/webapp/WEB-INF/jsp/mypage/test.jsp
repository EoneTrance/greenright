<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<script>
function sub(){
  
  var name = document.getElementById("name");
  var password = document.getElementById("password");
  var postalCode = document.getElementById("postalCode");
  var defaultAddress = document.getElementById("defaultAddress");
  var postalCode = document.getElementById("postalCode");
  var detailAddress = document.getElementById("detailAddress");
  
  
  if (name.value == "" || name.value == null){
    alert("이름을 입력해주세요.");
    name.focus();
    return;
  }

  if (password.value == "" || password.value == null){
    alert("비밀번호를 입력해주세요.");
    password.focus();
    return;
    
  }
  
  if (postalCode.value == "" || postalCode.value == null){
    alert("우편번호를 입력해주세요.");
    postalCode.focus();
    return;
    
  }
  
  if (defaultAddress.value == "" || defaultAddress.value == null){
    alert("기본주소를 입력해주세요.");
    defaultAddress.focus();
    return;
    
  }
  
  if (detailAddress.value == "" || detailAddress.value == null){
    alert("상세주소를 입력해주세요.");
    detailAddress.focus();
    return;
    
  }
  
  
  document.reg.submit();
  
}  

</script>


<body>

<div id='content'>
<h1>기본정보</h1>
<form name="reg" action='update' method='post' >
        번호: <input type='text' id='no' name='no' value='${member.no}' readonly><br>
        이름: <input type='text' id='name' name='name' value='${member.name}' required><br>
        닉네임: <input type='text' name='nickname' value='${member.nickname}'><br>
        아이디: <input type='text' name='id' value='${member.id}' readonly><br>
        암호: <input type='text' id='password' name='password' value='${member.password}' required><br>
        휴대폰: <input type='text' name='cellPhone' value='${member.cellPhone}'required><br>
        전화: <input type='text' name='tel' value='${member.tel}'><br>
        이메일: <input type='text' name='email' value='${member.email}'required><br>
        우편번호: <input type='text' name='postalCode' value='${member.postalCode}' required><br>
        기본주소: <input type='text' name='defaultAddress' value='${member.defaultAddress}' required><br>
        상세주소: <input type='text' name='detailAddress' value='${member.detailAddress}' required><br>
        질문: ${member.question}<br>
        답변: <input type='text' name='answer' value='${member.answer}'><br>
        인증여부: ${member.certificationFlag}<br>
        가입일: ${member.registeredDate}<br> 
  <button>변경</button>

    <a href='delete?no=${member.no}'>삭제</a>
 
</form>
</div>


</body>
</html>