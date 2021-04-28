<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head> 
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> 채식주의(菜食主義, 영어: vegetarianism)</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" /> 

  <!-- Favicons -->
  <link href="./assets/img/favicon.png" rel="icon">
  <link href="./assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">


  <!-- Vendor CSS Files -->
  <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="./assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="./assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="./assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  

  <!--Google Material Icons-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  
  <!--GSAP & ScrollToPlugin-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous"></script>
  <!--Swiper-->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <!--ScrollMagic-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
  <!--Lodash-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js" integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww==" crossorigin="anonymous"></script>

  <!-- Template Main CSS File -->
  <link href="./assets/css/style.css" rel="stylesheet">
  
  <!-- youtu link js -->
  <script defer src="./assets/js/youtube.js"></script>

  <!-- Vendor JS Files -->
  <script src="./assets/vendor/jquery/jquery.min.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="./assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="./assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="./assets/vendor/venobox/venobox.min.js"></script>
  <script src="./assets/vendor/owl.carousel/owl.carousel.min.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/js/main.js"></script>
  <script src="./assets/js/sb_main.js"></script>
  
 
 
 
 
 
 <script type="text/javascript">

 !(function($) {
   "use strict";

   // Smooth scroll for the navigation menu and links with .scrollto classes
   var scrolltoOffset = $('#header').outerHeight() - 1;
   $(document).on('click', '.nav-menu a, .mobile-nav a, .scrollto', function(e) {
     if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
       var target = $(this.hash);
       if (target.length) {
         e.preventDefault();

         var scrollto = target.offset().top - scrolltoOffset;

         if ($(this).attr("href") == '#header') {
           scrollto = 0;
         }

         $('html, body').animate({
           scrollTop: scrollto
         }, 1500, 'easeInOutExpo');

         if ($(this).parents('.nav-menu, .mobile-nav').length) {
           $('.nav-menu .active, .mobile-nav .active').removeClass('active');
           $(this).closest('li').addClass('active');
         }

         if ($('body').hasClass('mobile-nav-active')) {
           $('body').removeClass('mobile-nav-active');
           $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
           $('.mobile-nav-overly').fadeOut();
         }
         return false;
       }
     }
   });

   // Activate smooth scroll on page load with hash links in the url
   $(document).ready(function() {
     if (window.location.hash) {
       var initial_nav = window.location.hash;
       if ($(initial_nav).length) {
         var scrollto = $(initial_nav).offset().top - scrolltoOffset;
         $('html, body').animate({
           scrollTop: scrollto
         }, 1500, 'easeInOutExpo');
       }
     }
   });

   // Mobile Navigation
   if ($('.nav-menu').length) {
     var $mobile_nav = $('.nav-menu').clone().prop({
       class: 'mobile-nav d-lg-none'
     });
     $('body').append($mobile_nav);
     $('body').prepend('<button type="button" class="mobile-nav-toggle d-lg-none"><i class="icofont-navigation-menu"></i></button>');
     $('body').append('<div class="mobile-nav-overly"></div>');

     $(document).on('click', '.mobile-nav-toggle', function(e) {
       $('body').toggleClass('mobile-nav-active');
       $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
       $('.mobile-nav-overly').toggle();
     });

     $(document).on('click', '.mobile-nav .drop-down > a', function(e) {
       e.preventDefault();
       $(this).next().slideToggle(300);
       $(this).parent().toggleClass('active');
     });

     $(document).click(function(e) {
       var container = $(".mobile-nav, .mobile-nav-toggle");
       if (!container.is(e.target) && container.has(e.target).length === 0) {
         if ($('body').hasClass('mobile-nav-active')) {
           $('body').removeClass('mobile-nav-active');
           $('.mobile-nav-toggle i').toggleClass('icofont-navigation-menu icofont-close');
           $('.mobile-nav-overly').fadeOut();
         }
       }
     });
   } else if ($(".mobile-nav, .mobile-nav-toggle").length) {
     $(".mobile-nav, .mobile-nav-toggle").hide();
   }

   // Navigation active state on scroll
   var nav_sections = $('section');
   var main_nav = $('.nav-menu, #mobile-nav');

   $(window).on('scroll', function() {
     var cur_pos = $(this).scrollTop() + 200;

     nav_sections.each(function() {
       var top = $(this).offset().top,
         bottom = top + $(this).outerHeight();

       if (cur_pos >= top && cur_pos <= bottom) {
         if (cur_pos <= bottom) {
           main_nav.find('li').removeClass('active');
         }
         main_nav.find('a[href="#' + $(this).attr('id') + '"]').parent('li').addClass('active');
       }
       if (cur_pos < 300) {
         $(".nav-menu ul:first li:first").addClass('active');
       }
     });
   });

   // Toggle .header-scrolled class to #header when page is scrolled
   $(window).scroll(function() {
     if ($(this).scrollTop() > 100) {
       $('#header').addClass('header-scrolled');
       $('#topbar').addClass('topbar-scrolled');
     } else {
       $('#header').removeClass('header-scrolled');
       $('#topbar').removeClass('topbar-scrolled');
     }
   });

   if ($(window).scrollTop() > 100) {
     $('#header').addClass('header-scrolled');
     $('#topbar').addClass('topbar-scrolled');
   }

   // Real view height for mobile devices
   if (window.matchMedia("(max-width: 767px)").matches) {
     $('#hero').css({
       height: $(window).height()
     });
   }

   // Intro carousel
   var heroCarousel = $("#heroCarousel");
   var heroCarouselIndicators = $("#hero-carousel-indicators");
   heroCarousel.find(".carousel-inner").children(".carousel-item").each(function(index) {
     (index === 0) ?
     heroCarouselIndicators.append("<li data-target='#heroCarousel' data-slide-to='" + index + "' class='active'></li>"):
       heroCarouselIndicators.append("<li data-target='#heroCarousel' data-slide-to='" + index + "'></li>");
   });

   heroCarousel.on('slid.bs.carousel', function(e) {
     $(this).find('h2').addClass('animate__animated animate__fadeInDown');
     $(this).find('p, .btn-menu, .btn-book').addClass('animate__animated animate__fadeInUp');
   });

   // Back to top button
   $(window).scroll(function() {
     if ($(this).scrollTop() > 100) {
       $('.back-to-top').fadeIn('slow');
     } else {
       $('.back-to-top').fadeOut('slow');
     }
   });

   $('.back-to-top').click(function() {
     $('html, body').animate({
       scrollTop: 0
     }, 1500, 'easeInOutExpo');
     return false;
   });

   // Menu list isotope and filter
   $(window).on('load', function() {
     var menuIsotope = $('.menu-container').isotope({
       itemSelector: '.menu-item',
       layoutMode: 'fitRows'
     });

     $('#menu-flters li').on('click', function() {
       $("#menu-flters li").removeClass('filter-active');
       $(this).addClass('filter-active');

       menuIsotope.isotope({
         filter: $(this).data('filter')
       });
     });
   });

   // Testimonials carousel (uses the Owl Carousel library)
   $(".events-carousel").owlCarousel({
     autoplay: true,
     dots: true,
     loop: true,
     items: 1
   });

   // Testimonials carousel (uses the Owl Carousel library)
   $(".testimonials-carousel").owlCarousel({
     autoplay: true,
     dots: true,
     loop: true,
     items: 1
   });

   // Initiate venobox lightbox
   $(document).ready(function() {
     $('.venobox').venobox();
   });

 })(jQuery);
 
 </script>
 
 
 
  <!-- -------- css ---------------------------------------- --> 
 
 <style>

