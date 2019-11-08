<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<div id="content">
<h2 style="text-align:center">GreenRight 회원이 되신것을 환영합니다.</h2>
<div id="regResult" style="margin:100px;text-align:center;">
  <p><span style="font-size:200%">'${member.id}'</span> 님 환영합니다!</p>
  <br>
  <p><span style="font-size:200%">'${member.email}'</span> 으로 인증메일이 발송되었으며,</p>
  <p>메일에 포함된 링크를 통해 인증 후 회원의 모든 서비스를 이용하실 수 있습니다.</p>
  <br> <a href='http://localhost:8888/greenright/auth/form'>로그인 페이지로 이동하기</a>
</div>
</div>