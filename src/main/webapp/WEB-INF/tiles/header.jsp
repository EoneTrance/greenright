<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 style="color:green;">
  <a href="http://localhost:8888/greenright/auth/form" style="color:green;">GreenRight</a>
</h1>
<br>
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
          <a class="navbar-brand" href="/greenright/main">GreenRight</a>
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
              <li class="nav-item"><a href="/greenright/auth/form" class="nav-link"><span id="my-login-check"></span></a></li>
              <li class="nav-item cta cta-colored"><a href="/greenright/mypage/wishlist" class="nav-link"><span id="my-wishlist" class="fas fa-cart-arrow-down">[0]</span></a></li>
            </ul>
          </div>
        </div>
      </nav>
    <!--------------------------------------------------------------------------------------->
<script>
$(document).ready(function(){
  $.ajax({
    url : "/greenright/logincheck",
    type: 'get',
    cache: false,
    data: '',
    dataType: "text",
    success : function(result){
      if(result == 1){
        $('#my-login-check').text("로그아웃");
      } else {
        $('#my-login-check').text("로그인");
      }
    },
    error : function(request, status, error ) {
      }
  });
});
  $(document).ready(function(){
    $.ajax({
      url : "/greenright/mypage/wishlist/count",
      type: 'get',
      cache: false,
      data: '',
      dataType: "text",
      success : function(result){
        $('#my-wishlist').text("["+result+"]");
      },
      error : function(request, status, error ) {
        }
    });
  });
</script>