/*--------------------------------------------------------------
# General
--------------------------------------------------------------*/
body {
  font-family: 'Nanum Gothic', sans-serif;
  color: #444444;
}

a {
  color: #ffb03b;
}

a:hover {
  color: #5EC75E;
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family:sans-serif;
}

/*--------------------------------------------------------------
# BADGES  스타벅스꺼
--------------------------------------------------------------*/
.badges {

  width: 150px; 
  top: 80px;
  right: 10px;
  position: absolute;
 
}
.badges .badge {
  border-radius: 10px;
  overflow: hidden;
  margin-bottom: 12px;
  box-shadow: 4px 4px 10px rgba(0,0,0,.15);
  cursor: pointer;
}

.badges .badge:nth-child(1){
}
.badges .badge:nth-child(2){
}


/*RESERVE STORE*/
.reserve-store {
  background-image: url("../img/reserve_store_bg.jpg");
  background-repeat: no-repeat;
  background-position: center;
  background-attachment: fixed;
  background-size: cover;
}
.reserve-store .inner {
  height: 150px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.reserve-store .medal {
  width: 200px;
  height: 200px;
  perspective: 600px;
}
.reserve-store .medal .front,
.reserve-store .medal .back {
  width: inherit;
  height: inherit;
  position: absolute;
  transition: 1.5s;
  backface-visibility: hidden;
}
.reserve-store .medal .front {
  transform: rotateY(0deg);
}
.reserve-store .medal:hover .front {
  transform: rotateY(180deg);
}
.reserve-store .medal .back {
  transform: rotateY(-180deg);
}
.reserve-store .medal:hover .back {
  transform: rotateY(0deg);
}
.reserve-store .medal .back .btn {
  position: absolute;
  top: 200px;
  left: 0;
  right: 0;
  margin: auto;
}



/*--------------------------------------------------------------
# Back to top button
--------------------------------------------------------------*/
.back-to-top {
  position: fixed;
  display: none;
  right: 15px;
  bottom: 15px;
  z-index: 99999;
}

.back-to-top i {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 24px;
  width: 40px;
  height: 40px;
  border-radius: 50px;
  background: #ffb03b;
  color: #fff;
  transition: all 0.4s;
}

.back-to-top i:hover {
  background: #ffa012;
  color: #fff;
}

/*--------------------------------------------------------------
# Top Bar
--------------------------------------------------------------*/


/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
  top: 50px;
  height: 70px;
  z-index: 997;
  transition: all 0.5s;
  padding: 10px 0;
  background: rgba(26, 24, 22, 0.85);
}

