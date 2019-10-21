<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<script src='/node_modules/bootstrap/dist/js/bootstrap.min.js'></script>
<script src='/node_modules/jquery/dist/jquery.min.js'></script>
<script src='/node_modules/sweetalert/dist/sweetalert.min.js'></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원정보수정</title>
  </head>
  <body>
    <div class="container">
      
    <form id="editForm" name="editForm" action="update" method="post" target="_self">
      <table class="table table-striped table-bordered table-hover">
        <caption>기본정보</caption>
        <tbody>
            <tr>
                <th>아이디</th>
                <td><input id="member_id" type="text" name="id" readonly="readonly" value='${member.id}'>(영문소문자/숫자,4~16자)</td>
            </tr>

            <tr>
                <th>비밀번호</th>
                <td><input id="password" type="text" name="password">(영문대소문자/숫자4자~16자)</td>
            </tr>
            <tr>
                <th>비밀번호 확인</th>
                <td><input id="password2" type="text" name="password_confirm"></td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="member_name" readonly="readonly" value='${member.name}'></td>
            </tr>
            <tr>
                <th>닉네임</th>
                <td><input type="text" name="nickname" value='${member.nickname}'></td>
            </tr>
            <tr>
                <th rowspan="3">주소</th>
                <td><input type="text" name="address_number" value='${member.postal_code}'><button>우편번호찾기</button></td></tr>
                <tr><td><input type="text" name="default_address" value='${member.default_address}'>기본주소</td></tr>
                <tr><td><input type="text" name="detailed_address" value='${member.detail_address}'>상세주소</td></tr>
            </tr>
            <tr>
                <td>일반전화</td>
                <td>
                  <select class="form-control" name="home_phone1"
                  style="width:80px;height:35px;display: inline;">
                    <option>02</option>
                    <option>031</option>
                    <option>032</option>
                    <option>033</option>
                    <option>042</option>
                    <option>053</option>
                  </select> -
                  <input type="text" name="home_phone2" size="10" style="display: inline;"> -
                  <input type="text" name="home_phone3" size="10" style="display: inline;">
                </td>
            </tr>
            <tr class="danger">
                <td>휴대전화</td>
                <td>
                  <select class="form-control" name="phone1" value='${member.cell_phone.substring(0,3)}'
                  style="width:80px;height:35px;display: inline;">
                    <option>010</option>
                    <option>011</option>
                    <option>016</option>
                    <option>017</option>
                    <option>018</option>
                    <option>019</option>
                  </select> -
                  <input type="text" name="phone2" value='${member.cell_phone.substring(4,8)}' size="10" style="display: inline;"> -
                  <input type="text" name="phone3" value='${member.cell_phone.substring(9,13)}' size="10" style="display: inline;">
                </td>
            </tr>
            <tr>
                <td>이메일</td>
                <td>
                  <input type="text" name="member_email_1" size="15" style="display: inline;"> @
                  <input type="text" name="member_email_2" size="15" style="display: inline;">
                  <select class="form-control" name="email_search"
                  style="width:150px;height:35px;display: inline;">
                    <option>naver.com</option>
                    <option>gmail.com</option>
                    <option>daum.net</option>
                    <option>nate.com</option>
                    <option>hotmail.com</option>
                    <option>yahoo.com</option>
                    <option>empas.com</option>
                    <option>korea.com</option>
                    <option>dreamwiz.com</option>
                  </select>
                </td>
            </tr>
            <tr>
                <td>이메일 수신여부</td>
                <td>
                  <input type="radio" name="accept" value="수신함" />수신함
                  <input type="radio" name="acceptNot" checked="checked" value="수신안함" /> 수신안함<br>
                  쇼핑몰에서 제공한느 유익한 이벤트 소식을 이메일로 받으실 수 있습니다. 
                </td>
            </tr>
        </tbody>
    </table>
    <!--<p align="right"><input id="p1" type = "submit" value = "변경"/></p>-->
    </form>
    <p align="right"><button id="ps"/>변경</button></p>
    </div>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>
    
    //var param = "id=1333&pw=2"
    $("#ps").bind("click",function(){
      var pw = $('input#password').val();
      var pw2 = $('input#password2').val();
      var id = $('input#member_id').val();
      var param = "id="+id+"&pw="+pw
      if(pw ==''){
        swal("비밀번호를 입력해주세요.","","info")
        return;
      }
      if(pw==pw2){
      $.ajax({
          url : "/greenright/mypage/update2",
          type: "post",
          data : param,
          cache: false,
          dataType: "text",
          success : function(result){
              if(result=="success"){
                $('#editForm').submit();
                swal("Good job!", "You clicked the button!", "success");
              } else {
                swal("비밀번호가 틀렸습니다.","","error")
              }
          },
          error: function (request, status, error){        
            var msg = "ERROR : " + request.status + "<br>"
          msg +=  + "내용 : " + request.responseText + "<br>" + error;
          console.log(msg);              
        }
      });
      } else {
        swal("비밀번호가 일치하지 않습니다.","","error")
      }
      });
    </script>
  </body>
</html>