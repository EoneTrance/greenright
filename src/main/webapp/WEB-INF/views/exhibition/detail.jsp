<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Exhibitions</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel='stylesheet' href='/node_modules/bootstrap/dist/css/bootstrap.min.css'>
<style>

#a24{
 margin-bottom : 10px;
 width :70%;
 text-aling: center;
}
</style>
      
    
      <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link rel='stylesheet' href='/css/bootstrap.min.css'>
    <link rel="stylesheet" href="/css/fontawesome/css/all.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/aos.css">
    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/css/jquery.timepicker.css">
    <link rel="stylesheet" href="/node_modules/@glidejs/glide/dist/css/glide.theme.min.css">
    <link rel="stylesheet" href="/node_modules/@glidejs/glide/dist/css/glide.core.min.css">
    
    
    <div id ="a24" class="container">
    <div class="glide">
      <div class="glide__track" data-glide-el="track">
        <ul class="glide__slides">
          <li class="glide__slide"><img src="/images/product-1.jpg"style="width:320px;height: 300px;"/></li>
          <li class="glide__slide"><img src="/images/product-2.jpg"style="width:320px;height: 300px;"/></li>
          <li class="glide__slide"><img src="/images/product-3.jpg"style="width:320px;height: 300px;"/></li>
          <li class="glide__slide"><img src="/images/product-4.jpg"style="width:320px;height: 300px;"/></li>
          <li class="glide__slide"><img src="/images/product-5.jpg"style="width:320px;height: 300px;"/></li>
          <li class="glide__slide"><img src="/images/product-6.jpg"style="width:320px;height: 300px;"/></li>
        </ul>
      </div>

      <div class="glide__arrows" data-glide-el="controls">
    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
  </div>
    </div>
</div>



<script src='/js/jquery.min.js'></script>
<script src='/js/jquery-migrate-3.0.1.min.js'></script>
<script src='/js/jquery.easing.1.3.js'></script>
<script src='/js/jquery.waypoints.min.js'></script>
<script src='/js/jquery.stellar.min.js'></script>
<script src='/js/jquery.magnific-popup.min.js'></script>
<script src='/js/jquery.animateNumber.min.js'></script>
<script src='/js/bootstrap-datepicker.js'></script>
<script src="/js/popper.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/aos.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="/js/main.js"></script>

<script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
<script src="/node_modules/@glidejs/glide/dist/glide.min.js"></script>
<script>

const cofing ={
    animationTimingFunc: 'bounce',
    rewind : 'true',
  focusAt: 'center',
  type: 'slider',
  perView: 4
}
    
    
new Glide('.glide',cofing).mount()

</script>
