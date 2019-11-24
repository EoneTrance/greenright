<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

#my-dropdown-hover:hover
{
  background-color: RGBA(130,174,70,0.5);
}

</style>

<!--------------------------------------------header------------------------------------------>
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
            <span style="padding-top: 5px" class="text">greenrighthelper@.gmail.com</span>
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
<nav class="navbar navbar-expand-lg ftco_navbar ftco-navbar-light" id="ftco-navbar">
  <div class="container">
    <a class="navbar-brand" href="/greenright/main">GreenRight</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="oi oi-menu"></span> Menu
    </button>

    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a href="#" class="nav-link">SHOP</a></li>
        <li class="nav-item"><a href="#" class="nav-link">EXHIBITION</a></li>
        <li class="nav-item"><a href="/greenright/board/list" class="nav-link">COMMUNITY</a></li>
        <li class="nav-item"><a href="/greenright/faq/list" class="nav-link">SUPPORT</a></li>
        <li class="nav-item"><a href="#" class="nav-link">CONTACT</a></li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item my-login-state-n" style="display:none;"><a href="/greenright/auth/form" class="nav-link">LOGIN</a></li>
        <li class="nav-item my-login-state-n" style="display:none;"><a href="/greenright/member/form" class="nav-link">JOIN</a></li>
        <li class="nav-item dropdown my-login-state-y" style="display:none;">
          <a class="nav-link dropdown-toggle font-weight-bold" href="/greenright/mypage" 
                id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" 
           onclick="mypage()" style="padding-top:1.188rem;padding-bottom:1.188rem;">
            <span style="font-size:150%;color:#82AE46;">${loginUser.name}</span>님
          </a>
          <div class="dropdown-menu my-0" aria-labelledby="dropdown04">
            <a id="my-dropdown-hover" class="dropdown-item" href="/greenright/mypage/userinfo">PROFILE</a>
            <a id="my-dropdown-hover" class="dropdown-item my-sellerinfo" href="/greenright/mypage/sellerinfo" style="display:none">SELLERINFO</a>
            <a id="my-dropdown-hover" class="dropdown-item" href="/greenright/mypage/order">ORDER</a>
            <a id="my-dropdown-hover" class="dropdown-item" href="/greenright/mypage/wishlist">WISHLIST</a>
            <a id="my-dropdown-hover" class="dropdown-item my-conversion" href="/greenright/mypage/conversion" style="display:none">CONVERSION</a>
            <a id="my-dropdown-hover" class="dropdown-item my-manage" href="/greenright/mypage/manage" style="display:none">PRODUCT MANAGE</a>
            <a id="my-dropdown-hover" class="dropdown-item my-sale" href="/greenright/mypage/sale" style="display:none">SALE</a>
            <a id="my-dropdown-hover" class="dropdown-item my-exhibition" href="/greenright/mypage/exhibition" style="display:none">MY EXHIBITION</a>
            <hr>
            <a id='my-dropdown-hover' class='dropdown-item' href='/greenright/auth/logout'>LOGOUT</a>
          </div>
        </li>
        <li class="nav-item cta cta-colored my-login-state-y" style="display:none;"><a href="/greenright/basket/list" class="nav-link"><span class="fas fa-cart-arrow-down"></span>[0]</a></li>
      </ul>
    </div>
  </div>
</nav>

<script>
function mypage() {
  location.href="/greenright/mypage";
}
window.onload = (function(){
  var loginUser = '${loginUser.id}';
  var loginStateY = document.querySelectorAll(".my-login-state-y");
  var loginStateN = document.querySelectorAll(".my-login-state-n");
  if (loginUser == null || loginUser == '') {
    for (var stateY of loginStateY) {
      stateY.style.display = 'none';
    }
    for (var stateN of loginStateN) {
      stateN.style.display = 'inline-block';
    }
  } else {
    for (var stateN of loginStateN) {
      stateN.style.display = 'none';
    }
    for (var stateY of loginStateY) {
      stateY.style.display = 'inline-block';
    }
    if (${loginUser.memberClass} == 2) {
      $(".my-sellerinfo").css("display", "inline-block");
      $(".my-manage").css("display", "inline-block");
      $(".my-sale").css("display", "inline-block");
      $(".my-exhibition").css("display", "inline-block");
    } else {
      $(".my-conversion").css("display", "inline-block");
    }
  }
});
</script>

<!-- <script>
window.onload = function(){
var loginUser = '${loginUser.id}';
if (loginUser == null || loginUser == '') {
  $("#usermenu").append(
      "<li class='nav-item'><a href='/greenright/auth/form' class='nav-link'>LOGIN</a></li>");
} else {
  $("#usermenu").append(
      "<li class='nav-item dropdown'>"
    + "<a class='nav-link dropdown-toggle font-weight-bold' href='/greenright/mypage' id='dropdown04' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>${loginUser.name}님</a>"
    + "<div class='dropdown-menu my-0' aria-labelledby='dropdown04'>"
    + "<a id='my-dropdown-hover' class='dropdown-item' href='/greenright/mypage/userinfo'>PROFILE</a>"
    + "<a id='my-dropdown-hover' class='dropdown-item' href='/greenright/mypage/order'>ORDER</a>"
    + "<a id='my-dropdown-hover' class='dropdown-item' href='/greenright/mypage/sale'>SALE</a>"
    + "<hr>"
    + "<a id='my-dropdown-hover' class='dropdown-item' href='/greenright/auth/logout'>LOGOUT</a>"
    + "</div>"
    + "</li>"
    + "<li class='nav-item cta cta-colored'><a href='#' class='nav-link'><span class='fas fa-cart-arrow-down'></span>[0]</a></li>");
}
};
</script> -->