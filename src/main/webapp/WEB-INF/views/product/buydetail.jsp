<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
li {
  list-style: none;
  margin: 0 0 0 0;
  padding: 0 0 0 0;
  border: 0;
  float: left;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  width: 450px;
}

img.img-fluid {
  margin-bottom: 14px;
}

select.form-control {
  width: 400px;
}

section.ftco-section {
  padding: 30px 0;
}

li.useruse {
  display: inline;
  margin-left: 20px;
  margin-right: 20px;
}

ul.widthsizer {
  width: 1110px;
  padding-left: 203px;
}

.btn.btn-primary {
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}

textarea {
  resize: none;
}

div.biglr {
  width: 100%;
  height: 500Wpx;
}

div.leftphoto {
  width: 60%;
  float: left;
  box-sizing: border-box;
  line-height: 500px;
}

div.rightcontents {
  width: 40%;
  float: right;
  box-sizing: border-box;
}

.tcontents {
  margin-top: 19px;
}

div.stars {
  width: 268px;
  display: inline-block;
  height: 70px;
}

input.star {
  display: none;
}

label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before {
  color: #F62;
}

label.star:hover {
  transform: rotate(-15deg) scale(1.3);
}

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}

.sellermdal-content {
  height: 383px;
}

.qnamodal, .sellermodal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.qnamodal-content, .sellermdal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.qnaclose, .sellerclose {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.qnaclose:hover, .qnaclose:focus, .sellerclose:hover, .sellerclose:focus
  {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

input.titleholder {
  width: 100%;
}

textarea#contentholder, textarea#sellerholder {
  height: 200px !important;
  width: 100%;
  margin-bottom: 10px;
}

div.qnabody, div.sellerbody {
  width: 97%
}

button#submitbut, button#answersubmit {
  float: right;
}

.anqfooter, .sellerfooter {
  margin-bottom: 10px;
}

.fix {
  position: fixed;
  _position: absolute;
  width: 100%;
  top: 0;
  z-index: 100
}

.c23 {
  color: #82ae46;
}

.reviewimagepresent {
  text-align: left;
}

td.conts {
  text-align: left;
  width: 690px;
  height: auto;
  padding-top: 10px;
  padding-bottom: 10px;
  font-size: large;
}

tr:hover {
  background-color: lightyellow;
}

td.title {
  text-align: left;
  cursor: pointer;
  width: 1110px;
  height: 50px;
  font-size: large;
  border-top: 0.5px solid beige;
  border-bottom: 0.5px solid beige;
}

#title {
  width: 743px;
  height: 50px;
  margin-right: 31px;
}

textarea#contents {
  margin-right: 200px;
}

button.qnaAdd.btn.btn-primary {
  margin-bottom: 30px;
  margin-top: 20px;
}

p.starpoint {
  display: inline;
}

span.reviewtitle {
  display: inline-block;
  width: 650px;
}

span.reviewid {
  display: inline-block;
  width: 140px;
}

span.reviewrating {
  display: inline-block;
  width: 97px;
}

strong.reviewcotents {
  margin-left: 34px;
}

.productquestionwrite {
  text-align: center;
}

span.answerquestion {
  font-size: larger;
}

textarea#rvcontents {
  margin-right: 234px;
    margin-bottom: 15px;
}

input.titleholder.form-control {
  margin-bottom: 10px;
}

strong.marginmk {
  margin-right: 5px;
}

input#title {
  margin-bottom: 15px;
}
span.answertitle {
    display: inline-block;
    width: 667px;
    margin-left: 10px;
}
span.answerwriter {
    display: inline-block;
    width: 145px;
}
span.answerdate {
    display: inline-block;
    width: 155px;
}
span.answercontents,span.answerconts {
    margin-left: 20px;
}
span.secretbook {
    margin-left: 13px;
    display: inline-block;
    width: 667px;
}
.col-md-12.heading-section.text-center.ftco-animate.bordermaker.justify-content-center.fadeInUp.ftco-animated {
    height: 48px;
    background-color: white;
    margin-top: 18.4px;
}
*:focus{
  outline: none;
}
h5.starratin {
    padding-top: 26px;
    color : light-yellow ;
}
input.priv {
    height: 13px;
}
label.custom-file-label {
    width: 743px;
}
button#review-add-btn {
    height: fit-content;
}
button.btn.btn-primary.CartBut {
    background: #82ae46 !important;
}


</style>
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
<!-- 별점 표시를 위한 css -->
<link rel="stylesheet"
  href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">

<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">

<link rel="stylesheet" href="/css/aos.css">

<link rel="stylesheet" href="/css/ionicons.min.css">

<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">


<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/style.css">

<div class="hero-wrap hero-bread"
  style="background-image: url('/images/bg_1.jpg');">
  <div class="container">
    <div
      class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <p class="breadcrumbs">
          <span class="mr-2"><a href="/greenright/main">Home</a></span>
          <span class="mr-2"><a href="/greenright/main">Product</a></span>
          <span>Product Single</span>
        </p>
        <h1 class="mb-0 bread">Product Single</h1>
      </div>
    </div>
  </div>
</div>