#header.header-transparent {
  background: transparent;
}

#header.header-scrolled {
  top: 0;
  background: rgba(26, 24, 22, 0.85);
}

#header .logo h1 {
  font-size: 28px;
  margin: 0;
  line-height: 1;
  font-weight: 400;
  letter-spacing: 3px;
}

#header .logo h1 a, #header .logo h1 a:hover {
  color: #fff;
  text-decoration: none;
}

#header .logo img {
  padding: 0;
  margin: 0;
  max-height: 40px;
}

@media (max-width: 992px) {
  #header {
    top: 0;
    background: rgba(26, 24, 22, 0.85);
  }
}



/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/
/* Desktop Navigation */
.nav-menu, .nav-menu * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.nav-menu > ul > li {
  position: relative;
  white-space: nowrap;
  float: left;
}

.nav-menu a {
  display: block;
  position: relative;
  color: white;
  padding: 9px 14px;
  transition: 0.3s;
  font-size: 15px;
  font-weight: 500;
  font-family: "Poppins", sans-serif;
}

.nav-menu a:hover, .nav-menu .active > a, .nav-menu li:hover > a {
  color: #5EC75E;
  text-decoration: none;
}

.nav-menu .book-a-table a {
  background: #5EC75E;
  color: #fff;
  border-radius: 50px;
  margin: 0 0 0 20px;
  padding: 10px 25px;
  text-transform: uppercase;
  font-size: 13px;
  font-weight: 500;
  letter-spacing: 1px;
  transition: 0.3s;
}

.nav-menu .book-a-table a:hover {
  background: #ffa012;
  color: #fff;
}

.nav-menu .drop-down ul {
  display: block;
  position: absolute;
  left: 0;
  top: calc(100% + 30px);
  z-index: 99;
  opacity: 0;
  visibility: hidden;
  padding: 10px 0;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  transition: ease all 0.3s;
}

.nav-menu .drop-down:hover > ul {
  opacity: 1;
  top: 100%;
  visibility: visible;
}

.nav-menu .drop-down li {
  min-width: 180px;
  position: relative;
}

.nav-menu .drop-down ul a {
  padding: 10px 20px;
  font-size: 14px;
  font-weight: 500;
  text-transform: none;
  color: #433f39;
}

.nav-menu .drop-down ul a:hover, .nav-menu .drop-down ul .active > a, .nav-menu .drop-down ul li:hover > a {
  color: #ffb03b;
}

