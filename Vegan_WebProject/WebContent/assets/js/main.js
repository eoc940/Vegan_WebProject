/**
* Template Name: Delicious - v2.2.1
* Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/



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



// ###########################################################################################
// 돌려돌려 돌림판 & bast 9
// ############################################################################################

var arr = [ [ 'food_img/1.JPG', '비건빵' ], [ 'food_img/2.JPG', '브루스게타' ],
[ 'food_img/3.JPG', '부추전' ], [ 'food_img/4.JPG', '비건버거' ],
[ 'food_img/5.JPG', '콩고기 커틀렛' ], [ 'food_img/6.JPG', '가지볶음' ],
[ 'food_img/7.JPG', '파인애플 볶음밥' ], [ 'food_img/8.JPG', '야채피자' ],
[ 'food_img/9.JPG', '샐러드' ], [ 'food_img/10.JPG', '야채 쌀국수' ],
[ 'food_img/11.JPG', '단호박 수프' ], [ 'food_img/12.JPG', '두부 김치' ],
[ 'food_img/13.jpg', '건두부 볶음' ], [ 'food_img/14.png', '잔치국수' ],
[ 'food_img/15.jpg', '야채김밥' ], [ 'food_img/16.jpg', '도토리묵' ],
[ 'food_img/17.png', '리조또' ], [ 'food_img/18.png', '비빔밥' ],
[ 'food_img/19.png', '빵' ], [ 'food_img/20.png', '샌드위치' ],
[ 'food_img/21.jpg', '샐러드' ], [ 'food_img/22.png', '스튜' ],
[ 'food_img/23.jpg', '야채죽' ], [ 'food_img/24.png', '커리' ],
[ 'food_img/25.png', '파스타' ], [ 'food_img/26.png', '구절판' ] ]

function showMenu() {
var randomNum = Math.floor(Math.random() * arr.length);
var img_url = arr[randomNum][0];
var name = arr[randomNum][1];
document.getElementById("menu_img").innerHTML = "<img src=" + img_url + " width =400px height=300px>  "
  + name;

}

let xhr;

function showBestNine() {
xhr = new XMLHttpRequest();
xhr.onreadystatechange = callback;
xhr.open("post", "bestNine.do", true);
xhr.setRequestHeader("Content-Type",
  "application/x-www-form-urlencoded;charset=utf-8");
xhr.send();
}

function callback() {
if (xhr.readyState == 4) {
if (xhr.status == 200) {
  let list = JSON.parse(xhr.responseText);
  let resultView = document.getElementById("bestNine");
  let resultList = "" ;
    
  if (list != null )
    for (let i = 0; i < 9; i++) {
      // $("#bestNine").append("<div class='swiper-slide'> <img src=./store_img/"+list[i].imageUrl+" width=819 height =819/> <a href='javascript:void(0)' class='btn'>"+list[i].name+"</a> </div> ");
      // resultView.innerHTML+="<div class='swiper-slide'> <img src=./store_img/"+list[i].imageUrl+" width=819 height =819/> <a href='javascript:void(0)' class='btn'>"+list[i].name+"</a> </div> ";
      resultList += "<div class='swiper-slide'> <img src=./store_img/"+list[i].imageUrl+" width=819 height =819/> <a href='./Store/storeDetail.do?storeId="
          + list[i].storeId
          + "' class='btn'> Best "
          + (i+1) +"  "+list[i].name + "</a> </div>";

    }
  
  
  $("#bestNine").html(resultList);
 
  
  new Swiper('.promotion .swiper-container', {
    // direction: 'horizontal', // 수평 슬라이드
    autoplay : { // 자동 재생 여부
      delay : 5000
    // 5초마다 슬라이드 바뀜
    },
    loop : true, // 반복 재생 여부
    slidesPerView : 3, // 한 번에 보여줄 슬라이드 개수
    spaceBetween : 10, // 슬라이드 사이 여백
    centeredSlides : true, // 1번 슬라이드가 가운데 보이기
    pagination : { // 페이지 번호 사용 여부
      el : '.promotion .swiper-pagination', // 페이지 번호 요소 선택자
      clickable : true
    // 사용자의 페이지 번호 요소 제어 가능 여부
    },
    navigation : { // 슬라이드 이전/다음 버튼 사용 여부
      prevEl : '.promotion .swiper-prev', // 이전 버튼 선택자
      nextEl : '.promotion .swiper-next' // 다음 버튼 선택자
    }
  })
}
}
}

$(document).ready(function() {
showMenu();
showBestNine();
});

var mySwiper = new Swiper('.swiper-container', {

// 여기에 옵션을 넣어야 합니다.

});