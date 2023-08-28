<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="../js/jquery.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <title>CrayoN 악세사리 페이지용 슬라이드</title>
    <style>
        
        /* 슬라이드 이미지 CSS 추가 */
        .slider-wrap {
            position: absolute;
            top: 355px;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            height: 570px;
            overflow: hidden;
        }

        .slider {
            display: flex;
            width: 100%;
            height: 100%;
        }

        .slide {
            flex-shrink: 0; width: 100%;
            height: 100%; background-position-y:-15%;
            background-size: cover;
        }

            .slide h1 {
                text-align: center; margin-top: 280px;
                color: #fff; font-size: 50px;
            }
                .innertext {animation: innertext 3.7s ease-in-out infinite;}

                @keyframes innertext {
                    from {opacity: 0; font-size:40px;} to {opacity: 1; font-size:50px;}
                }

        .slide-button {
            position: absolute; top: 55%;
            transform: translateY(-50%);
            font-size: 80px; color: #fff;
            z-index: 1; background: transparent;
            border: none; outline: none;
            opacity: 0.5;
        }

        .slide-prev {
            left: 15px;
        }

        .slide-next {
            right: 15px;
        }

        /* 라디오 버튼 */
        .radio-button {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 18px;
            opacity: 0.5;
        }

            .radio-button input[type="radio"] {
                display: none;
            }

            .radio-button label {
                cursor: pointer;
                display: block;
                width: 18px;
                height: 18px;
                background: #fff;
                border-radius: 50%;
            }

                .radio-button label:hover {
                    background: #333;
                }

            .radio-button input[type="radio"]:checked + label {
                background: #000;
                width: 20px;
                height: 20px;
            }
               
    </style>
</head>
<%@ include file="../header/mainheader.jsp"%>
<body>
    <div id="app">        
        <div class="slider-wrap">
            <button class="slide-button slide-prev">&lt;</button>
            <button class="slide-button slide-next">&gt;</button>
            <div class="slider">
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263503133-49e9527a-3799-4586-bf5e-cbe218206e77.jpg');">
                    <h1 class="innertext">
                        Limited Edition 경매로 입찰
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263503220-6b5bed44-6f1b-4dbf-aa22-4d59ef5187c0.jpg');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
            </div>
            <div class="radio-button">
                <input type="radio" id="slide-dot-1" name="slide-control" checked>
                <label for="slide-dot-1"></label>
                <input type="radio" id="slide-dot-2" name="slide-control">
                <label for="slide-dot-2"></label>
            </div>
        </div>
    </div>
</body>
<%@ include file="../maincate/maincate_a.jsp"%>
<%@ include file="../maincate/maincate_a_p.jsp"%>
</html>

<script>
    var app = new Vue({
        el: '#app',
        data: {
            loginOut: "${sessionId}"
        },// data
        methods: {
            fnCheck: function () {
                var self = this;
                var nparmap = {}
                $.ajax({
                    url: "list.dox",
                    dataType: "json",
                    type: "POST",
                    data: nparmap,
                    success: function (data) {
                    }
                });
            },
        }, // methods
        created: function () {
            var self = this;
            hApp.fnActive("5");
        }// created
    });

    // 이미지 슬라이더 스크립트
    let currentSlide = 0;
    let slideInterval = setInterval(nextSlide, 3800);

    function moveToSlide(index) {
        if (index < 0) {
            index = $('.slider .slide').length - 1;
        } else if (index >= $('.slider .slide').length) {
            index = 0;
        }
        currentSlide = index;
        $('.slider').css('margin-left', (-100 * index) + '%');
      //  $('.slider').css('margin-left', '${-100 * index}%');
        console.log($('input[name="slide-control"][id="slide-dot-' + (index + 1) + '"]'));
        $('input[name="slide-control"][id="slide-dot-' + (index + 1) + '"]').prop('checked', true);
      // $('input[name="slide-control"][id="slide-dot-${index + 1}"]').prop('checked', true);
    }

    function nextSlide() {
        moveToSlide(currentSlide + 1);
    }

    function pauseSlideInterval() {
        clearInterval(slideInterval);
    }

    function startSlideInterval() {
        pauseSlideInterval();
        slideInterval = setInterval(nextSlide, 3800);
    }
    $('.slide-prev').on('click', function () {
        moveToSlide(currentSlide - 1);
        startSlideInterval();
    });

    $('.slide-next').on('click', function () {
        moveToSlide(currentSlide + 1);
        startSlideInterval();
    });

    $('input[name="slide-control"]').on('change', function () {
        moveToSlide($(this).attr('id').split('-')[2] - 1);
        startSlideInterval();
    });
   
    // 이미지 슬라이더 스크립트 종료
</script>