.nav-menu .drop-down > a:after {
  content: "\ea99";
  font-family: IcoFont;
  padding-left: 5px;
}

.nav-menu .drop-down .drop-down ul {
  top: 0;
  left: calc(100% - 30px);
}

.nav-menu .drop-down .drop-down:hover > ul {
  opacity: 1;
  top: 0;
  left: 100%;
}

.nav-menu .drop-down .drop-down > a {
  padding-right: 35px;
}

.nav-menu .drop-down .drop-down > a:after {
  content: "\eaa0";
  font-family: IcoFont;
  position: absolute;
  right: 15px;
}

@media (max-width: 1366px) {
  .nav-menu .drop-down .drop-down ul {
    left: -90%;
  }
  .nav-menu .drop-down .drop-down:hover > ul {
    left: -100%;
  }
  .nav-menu .drop-down .drop-down > a:after {
    content: "\ea9d";
  }
}

/* Mobile Navigation */
.mobile-nav-toggle {
  position: fixed;
  right: 15px;
  top: 15px;
  z-index: 9998;
  border: 0;
  background: none;
  font-size: 24px;
  transition: all 0.4s;
  outline: none !important;
  line-height: 1;
  cursor: pointer;
  text-align: right;
}

.mobile-nav-toggle i {
  color: #fff;
}

.mobile-nav {
  position: fixed;
  top: 55px;
  right: 15px;
  bottom: 15px;
  left: 15px;
  z-index: 9999;
  overflow-y: auto;
  background: #fff;
  transition: ease-in-out 0.2s;
  opacity: 0;
  visibility: hidden;
  border-radius: 10px;
  padding: 10px 0;
}

.mobile-nav * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.mobile-nav a {
  display: block;
  position: relative;
  color: #433f39;
  padding: 10px 20px;
  font-weight: 500;
  outline: none;
}

.mobile-nav a:hover, .mobile-nav .active > a, .mobile-nav li:hover > a {
  color: #ffb03b;
  text-decoration: none;
}

.mobile-nav .book-a-table a {
  background: #ffb03b;
  color: #fff;
  border-radius: 50px;
  margin: 0 0 0 20px;
  padding: 10px 25px;
  text-transform: uppercase;
  font-size: 13px;
  font-weight: 500;
  letter-spacing: 1px;
  transition: 0.3s;
  display: inline-block;
}

.mobile-nav .book-a-table a:hover {
  background: #ffa012;
  color: #fff;
}

.mobile-nav .drop-down > a:after {
  content: "\ea99";
  font-family: IcoFont;
  padding-left: 10px;
  position: absolute;
  right: 15px;
}

.mobile-nav .active.drop-down > a:after {
  content: "\eaa1";
}

.mobile-nav .drop-down > a {
  padding-right: 35px;
}

.mobile-nav .drop-down ul {
  display: none;
  overflow: hidden;
}

.mobile-nav .drop-down li {
  padding-left: 20px;
}

.mobile-nav-overly {
  width: 100%;
  height: 100%;
  z-index: 9997;
  top: 0;
  left: 0;
  position: fixed;
  background: rgba(39, 37, 34, 0.6);
  overflow: hidden;
  display: none;
  transition: ease-in-out 0.2s;
}

.mobile-nav-active {
  overflow: hidden;
}

.mobile-nav-active .mobile-nav {
  opacity: 1;
  visibility: visible;
}

.mobile-nav-active .mobile-nav-toggle i {
  color: #fff;
}

/*--------------------------------------------------------------
# Hero Section
--------------------------------------------------------------*/
#hero {
  width: 100%;
  height: 100vh;
  background-color: rgba(39, 37, 34, 0.8);
  overflow: hidden;
  padding: 0;
}

#hero .carousel-item {
  width: 100%;
  height: 100vh;
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

#hero .carousel-item::before {
  content: '';
  background-color: rgba(12, 11, 10, 0.5);
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
}

#hero .carousel-container {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
}

#hero .carousel-content {
  text-align: center;
}

#hero h2 {
  color: #fff;
  margin-bottom: 30px;
  font-size: 48px;
  font-weight: 700;
}

#hero h2 span {
  color: #ffb03b;
}

#hero p {
  width: 80%;
  -webkit-animation-delay: 0.4s;
  animation-delay: 0.4s;
  margin: 0 auto 30px auto;
  color: #fff;
}

