<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <meta name="description" content="Draggable Dual-View Slideshow: A Slideshow with two views and content area" />
    <meta name="keywords" content="draggable, slideshow, fullscreen, carousel, views, zoomed, 3d transform, perspective, dragdealer" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:900,400|Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/exhibition/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/exhibition/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="/exhibition/css/dragdealer.css" />
    <link rel="stylesheet" type="text/css" href="/exhibition/css/component.css" />
      <script src="/exhibition/js/modernizr.custom.js"></script>
    <div class="container">
       <header id="header" class="codrops-header">
        <button class="slider-switch">Switch view</button>
      </header> 
      
      <div id="overlay" class="overlay">
        <div class="info">
          <h2>Demo interactions</h2>
          <span class="info-drag">Drag Sliders</span>
          <span class="info-keys">Use Arrows</span>
          <span class="info-switch">Switch view</span>
          <button>Got it!</button>  
        </div>
      </div>
      
      
      <div id="slideshow" class="dragslider">
        <section class="img-dragger img-dragger-large dragdealer">
          <div class="handle">
            <c:forEach items="${productList}" var="product" varStatus="status">
              <div class="slide" data-content="content-${status.index}">
              <div class="img-wrap"><img src="/upload/product/${product.photos[0].photoPath}" alt="img${status.index}"/></div>
              <h2>${product.productName} <span>${product.seller.member.name}</span></h2>
              <button class="content-switch">Read more</button>
            </div>
            </c:forEach>
          </div>
        </section>
        
        
        <section class="pages">
          <c:forEach items="${productList}" var="PRO" varStatus="stat">
          <div class="content" data-content="content-${stat.index}">
            <h2>${PRO.productName }<span>${PRO.seller.member.name }</span></h2>
            <P>${PRO.description}</P>
          <c:forEach items="${PRO.photos}" var="file" >
            <img alt="" src="/upload/product/${file.photoPath}" style="width:100px;height:100px;object-fit:cover;margin-left:3px;margin-right:3px;">
          </c:forEach>
          </div>
          </c:forEach>
        </section>
      </div>
    </div>
    
    
    <script src="/exhibition/js/dragdealer.js"></script>
    <script src="/exhibition/js/classie.js"></script>
    <script src="/exhibition/js/dragslideshow.js"></script>
    <script>
      (function() {

        var overlay = document.getElementById( 'overlay' ),
          overlayClose = overlay.querySelector( 'button' ),
          header = document.getElementById( 'header' )
          switchBtnn = header.querySelector( 'button.slider-switch' ),
          toggleBtnn = function() {
            if( slideshow.isFullscreen ) {
              classie.add( switchBtnn, 'view-maxi' );
            }
            else {
              classie.remove( switchBtnn, 'view-maxi' );
            }
          },
          toggleCtrls = function() {
            if( !slideshow.isContent ) {
              classie.add( header, 'hide' );
            }
          },
          toggleCompleteCtrls = function() {
            if( !slideshow.isContent ) {
              classie.remove( header, 'hide' );
            }
          },
          slideshow = new DragSlideshow( document.getElementById( 'slideshow' ), { 
            // toggle between fullscreen and minimized slideshow
            onToggle : toggleBtnn,
            // toggle the main image and the content view
            onToggleContent : toggleCtrls,
            // toggle the main image and the content view (triggered after the animation ends)
            onToggleContentComplete : toggleCompleteCtrls
          }),
          toggleSlideshow = function() {
            slideshow.toggle();
            toggleBtnn();
          },
          closeOverlay = function() {
            classie.add( overlay, 'hide' );
          };

        // toggle between fullscreen and small slideshow
        switchBtnn.addEventListener( 'click', toggleSlideshow );
        // close overlay
        overlayClose.addEventListener( 'click', closeOverlay );

      }());
    </script>
