<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/mypage.css">

<br><br><br>
<div id="content">
  <h3>GreenRight 회원이 되신것을 환영합니다.</h3>
  <br><br>
  <div id="regResult">
    <p><span style="font-size:200%">'${member.id}'</span> 님 환영합니다!</p>
    <br>
    <p><span style="font-size:200%">'${member.email}'</span> 으로 인증메일이 발송되었으며,</p>
    <p>메일에 포함된 링크를 통해 인증 후 회원의 모든 서비스를 이용하실 수 있습니다.</p>
    <br>
    <a href='http://localhost:8888/greenright/auth/form'>로그인 페이지로 이동하기</a>
  </div>
</div>
<br><br>

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