#hero .carousel-inner .carousel-item {
  transition-property: opacity;
  background-position: center top;
}

#hero .carousel-inner .carousel-item,
#hero .carousel-inner .active.carousel-item-left,
#hero .carousel-inner .active.carousel-item-right {
  opacity: 0;
}

#hero .carousel-inner .active,
#hero .carousel-inner .carousel-item-next.carousel-item-left,
#hero .carousel-inner .carousel-item-prev.carousel-item-right {
  opacity: 1;
  transition: 0.5s;
}

#hero .carousel-inner .carousel-item-next,
#hero .carousel-inner .carousel-item-prev,
#hero .carousel-inner .active.carousel-item-left,
#hero .carousel-inner .active.carousel-item-right {
  left: 0;
  transform: translate3d(0, 0, 0);
}

#hero .carousel-control-prev, #hero .carousel-control-next {
  width: 10%;
  opacity: 1;
}

#hero .carousel-control-next-icon, #hero .carousel-control-prev-icon {
  background: none;
  font-size: 36px;
  line-height: 1;
  width: auto;
  height: auto;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50px;
  padding: 10px;
  transition: 0.3s;
  color: rgba(255, 255, 255, 0.5);
}

#hero .carousel-control-next-icon:hover, #hero .carousel-control-prev-icon:hover {
  background: rgba(255, 255, 255, 0.2);
  color: rgba(255, 255, 255, 0.8);
}

#hero .carousel-indicators li {
  cursor: pointer;
}

#hero .btn-menu, #hero .btn-book {
  font-weight: 600;
  font-size: 13px;
  letter-spacing: 1px;
  text-transform: uppercase;
  display: inline-block;
  padding: 12px 30px;
  border-radius: 50px;
  transition: 0.5s;
  line-height: 1;
  margin: 0 10px;
  -webkit-animation-delay: 0.8s;
  animation-delay: 0.8s;
  color: #fff;
  border: 2px solid #ffb03b;
}

#hero .btn-menu:hover, #hero .btn-book:hover {
  background: #ffb03b;
  color: #fff;
}

@media (max-width: 768px) {
  #hero h2 {
    font-size: 28px;
  }
}

@media (min-width: 1024px) {
  #hero p {
    width: 50%;
  }
  #hero .carousel-control-prev, #hero .carousel-control-next {
    width: 5%;
  }
}

/*--------------------------------------------------------------
# Sections General
--------------------------------------------------------------*/
section {
  padding: 60px 0;
}

.section-bg {
  background-color: white;
}

.section-title {
  text-align: center;
  padding-bottom: 30px;
}

.section-title h2 {
  margin: 15px 0 0 0;
  font-size: 32px;
  font-weight: 700;
  color: #5f5950;
}

.section-title h2 span {
  color: #ffb03b;
}

.section-title p {
  margin: 15px auto 0 auto;
  font-weight: 300;
}

@media (min-width: 1024px) {
  .section-title p {
    width: 50%;
  }
}


/*PROMOTION----------------------------------------------------*/
.notice .notice-line .inner__right .toggle-promotion {
  width: 62px;
  height: 62px;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
}
.notice .notice-line .inner__right .toggle-promotion .material-icons {
  font-size: 30px;
}

