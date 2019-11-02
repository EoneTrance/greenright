<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE HTML>
<html lang="ko">
  <head>
    <title>FAQ 게시판</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="../../../webcontents/assets/css/main.css" />
    <link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
    
  </head>
  
  <body class="is-preload">

    <!-- Page Wrapper -->
      <div id="page-wrapper">

        <!-- Header -->
          <header id="header">
            <h1><a href="main">Spectral</a></h1>
            <nav id="nav">
              <ul>
                <li class="special">
                  <a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu">
                    <ul>
                      <li><a href="main">Home</a></li>
                      <li><a href="generic">Generic</a></li>
                      <li><a href="elements">Elements</a></li>
                      <li><a href="#">Sign Up</a></li>
                      <li><a href="#">Log In</a></li>
                      <li><a href="faq">FAQ</a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </nav>
          </header>

        <!-- Main -->
          <article id="main">
            <header>
             
            </header>
            <section class="wrapper style5">
            

            
             <div id="FAQ_header" class="jumbotron">
              <h2>자주 묻는 질문</h2>
                <p>
                                자주 하시는 질문을 이용하시면 빠르게 궁금증을 해결하실 수 있습니다.<br>
                                원하시는 내용을 얻지 못하는 경우 1:1 문의를 이용해 주시기 바랍니다 . 
                </p>
             </div>
            
            <form id="search_form" style="margin: auto; width:700px;">
             
              <div class="form-group row my-group-row">
                <label for="search" class="col-sm-2 col-form-label">제목 검색:</label>
                <div class="col-sm-10">
                  <input class="form-control mr-sm-2" type="search" placeholder="검색할 제목을 입력해주세요" aria-label="Search" style="width: 550px;">
                </div>
              </div>
              
              <div class="form-group row my-group-row">
                <label for="question_type" class="col-sm-2 col-form-label">질문 유형:</label>
                  <div class="col-sm-10">
                    <select name="question_type" id="question_type" style="width: 550px;">
                        <option value="">- 질문유형을 선택하세요 -</option>
                        <option value="1">배송 안내</option>
                        <option value="1">주문 결제</option>
                        <option value="1">주문 취소</option>
                        <option value="1">교환, 환불</option>
                        <option value="1">적립금</option>
                        <option value="1">기타</option>
                      </select>
                  </div>
                  <div style="margin: auto; boarding:5px; padding:10px" >
                    <!-- <button type="submit">search</button> -->
                    <input role="button" type="submit" value="search">
                    <input  type="reset" value="Reset">
                  </div>
              </div>
              
              
            
            
            
            
            </section>
          </article>

        <!-- Footer -->
          <footer id="footer">
            <ul class="icons">
              <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
              <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
              <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
              <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
              <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
            </ul>
            <ul class="copyright">
              <li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
          </footer>

      </div>




    <!-- Scripts -->
    
      <script src="../../../webcontents/assets/js/jquery.min.js"></script>
      <script src="../../../webcontents/assets/js/jquery.scrollex.min.js"></script>
      <script src="../../../webcontents/assets/js/jquery.scrolly.min.js"></script>
      <script src="../../../webcontents/assets/js/browser.min.js"></script>
      <script src="../../../webcontents/assets/js/breakpoints.min.js"></script>
      <script src="../../../webcontents/assets/js/util.js"></script>
      <script src="../../../webcontents/assets/js/main.js"></script>
      <script src="/node_modules/jquery/dist/jquery.min.js"></script>
   
   
      <script>    

    var totalCount = 1000; //전체 건수
    var totalPage = Math.ceil(totalCount/15);//페이지 수
    var PageNum;
    var page;

    $("button").click(function(){    
        page = parseInt($("input").val());
        drawPage(page);
    });

    function drawPage(goTo){        
        page = goTo;    
        var pageGroup = Math.ceil(page/10);    //페이지 그룹 넘버링
        var next = pageGroup*10;
        var prev = next-9;            

        var goNext = next+1;
        if(prev-1<=0){
            var goPrev = 1;
        }else{
            var goPrev = prev-1;
        }    

        if(next>totalPage){
            var goNext = totalPage;
            next = totalPage;
        }else{
            var goNext = next+1;

        var prevStep = " <a href='javascript:drawPage("+goPrev+");'>"+goPrev+"이동</a> ";
        var nextStep = " <a href='javascript:drawPage("+goNext+");'>"+goNext+"이동</a> ";            

        $("#pageZone").empty();
        $("#pageZone").append(prevStep);
        for(var i=prev; i<=next;i++){
            PageNum = "<strong>"+i+"</strong> ";
            $("#pageZone").append(PageNum);
        }    
        $("#pageZone").append(nextStep);    
    }    

    </script>


  </body>
</html>