<!-- 어떤거 보내야할지 정확하게 모르겠어서 일단 상품정보에대한부분은 다 폼으로 묶어놓았습니다 .  -->
<form>
<section class="ftco-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 mb-5 ftco-animate">
        <img src='/upload/product/${productPhoto.photos[0].photoPath}'
          id="clickchange" class="img-fluid" alt="Colorlib Template"
          style="width: 450px; height: 450px; object-fit: cover;">
        <ul>
          <c:forEach items="${productPhoto.photos}" var="photo">
            <li><img src='/upload/product/${photo.photoPath}'
              id="/upload/product/${photo.photoPath}"
              class="changesaver"
              style="width: 50px; height: 50px; object-fit: cover; cursor: pointer;">
            </li>
          </c:forEach>
        </ul>
      </div>
      <div class="col-lg-6 product-details pl-md-5 ftco-animate">
        <h3>${product.productName}</h3>
        <input type="text" value="${product.no}" id="productNo" hidden>
        <div class="rating d-flex">
          <p class="text-left mr-4">
            <img src="" alt="" class="ratingimg"
              style="width: 243px; height: 50px; object-fit: cover;">
          </p>
        </div>
        <p class="price">
          <span>${product.price}원</span>
        </p>
        <p>${product.description}</p>
        <div class="row mt-4">
          <div class="col-md-6">
            <div class="form-group d-flex">
              <div class="select-wrap">
                <div class="icon">
                  <span class="ion-ios-arrow-down"></span>
                </div>
                <c:forEach items="${product.options}" var="option">
                  <select name="optionItemNo" id="" class="form-control">
                    <c:forEach items="${option.optionItem}" var="item">
                      <option  value="${item.no}">옵션명:&nbsp;${item.optionItemMatter}&nbsp;|&nbsp;가격:&nbsp;+${item.optionsPrice}원</option>
                    </c:forEach>
                  </select>

                </c:forEach>
              </div>
            </div>
          </div>
          <div class="w-100"></div>
          <div class="input-group col-md-6 d-flex mb-3">
            <span class="input-group-btn mr-2">
              <button type="button" class="quantity-left-minus btn"
                data-type="minus" data-field="">
                <i class="ion-ios-remove"></i>
              </button>
            </span> <input type="text" id="quantity" name="quantity"
              class="form-control input-number" value="1" min="1"
              max="100"> <span class="input-group-btn ml-2">
              <button type="button" class="quantity-right-plus btn"
                data-type="plus" data-field="">
                <i class="ion-ios-add"></i>
              </button>
            </span>
          </div>
          <div class="w-100"></div>
          <div class="col-md-12"></div>
        </div>
        <p>
          <button  class="btn btn-primary CartBut">Add to
            Cart</button>
        </p>
      </div>
    </div>
  </div>
</section>
</form>
<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <h3 class="mb-4 recommendproduct">같이 보면 좋은 상품</h3>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <input type="text" value="${product.no}" class="numberfinder"
        hidden />
      <c:forEach items="${productLiST}" var="production">
        <c:if test="${production.no ne product.no}">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              <a href="/greenright/product/buydetail?no=${production.no}" class="img-prod"><img class="img-fluid"
                src="/upload/product/${production.photos[0].photoPath}"
                alt="Colorlib Template"
                style="width: 208px; height: 208px; object-fit: cover;">
                <span class="status">30%</span> </a>
              <div class="overlay"></div>
              <div class="text py-3 pb-4 px-3 text-center">
                <h3>
                  <a href="/greenright/product/buydetail?no=${production.no}" >${production.productName}</a>
                </h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price">
                      <span
                        class="price-sale">${production.price}</span>
                    </p>
                  </div>
                </div>
                <div class="bottom-area d-flex px-3">
                  <div class="m-auto d-flex">
                    <a href="#"
                      class="add-to-cart d-flex justify-content-center align-items-center text-center">
                      <span><i class="ion-ios-menu"></i></span>
                    </a> <a href="#"
                      class="buy-now d-flex justify-content-center align-items-center mx-1">
                      <span><i class="ion-ios-cart"></i></span>
                    </a> <a href="#"
                      class="heart d-flex justify-content-center align-items-center ">
                      <span><i class="ion-ios-heart"></i></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </c:if>
        <c:if test="${product.no eq product.no}">

        </c:if>
      </c:forEach>
    </div>
  </div>
</section>




<!-- 상품평 상품문의 상세설명 리뷰 -->
<div class="floatMenu">
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center mb-3 pb-3">
        <div
          class="col-md-12 heading-section text-center ftco-animate bordermaker justify-content-center">
          <nav id="nav">
            <ul class="widthsizer">
              <li class="useruse" id="detaildesc" onclick="fnMove('1')"><h4
                  id="de1" style="cursor: pointer">
                  <strong>상세설명</strong>
                </h4></li>
              <li class="useruse" id="producttest" onclick="fnMove('2')"><h4
                  id="de2" style="cursor: pointer">
                  <strong>상품평</strong>
                </h4></li>
              <li class="useruse" id="question" onclick="fnMove('3')"><h4
                  id="de3" style="cursor: pointer">
                  <strong>상품문의</strong>
                </h4></li>
              <li class="useruse" id="review" onclick="fnMove('4')"><h4
                  id="de4" style="cursor: pointer">
                  <strong>상품평작성</strong>
                </h4></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </section>