.notice .promotion {
  /*width: auto;*/
  height: 693px;
  background-color: #f6f5ef;
  position: relative;
  overflow: hidden;
  transition: height .4s;
}
.notice .promotion.hide {
  height: 0;
}
.notice .promotion .swiper-container {
  /* 819px 슬라이드 3개와 그 사이 여백 10px씩 = 2477px */
  width: calc(819px * 3 + 20px);
  height: 553px;
  position: absolute;
  top: 40px;
  left: 50%;
  margin-left: calc((819px * 3 + 20px) / -2);
}
.notice .promotion .swiper-slide {
  position: relative;
  opacity: .5;
  transition: opacity 1s;
}
.notice .promotion .swiper-slide-active {
  opacity: 1;
}
.notice .promotion .swiper-slide .btn {
  /*width: 130px;*/
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
}
.notice .promotion .swiper-pagination {
  bottom: 40px;
  left: 0;
  right: 0;
  z-index: 0;
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet {
  background-color: transparent;
  background-image: url("../img/promotion_slide_pager.png");
  width: 13px;
  height: 12px;
  margin-right: 6px;
  outline: none;
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet:last-child {
  margin-right: 0;
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet-active {
  background-image: url("../img/promotion_slide_pager_on.png");
}
.notice .promotion .swiper-prev,
.notice .promotion .swiper-next {
  width: 42px;
  height: 42px;
  outline: none;
  border: 2px solid #333;
  border-radius: 50%;
  position: absolute;
  /* Swiper Container 높이의 절반만큼 끌어올림 */
  /* 버튼 높이의 절반만큼 추가로 끌어올림 */
  top: 300px;
  z-index: 1;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: .4s;
}
.notice .promotion .swiper-prev {
  left: 50%;
  margin-left: -480px;
}
.notice .promotion .swiper-next {
  right: 50%;
  margin-right: -480px;
}
.notice .promotion .swiper-prev:hover,
.notice .promotion .swiper-next:hover {
  background-color: #333;
  color: #fff;
}


/*FIND STORE====================================================*/
.find-store {
  background-image: url("../img/find_store_bg.jpg");
}
.find-store .inner {
  height: 400px;
}
.find-store .texture1 {
  position: absolute;
  top: 0;
  left: 400px;
}
.find-store .texture2 {
  position: absolute;
  bottom: 0;
  right: 0;
}
.find-store .picture {
  border-radius: 50%;
  box-shadow: 2px 2px 8px 0 rgba(0,0,0,.5);
  position: absolute;
}
.find-store .picture1 {
  top: -60px;
  left: 0;
}
.find-store .picture2 {
  top: 150px;
  left: 250px;
}
.find-store .text-group {
  position: absolute;
  top: 120px;
  left: 550px;
}
.find-store .text-group .title {
  margin-bottom: 20px;
}
.find-store .text-group .description {
  margin-bottom: 20px;
}



/*YOUTUBE VIDEO----------------------------------------------------------*/
.youtube {
  position: relative;
  height: 700px;
  background-color: #333;
  overflow: hidden;
}
.youtube .youtube__area {
  width: 1920px;
  position: absolute;
  /* 16비율 */
  left: 50%;
  margin-left: calc(1920px / -2);
  /* 9비율 */
  top: 50%;
  margin-top: calc(1920px * 9 / 16 / -2);
}
.youtube .youtube__area::before {
  content: "";
  display: block;
  /* 16:9 영상 비율로 요소 크기 만들기! */
  width: 100%;
  height: 0;
  padding-top: 56.25%;
}
.youtube .youtube__cover {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0,0,0,.3);
  background-image: url("../img/video_cover_pattern.png");
}
#player {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
}
.youtube .inner {
  height: inherit;
}
.youtube .floating1 {
  position: absolute;
  top: 50px;
  left: 0;
}
.youtube .floating2 {
  position: absolute;
  top: 350px;
  left: 150px;
}


/*--------------------------------------------------------------
# Footer
--------------------------------------------------------------*/
#footer{
	background: rgba(0, 0, 0, 0.7);
	font-size:15px;
	font-family: 'Nanum Gothic', sans-serif;
	padding-bottom: 50px;
	padding-top: 50px;
	color: rgba(255, 255, 255, 0.7);
	
}

#footer .container h2{
	color: #5EC75E;
	font-size: 1.7em;


}

</style>
 
 
 
 
 
</head>

<body>


  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex align-items-center">

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#menu">Board</a></li>
          <li><a href="#specials">Restautants</a></li>
          <li><a href="#events">M.y Page</a></li>
 
          <li class="book-a-table text-center" ><a href="Member/loginForm.html">login</a></li>
        </ul>


<!-- <a href = "StoreList.do">음식점</a>
<a href = "Board/boardList.do">게시판</a> -->



      </nav><!-- .nav-menu -->
 
    </div>
    <!--BADGES-->
    <div class="badges">
  
      <div class="badge">
        <img src="./assets/img/badge/badge1.jpg" width="150" alt="Badge" />
      </div>

    
    </div> 
  </header><!-- End Header -->