</div>
<!--  상품평 누를시 상품평 나오고 딴거 누를시 딴거 나오게 할부분  -->
<Section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div
        class="col-md-12 heading-section text-center ftco-animate userusechanage">
        <div class="productscore target" id="div1">
          <br> <br> <br>
        </div>
        <br>
        <hr>
        <div class="productrating target" id="div2">
          <br> <br>
        </div>
        <br>
        <hr>
        <div class="productquestion target" id="div3">
          <h5>
            <strong>상품문의</strong>
          </h5>
          <br>
          <button class='qnaAdd btn btn-primary'>상품문의작성</button>
          <div class="ProductQuestionList"></div>
        </div>
        <hr>
        <div class="review target" id="div4">
          <h5 class="reviewrite">
            <strong>상품평작성</strong>
          </h5>
          <br>
        </div>

      </div>
    </div>
  </div>
</Section>

<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
  <div class="container py-4" id="div5">
    <div class="row d-flex justify-content-center py-5">
      <div class="col-md-6">
        <h2 style="font-size: 22px;" class="mb-0">Subcribe to our
          Newsletter</h2>
        <span>Get e-mail updates about our latest shops and
          special offers</span>
      </div>
      <div class="col-md-6 d-flex align-items-center">
        <form action="#" class="subscribe-form">
          <div class="form-group d-flex">
            <input type="text" class="form-control"
              placeholder="Enter email address"> <input
              type="submit" value="Subscribe" class="submit px-3">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<!--  사진 클릭시 뜨는 리뷰 모달 만들기용  -->
<div class="modal bd-example-modal-xl" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">리뷰</h5>
        <button type="button" class="close btn btn-primary"
          data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="biglr">
          <div class="leftphoto">
            <img class="img-fluid modalimgget" src="/images/bg_1.jpg"
              alt=""
              style="width: 630px; height: 533px; object-fit: cover;">
          </div>
          <div class="rightcontents">
            <div class="memberinfo"></div>
            <div class="tcontents"></div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary"
          data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- 상품 question 작성시 버튼 클릭시 보이는 모달 작성용  -->
<div id="myModal" class="qnamodal">
  <!-- Modal content -->
  <div class="qnamodal-content">
    <div class="qnaheader">
      <span class="qnaclose">&times;</span>
      <h5 class="productquestionwrite">상품 문의 작성</h5>
    </div>
    <br>
    <div class="qnabody">
      <input type="text" class="titleholder form-control"
        name="qnatitle" placeholder="제목을 입력해주세요 ">
      <textarea class="contentholder form-control" id="contentholder"
        name="qnacontents" placeholder="내용을 입력해주세요" maxlength=1000
        style="resize: none;"></textarea>
     
       <input type="checkbox" name="private" class="priv" value=0>
      비공개 
      <button id="submitbut" class="btn btn-primary">작성</button>
    </div>
    <div class="anqfooter"></div>
  </div>
</div>
<!--  상품 문의 답변 버튼을 클릭시 보이는 모달  -->
<div id="sellerModal" class="sellermodal">
  <div class="sellermdal-content">
    <div class="sellerheader">
      <span class="sellerclose">&times;</span>
      <h5 class="productquestionwrite">문의답변</h5>
    </div>
    <div class="sellerbody">
      <div class="before">작성한 질문의 제목과 내용 출력할 자리</div>
      <div class="now">
        <textarea class="sellerholder form-control" id="sellerholder"
          name="sellercontents" placeholder="답변내용을 입력해주세요"
          maxlength=1000 style="resize: none;"></textarea>
      </div>
      <button id="answersubmit" class="btn btn-primary">작성</button>
    </div>
    <div class="sellerfooter"></div>
  </div>
</div>





<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/jquery.animateNumber.min.js"></script>
<script src="/js/bootstrap-datepicker.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>
<script
  src="/node_modules/blueimp-file-upload/js/vendor/jquery.ui.widget.js"></script>
<script
  src="/node_modules/blueimp-file-upload/js/jquery.iframe-transport.js"></script>
<script src="/node_modules/blueimp-file-upload/js/jquery.fileupload.js"></script>
<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>

<script>
  $(document)
      .ready(
          function() {
            $.get("/greenright/json/Review/getRatingAVer", {
              "no" : $("#productNo").val()
            }, function(a) {
              ratingAver = a.result;
              if (ratingAver <= 1) {
                $(".ratingimg").attr("src", "/images/0.PNG")
              } else if (ratingAver <= 1.5) {
                $(".ratingimg").attr("src", "/images/1.PNG")
              } else if (ratingAver <= 2.5) {
                $(".ratingimg").attr("src", "/images/2.PNG")
              } else if (ratingAver <= 3.5) {
                $(".ratingimg").attr("src", "/images/3.PNG")
              } else if (ratingAver <= 4.5) {
                $(".ratingimg").attr("src", "/images/4.PNG")
              } else if (ratingAver <= 5.0) {
                $(".ratingimg").attr("src", "/images/5.PNG")
              } else {
                $(".ratingimg").attr("src", "/images/0.PNG")
              }

            })
            let ratingAver = 0;
            $
                .get(
                    "/greenright/json/Review/list",
                    {
                      "no" : $("#productNo").val()
                    },
                    function(k) {
                      var a = "";
                      a += "<h5><strong>사진과 리뷰</strong></h5>"
                      if (k.result != null) {
                        a += "<div class='reviewimagepresent'>"
                        for (var i = 0; i < k.result.length; i++) {
                          if (k.result[i].photos.photoPath != null) {
                            a += "<img class='img-fluid modal_maker' id="+k.result[i].no+" src='/upload/review/"+k.result[i].photos.photoPath+"'  alt='' style='width:100px; height:100px; object-fit:cover; cursor:pointer;'> "
                          }
                        }
                        a += "</div>"
                        a += "<h5><strong>리뷰</strong></h5>"
                        a += "<table id='contents'>"
                        for (var i = 0; i < k.result.length; i++) {
                          a += "<tr><td class='title'><span class='reviewtitle'><strong class='marginmk'>제목:</strong>"
                              + k.result[i].title + "</span>&nbsp;&nbsp;&nbsp;"
                          a += "<span class='reviewid'><strong class='marginmk'>아이디:</strong>"
                              + k.result[i].member.id
                              + "</span>&nbsp;&nbsp;&nbsp;"
                          a += "<span class='reviewrating'><strong class='marginmk'>평점:</strong>"
                              + k.result[i].rating
                              + "점</span> &nbsp;&nbsp;&nbsp;"
                          a += "<span class='reviewdate'><strong class='marginmk'>작성일:</strong>"
                              + k.result[i].createdDate + "</span></td></tr>"
                          a += "<tr><td class='conts'><strong class='reviewcotents marginmk'>내용</strong>:"
                              + k.result[i].contents + "</td><tr>"
                        }
                        a += "</table>"
                      } else {
                        a += "상품평이 하나도없습니다";
                      }
                      $(".productrating").html(a);

                      $('#contents tr').hide();
                      $('#contents').find('.title').parent().show();
                      $('#contents .title').parent().click(function() {
                        var tr = $('#contents tr');
                        var rindex = $(this).parent().children().index(this);
                        if ($(tr[rindex + 1]).css("display") == "none") {
                          $(tr[rindex + 1]).show();
                        } else {
                          $(tr[rindex + 1]).hide();
                        }
                      });

                      $(document)
                          .on(
                              "click",
                              ".modal_maker",
                              function() {
                                let reviewNo = $(this).attr('id');
                                let imagesrc = $(this).attr("src");
                                $(".modalimgget").attr("src", imagesrc);
                                $
                                    .get(
                                        "/greenright/json/Review/get",
                                        {
                                          "no" : reviewNo
                                        },
                                        function(a) {

                                          let html1 = "";
                                          html1 += "<img src='/images/member.PNG' style='width:30px; height:30px; object-fit:cover;'>"
                                          html1 += "<strong class='marginmk'>평점 :</strong>"
                                              + a.result.rating + "점<br>";
                                          html1 += "<strong class='marginmk'>아이디:</strong>"
                                              + a.result.member.id + "";
                                          html1 += "<strong class='marginmk'>작성일:</strong>"
                                              + a.result.createdDate + "";
                                          $(".memberinfo").html(html1);
                                          let html2 = "";
                                          html2 += "<strong class='marginmk'>제목:</strong>"
                                              + a.result.title + "<br>"
                                          html2 += "<strong class='marginmk'>내용:</strong>"
                                              + a.result.contents + "";
                                          $(".tcontents").html(html2);
                                        })

                                $('div.modal').modal();
                              })

                    })

            /*  $(document).on("click",".qnaAdd",function(){
             $('div.modal2').modal();
             }) */

            var a = "";
            a += "<div class='container' style='width: 1140px; margin: auto auto; padding-right: 15px; padding-left: 15px;'>"
            a += "<div style='width: inherit;'>"
            a += "<div class='input-group' style='width: 1000px; margin: auto;'>"
            a += "<h5 class='starratin'>별점</h5>"
            a += "<div class='stars' >"
            a += "<input class='star star-5' id='star-5' type='radio' name='rating' value=5 />"
            a += "<label class='star star-5' for='star-5'></label>"
            a += "<input class='star star-4' id='star-4' type='radio' name='rating' value=4 />"
            a += "<label class='star star-4' for='star-4'></label>"
            a += "<input class='star star-3' id='star-3' type='radio' name='rating' value=3 />"
            a += "<label class='star star-3' for='star-3'></label>"
            a += "<input class='star star-2' id='star-2' type='radio' name='rating' value=2 />"
            a += "<label class='star star-2' for='star-2'></label>"
            a += "<input class='star star-1' id='star-1' type='radio' name='rating' value=1 />"
            a += "<label class='star star-1' for='star-1'></label>"
            a += "</div>"
            a += "<input type='text' id='title' style='width :743px' placeholder='제목을입력하세요'/>"
            a += "<br><TEXTAREA  id ='rvcontents' cols='90' rows='10' style='resize:none;'  placeholder='내용을 입력하세요.'/><br>"
            a += "<div class='input-group mb-3'style='width :685px'>"
            a +=  "<div class='custom-file' style='width :685px'>"
            a += "<input type='file' class='custom-file-input btn btn-primary' id='filePath' name='reviewPhoto' style='width :685px'>"
            a += "<label class='custom-file-label' for='filePath' aria-describedby='inputGroupFileAddon02' style='width :685px'>Choose file</label>"
            a += "</div></div>"
            a += "<button id='review-add-btn' class='btn btn-primary'>등록</button>"
/*             a += "<input type='file' class='btn btn-primary' id='filePath' name='reviewPhoto'>"
 */            a += "<div id='images-div'><img  class='imgpreview'src='' alt='' style='width:100px height:100px'></div>"
            a += "</div></div><br><br>";
            $(".review").append(a);

            let ratingch = 5;
            $(document).on("change", ".star", function() {
              ratingch = $(this).val();
            })

            $(document)
                .on("click","#review-add-btn",
                    function() {
                      let productNo = $("#productNo").val();
                      let memberNo = 1;
                      let rating = ratingch
                      let title = $("#title").val();
                      let contents = $("#rvcontents").val();
                      let ReviewPhoto = $("#filePath").val();
                      $
                          .post(
                              "review/check",
                              {
                                "productNo" : productNo,
                                "memberNo" : memberNo
                              },
                              function(a) {
                                if (a == 0) {
                                  $
                                      .ajax({
                                        url : "/greenright/json/Review/add",
                                        type : "post",
                                        data : {
                                          "productNo" : productNo,
                                          "memberNo" : memberNo,
                                          "rating" : rating,
                                          "title" : title,
                                          "contents" : contents,
                                        },
                                        success : function(result) {
                                          swal("상품평 등록완료")
                                          let ratingAver = 0;
                                          $
                                              .get(
                                                  "/greenright/json/Review/list",
                                                  {
                                                    "no" : $("#productNo")
                                                        .val()
                                                  },
                                                  function(k) {
                                                    var a = "";
                                                    a += "<h5>사진/리뷰</h5>"
                                                    if (k.result != null) {
                                                      a += "<div class='reviewimagepresent'>"
                                                      for (var i = 0; i < k.result.length; i++) {
                                                        if (k.result[i].photos.photoPath != null) {
                                                          a += "<img class='img-fluid modal_maker' id="+k.result[i].no+" src='/upload/review/"+k.result[i].photos.photoPath+"'  alt='' style='width:100px; height:100px; object-fit:cover; cursor:pointer;'> "
                                                        }
                                                      }
                                                      a += "</div>"
                                                      a += "<h5>리뷰</h5>"
                                                      a += "<table id='contents'>"
                                                      for (var i = 0; i < k.result.length; i++) {
                                                        a += "<tr><td class='title'><span class='reviewtitle'><strong class='marginmk'>제목:</strong>"
                                                            + k.result[i].title
                                                            + "</span>"
                                                        a += "<span class='reviewid'><strong class='marginmk'>아이디:</strong>"
                                                            + k.result[i].member.id
                                                            + "</span>"
                                                        a += "<span class='reviewrating'><strong class='marginmk'>평점:</strong>"
                                                            + k.result[i].rating
                                                            + "점</span> "
                                                        a += "<span class='reviewdate'><strong class='marginmk'>작성일:</strong>"
                                                            + k.result[i].createdDate
                                                            + "</span></td></tr>"
                                                        a += "<tr><td class='conts'><strong class='reviewcotents marginmk'>내용</strong>:"
                                                            + k.result[i].contents
                                                            + "</td><tr>"
                                                      }
                                                      a += "</table>"
                                                    } else {
                                                      a += "상품평이 하나도없습니다";
                                                    }
                                                    $(".productrating").html(a);

                                                    $('#contents tr').hide();
                                                    $('#contents').find(
                                                        '.title').parent()
                                                        .show();
                                                    $('#contents .title')
                                                        .parent()
                                                        .click(
                                                            function() {
                                                              var tr = $('#contents tr');
                                                              var rindex = $(
                                                                  this)
                                                                  .parent()
                                                                  .children()
                                                                  .index(this);
                                                              if ($(
                                                                  tr[rindex + 1])
                                                                  .css(
                                                                      "display") == "none") {
                                                                $(
                                                                    tr[rindex + 1])
                                                                    .show();
                                                              } else {
                                                                $(
                                                                    tr[rindex + 1])
                                                                    .hide();
                                                              }
                                                            });

                                                    $(document)
                                                        .on(
                                                            "click",
                                                            ".modal_maker",
                                                            function() {
                                                              let reviewNo = $(
                                                                  this).attr(
                                                                  'id');
                                                              let imagesrc = $(
                                                                  this).attr(
                                                                  "src");
                                                              $(".modalimgget")
                                                                  .attr("src",
                                                                      imagesrc);
                                                              $
                                                                  .get(
                                                                      "/greenright/json/Review/get",
                                                                      {
                                                                        "no" : reviewNo
                                                                      },
                                                                      function(
                                                                          a) {

                                                                        let html1 = "";
                                                                        html1 += "<img src='/images/member.PNG' style='width:30px; height:30px; object-fit:cover;'>"
                                                                        html1 += "<strong class='marginmk'>평점 :</strong>"
                                                                            + a.result.rating
                                                                            + "점<br>";
                                                                        html1 += "<strong class='marginmk'>아이디:</strong>"
                                                                            + a.result.member.id
                                                                            + "";
                                                                        html1 += "<strong class='marginmk'>작성일:</strong>"
                                                                            + a.result.createdDate
                                                                            + "";
                                                                        $(
                                                                            ".memberinfo")
                                                                            .html(
                                                                                html1);
                                                                        let html2 = "";
                                                                        html2 += "<strong>제목:</strong>"
                                                                            + a.result.title
                                                                            + "<br>"
                                                                        html2 += "<strong>내용:</strong>"
                                                                            + a.result.contents
                                                                            + "";
                                                                        $(
                                                                            ".tcontents")
                                                                            .html(
                                                                                html2);
                                                                      })

                                                              $('div.modal')
                                                                  .modal();
                                                            })

                                                  })
                                        },
                                      });
                                } else {
                                  swal("이미 상품평을 작성하셨습니다.")
                                }
                              })

                    })

            $('#filePath').fileupload(
                {
                  url : "/greenright/json/Review/add",
                  dataType : 'json', // 서버가 보낸 응답이 JSON임을 지정하기
                  previewMaxWidth : 100, // 미리보기 이미지 너비
                  previewMaxHeight : 100, // 미리보기 이미지 높이 
                  previewCrop : true,
                  processalways : function(e, data) {
                    var imagesDiv = $('#images-div');
                    imagesDiv.html("");
                    for (var i = 0; i < data.files.length; i++) {
                      try {
                        if (data.files[i].preview.toDataURL) {
                          $(".imgpreview").attr('src',
                              data.files[i].preview.toDataURL()).css('width',
                              '100px').appendTo(imagesDiv);
                        }
                      } catch (err) {
                      }
                    }
                    $('#upload-btn').unbind("click");
                    $('#upload-btn').click(function() {
                      data.submit();

                    });
                  },
                  add : function(e, data) {
                    $("#review-add-btn").unbind();
                    $("#review-add-btn").off();
                    $('#review-add-btn').click(function() {

                      $.post("review/check", {
                        "productNo" : $("#productNo").val(),
                        "memberNo" : 1
                      }, function(a) {
                        if (a == 0) {
                          data.submit(); // submit()을 호출하면, 서버에 데이터를 보내기 전에 submit 이벤트가 발생한다.

                          swal("상품평 등록완료")

                        } else {
                          swal("이미 상품평을 작성하셨습니다.")
                        }

                      })

                    });
                  },
                  submit : function(e, data) { // submit 이벤트가 발생했을 때 호출됨. 서버에 전송하기 전에 호출됨.
                    data.formData = {
                      "productNo" : $("#productNo").val(),
                      "memberNo" : 1,
                      "rating" : ratingch,
                      "title" : $("#title").val(),
                      "contents" : $("#rvcontents").val()
                    }

                  }

                });

            // When the user clicks on the button, open the modal 
            //질문 등록 하는 부분 
            $(document).on("click", ".qnaAdd", function() {
              document.getElementById('myModal').style.display = "block";
            })

            //답변 등록하는 부분 
            $(document)
                .on(
                    "click",
                    ".answersend",
                    function() {
                      document.getElementById('sellerModal').style.display = "block";
                      let questionNo = $(this).prev().val()
                      $
                          .get(
                              "/greenright/json/ProductQuestion/getOneQuestion",
                              {
                                "questionNo" : questionNo
                              },
                              function(a) {
                                let before = "";
                                before += "<span class='answerquestion'><strong>제목 :</strong> "
                                    + a.result.title + "</span><br>"
                                before += "<span class='answerquestion'><strong>내용 :</strong> "
                                    + a.result.contents + "</span>"
                                $(".before").html(before);
                              })
                      $(document)
                          .on(
                              "click",
                              "#answersubmit",
                              function() {
                                if ($(".sellerholder").val() == "") {
                                  swal("답변 내용을 입력해주세요")
                                } else {
                                  $
                                      .post(
                                          "/greenright/json/ProductAnswer/add",
                                          {
                                            "no" : questionNo,
                                            "answerContents" : $(
                                                ".sellerholder").val()
                                          },
                                          function(result) {
                                            if (result.result == "success") {
                                              swal("등록에 성공하셨습니다 . ")
                                              $(".sellerclose")
                                                  .trigger("click");
                                            } else {
                                              swal("등록에 실패하셨습니다 .  ")
                                              $(".sellerclose")
                                                  .trigger("click");
                                            }

                                            $
                                                .get(
                                                    "/greenright/json/ProductQuestion/getQuestion",
                                                    {
                                                      "no" : $("#productNo")
                                                          .val()
                                                    },
                                                    function(a) {
                                                      let qa = "";
                                                      qa += "<table id='questions'>"
                                                      for (i = 0; i < a.result.length; i++) {

                                                        if (a.result[i].secretFlag == 0) {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong>YES<span class ='answertitle'><strong class='marginmk'> 제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong> NO <span class='answertitle'><strong  class='marginmk'>제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong class='marginmk'>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          }
                                                        } else {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>YES <span class='secretbook'><img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                                + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>NO<span class='secretbook'> <img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                              + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><span class='answercontents'><td class='conts'><strong>내용 : </strong>"
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          }

                                                        }
                                                      }
                                                      qa += "</table>"
                                                      $(".ProductQuestionList")
                                                          .html(qa);

                                                      $('#questions tr').hide();
                                                      $('#questions').find(
                                                          '.title').parent()
                                                          .show();
                                                      $('#questions .title')
                                                          .parent()
                                                          .click(
                                                              function() {
                                                                var tr = $('#questions tr');
                                                                var rindex = $(
                                                                    this)
                                                                    .parent()
                                                                    .children()
                                                                    .index(this);
                                                                if ($(
                                                                    tr[rindex + 1])
                                                                    .css(
                                                                        "display") == "none") {
                                                                  if ($(
                                                                      tr[rindex])
                                                                      .children()
                                                                      .hasClass(
                                                                          "secretwrite")) {
                                                                    swal("비밀글은 작성자와 운영자만 볼수있습니다.");
                                                                  } else {
                                                                    $(
                                                                        tr[rindex + 1])
                                                                        .show();
                                                                  }
                                                                } else {
                                                                  $(
                                                                      tr[rindex + 1])
                                                                      .hide();
                                                                }
                                                              });

                                                    })

                                          })
                                }
                              })
                    })

            //질문 등록하는 모달 닫기 버튼 누르면 
            $(document).on("click", ".qnaclose", function() {
              document.getElementById('myModal').style.display = "none";
              $(".contentholder").val("");
              $(".titleholder").val("");
            })
            $(document).on("click", ".sellerclose", function() {
              document.getElementById('sellerModal').style.display = "none"
              $(".sellerholder").val("");
            })
            // When the user clicks anywhere outside of the modal, close it
            $(document).on("click", window, function() {
              if (event.target == document.getElementById('myModal')) {
                document.getElementById('myModal').style.display = "none";
                $(".contentholder").val("");
                $(".titleholder").val("");
              }
            })

            $(document).on("click", window, function() {
              if (event.target == document.getElementById('sellerModal')) {
                document.getElementById('sellerModal').style.display = "none";
                $(".sellerholder").val("");
              }
            })
            $(document)
                .on(
                    "click",
                    "#submitbut",
                    function() {
                      let titl = $(".titleholder").val()
                      let contents = $(".contentholder").val()
                      let pri = $(".priv").val()
                      let productNo = $("#productNo").val();
                      let memberNo = 1;
                      if (titl == "" || contents == "") {
                        swal("제목 혹은 내용을 입력하세요")
                      } else {
                        $
                            .post(
                                "/greenright/json/ProductQuestion/add",
                                {
                                  "productNo" : productNo,
                                  "memberNo" : memberNo,
                                  "secretFlag" : pri,
                                  "title" : titl,
                                  "contents" : contents
                                },
                                function(a) {
                                  $
                                  $
                                      .get(
                                          "/greenright/json/ProductQuestion/getQuestion",
                                          {
                                            "no" : $("#productNo").val()
                                          },
                                          function(a) {
                                            let qa = "";
                                            qa += "<table id='questions'>"
                                            for (i = 0; i < a.result.length; i++) {

                                              if (a.result[i].secretFlag == 0) {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong>YES <span class ='answertitle'><strong class='marginmk'>제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong>NO <span class='answertitle'><strong  class='marginmk'>제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong class='marginmk'>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          }
                                                        } else {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>YES<span class='secretbook'> <img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                              + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>NO <span class='secretbook'><img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                            + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><span class='answercontents'><td class='conts'><strong>내용 : </strong>"
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          }

                                                        }
                                            }
                                            qa += "</table>"
                                            $(".ProductQuestionList").html(qa);

                                            $('#questions tr').hide();
                                            $('#questions').find('.title')
                                                .parent().show();
                                            $('#questions .title')
                                                .parent()
                                                .click(
                                                    function() {
                                                      var tr = $('#questions tr');
                                                      var rindex = $(this)
                                                          .parent().children()
                                                          .index(this);
                                                      if ($(tr[rindex + 1])
                                                          .css("display") == "none") {
                                                        if ($(tr[rindex])
                                                            .children()
                                                            .hasClass(
                                                                "secretwrite")) {
                                                          swal("비밀글은 작성자와 운영자만 볼수있습니다.");
                                                        } else {
                                                          $(tr[rindex + 1])
                                                              .show();
                                                        }
                                                      } else {
                                                        $(tr[rindex + 1])
                                                            .hide();
                                                      }
                                                    });

                                          })
                                })
                        document.getElementById('myModal').style.display = "none";
                        $(".contentholder").val("");
                        $(".titleholder").val("");
                      }
                    })

            $(document).on("change", ".priv", function() {
              if ($(this).is(":checked")) {
                $(this).attr("value", 1)
              } else {
                $(this).attr("value", 0);
              }
            });

            $
                .get(
                    "/greenright/json/ProductQuestion/getQuestion",
                    {
                      "no" : $("#productNo").val()
                    },
                    function(a) {
                      let qa = "";
                      qa += "<table id='questions'>"
                      for (i = 0; i < a.result.length; i++) {

                        if (a.result[i].secretFlag == 0) {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong>YES <span class ='answertitle'><strong class='marginmk'>제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class= 'answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title'><strong class='marginmk'>답변상태:</strong>NO <span class='answertitle'> <strong class='marginmk'>제목:</strong>"
                                                                + a.result[i].title
                                                                + "</span><span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong class='marginmk'>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          }
                                                        } else {
                                                          if (a.result[i].productAnswer.answerContents != null) {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>YES <span class='secretbook'><img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                            + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                            qa += "<tr><td class='conts'><span class='answercontents'><strong>내용 :</strong> "
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<button class='answersend btn btn-primary'>문의답변작성</button></td></tr>"
                                                          } else {
                                                            qa += "<tr><td class='title secretwrite'><strong class='marginmk'>답변상태:</strong>NO <span class='secretbook'><img src='/images/lock.PNG' style='width:32px; height:32px; object-fit:cover;'></span>"
                                                            + "<span class='answerwriter'><strong class='marginmk'> 작성자:</strong>"
                                                                + a.result[i].member.id
                                                                + "</span><span class='answerdate'><strong class='marginmk'> 작성일:</strong>"
                                                                + a.result[i].createdDate
                                                                + "</span></td></tr>"
                                                           
                                                            qa += "<tr><span class='answercontents'><td class='conts'><strong>내용 : </strong>"
                                                                + a.result[i].contents
                                                                + "</span><input class='questionNo' value="+a.result[i].no+" hidden>"
                                                                + "<br><span class='answerconts'><strong class='marginmk'>답변내용 :</strong> "
                                                                + a.result[i].productAnswer.answerContents
                                                                + "</span></td></tr>"
                                                          }

                                                        }
                      }
                      qa += "</table>"
                      $(".ProductQuestionList").append(qa);

                      $('#questions tr').hide();
                      $('.answersend').hide();
                      $('#questions').find('.title').parent().show();
                      $('#questions .title').parent().click(
                          function() {
                            var tr = $('#questions tr');
                            var rindex = $(this).parent().children()
                                .index(this);
                            if ($(tr[rindex + 1]).css("display") == "none") {
                              if ($(tr[rindex]).children().hasClass(
                                  "secretwrite")) {
                                swal("비밀글은 작성자와 운영자만 볼수있습니다.");
                              } else {
                                $(tr[rindex + 1]).show();
                                $(tr[rindex + 1]).find(".answersend").show();
                              }
                            } else {
                              $(tr[rindex + 1]).hide();
                              $(this).find(".answersend").hide();
                            }
                          });

                    })

          })