<!-- <div class="menu_recommend">
<h2>Today's MENU is ....</h2>
	<div id="menu_img"></div>
	<input type="button" value="reset" onclick="showMenu()"><br><br>
</div>
<a href="storeDetail.do?storeId=25">식당보기</a>
<div id="bestNine">
<h2>BEST 10 Restaurants</h2>
>>>>>>> branch 'main' of https://github.com/eoc940/Vegan_WebProject -->


  <!-- ======= 슬라이드 부분 Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background: url(./assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>Delicious</span> Restaurant</h2>
                <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background: url(./assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Lorem Ipsum Dolor</h2>
                <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background: url(./assets/img/slide/slide-3.jpg);">
            <div class="carousel-background"><img src="./assets/img/slide/slide-3.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Sequi ea ut et est quaerat</h2>
                <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                  <a href="#book-a-table" class="btn-book animate__animated animate__fadeInUp scrollto">Book a Table</a>
                </div>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">


  <!--RESERVE STORE-->
  <section class="reserve-store">
    <div class="inner">

      <div class="medal">
        <div class="front">
          <img src="./assets/img/reserve_store_medal_front.png" height="200" alt="R">
        </div>
        <div class="back">
          <img src="./assets/img/reserve_store_medal_back.png" height="200" alt="돌려돌려 음식판">
          <a href="javascript:void(0)" class="btn">
            돌려돌려 음식판
          </a>
        </div>
      </div>

    </div>
  </section>
  
  <!--FIND THE STORE-------------->
  <section class="find-store scroll-spy">
    <div class="inner">

      <img src="./images/find_store_texture1.png" alt="" class="texture1" />
      <img src="./images/find_store_texture2.png" alt="" class="texture2" />
      <img src="./images/find_store_picture1.jpg" alt="" class="picture picture1 back-to-position to-right delay-0" />
      <img src="./images/find_store_picture2.jpg" alt="" class="picture picture2 back-to-position to-right delay-1" />
      <div class="text-group">
        <img src="./images/find_store_text1.png" alt="스타벅스를 가까이에서 경험해보세요." class="title back-to-position to-left delay-0" />
        <img src="./images/find_store_text2.png" alt="고객님과 가장 가까이 있는 매장을 찾아보세요!" class="description back-to-position to-left delay-1" />
        <div class="more back-to-position to-left delay-2">
          <a href="javascript:void(0)" class="btn">매장찾기</a>
        </div>
      </div>

    </div>
  </section>

    <!-- ======= PROMOTION Section ======= -->
    <section class="notice">
    <div class="promotion">

      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="./assets/img/promotion_slide1.jpg" alt="2021 뉴이어, 스타벅스와 함께 즐겁고 활기차게 시작하세요!" />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./assets/img/promotion_slide2.jpg" alt="기간 내 스타벅스 카드 e-Gift를 3만원 이상 선물 시, 아메리카노 e-쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./assets/img/promotion_slide3.jpg" alt="뉴이어 푸드와 제조 음료를 세트로 구매 시, 뉴이어 음료 BOGO(1+1) 쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./assets/img/promotion_slide4.jpg" alt="신년 MD 상품 포함 3만원 이상 구매 고객께 아메리카노(톨사이즈) 쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./assets/img/promotion_slide5.jpg" alt="2017 DIGITAL LUCKY DRAW 100% 당첨의 행운을 드립니다!" />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
        </div>
      </div>

            <div class="swiper-pagination"></div>

      <div class="swiper-prev">
        <span class="material-icons">arrow_back</span>
      </div>
      <div class="swiper-next">
        <span class="material-icons">arrow_forward</span>
      </div>

    </div>
      </section><!-- End PROMOTION Section -->


    <!--YOUTUBE VIDEO-->
    <section class="youtube">
      <div class="youtube__area">
        <div id="player"></div>
      </div>
      <div class="youtube__cover"></div>

    </section>

  <!-- ======= Footer ======= -->
  <center>
  <footer id="footer">
      <div class="container">
        <h2>VEGAN PROJECT</h2>
        <p>All life deserves respect, dignity, and compassion. All life.</p>
      
        <div class="copyright">
          &copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by Enocore 1 Team</a>
        </div>
      </div>
  </footer><!-- End Footer -->
  </center>


  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>




</div>


</body>

</html>