</script>

<script>
  function reviewCheck(memberNo, productNo) {
    $.post("review/check", {
      "productNo" : productNo,
      "memberNo" : memberNo
    }, function(data) {
    })
  }
</script>
<script>
  
</script>
<script>
  $(document).on("mouseenter", ".changesaver", function() {
    var a = $(this).attr("id");
    $("#clickchange").attr("src", a);

  })
</script>
<script>
  function fnMove(seq) {
    var offset = $("#div" + seq).offset();

    $('html, body').animate({
      scrollTop : offset.top - 200
    }, 400);
  }
  $(window).scroll(function() {
    let offSettop1 = $("#div1").offset().top - 210;
    let offSettop2 = $("#div2").offset().top - 210;
    let offSettop3 = $("#div3").offset().top - 210;
    let offSettop4 = $("#div4").offset().top - 210;
    let offSettop5 = $("#div5").offset().top - 210;
    if (window.pageYOffset >= $('.recommendproduct').offset().top) {
      $('.floatMenu').addClass("fix");
      if (window.pageYOffset <= offSettop2) {
        $("#de1").addClass("c23");
        $("#de2").removeClass("c23");
        $("#de3").removeClass("c23");
        $("#de4").removeClass("c23");
      } else if (window.pageYOffset <= offSettop3) {
        $("#de1").removeClass("c23");
        $("#de2").addClass("c23");
        $("#de3").removeClass("c23");
        $("#de4").removeClass("c23");
      } else if (window.pageYOffset <= offSettop4) {
        $("#de1").removeClass("c23");
        $("#de2").removeClass("c23");
        $("#de3").addClass("c23");
        $("#de4").removeClass("c23");
      } else if (window.pageYOffset >= offSettop4) {
        $("#de1").removeClass("c23");
        $("#de2").removeClass("c23");
        $("#de3").removeClass("c23");
        $("#de4").addClass("c23");
      } else if (window.pageYOffset >= offSettop5) {
        $("#de1").removeClass("c23");
        $("#de2").removeClass("c23");
        $("#de3").removeClass("c23");
        $("#de4").removeClass("c23");
      }
    } else {
      $('.floatMenu').removeClass("fix");
    }
  });
  
  $(document).on("click",'.quantity-right-plus',function(e){
    
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    var quantity = parseInt($('#quantity').val());
    
    // If is not undefined
        
        $('#quantity').val(quantity + 1);

      
        // Increment
    
});

 $(document).on("click",'.quantity-left-minus',function(e){
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    var quantity = parseInt($('#quantity').val());
    
    // If is not undefined
  
        // Increment
        if(quantity>0){
        $('#quantity').val(quantity - 1);
        }
});
  
  
</script>


