<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="../js/jquery.js"></script>	
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <title>CrayoN 메인 페이지용 슬라이드</title>
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
            height: 100%; background-position-y:-3%;
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
    <div id="headerApp">        
        <div class="slider-wrap">
            <button class="slide-button slide-prev">&lt;</button>
            <button class="slide-button slide-next">&gt;</button>
            <div class="slider">
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263329143-5cccd3a7-ab4b-4f07-8373-0ff34043cebd.gif');">
                    <h1 class="innertext">
                       Get Your CrayoN
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263001997-d91cef9e-eebf-43eb-841a-72bb0d2c6ad3.jpg');">
                    <h1 class="innertext">
                        Rare Item! Limited Edition!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263512884-3eb24e05-7174-4f3f-af55-ab4b0d6c73c4.jpg');">
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263312984-49655cf9-4045-4408-9d2a-11c7d947bc0a.gif'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263503194-2f7954e6-07e0-4280-8841-0409c9dd1bc6.jpg');">
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263334381-0cc3f469-0aed-4c6c-aa45-9b5d52cb118d.gif');">
                    <h1 class="innertext">
                        완벽한 당신을 위한 최고의 선택!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263003100-bec63b61-deca-4e29-b578-24948b3006d7.jpg'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263535649-94d40988-a8d6-48e5-bb4f-71b17220727e.gif');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263503200-4cc2fda5-3399-45bc-b272-91abf534dd34.jpg');">
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263534154-86293341-9ad3-453f-8020-4617c07e018c.gif'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/263503210-0daae4e1-2773-4335-bfcf-f2eacdfe34c1.jpg');">
                </div>               
            </div>
            <div class="radio-button">
                <input type="radio" id="slide-dot-1" name="slide-control" checked>
                <label for="slide-dot-1"></label>
                <input type="radio" id="slide-dot-2" name="slide-control">
                <label for="slide-dot-2"></label>
                <input type="radio" id="slide-dot-3" name="slide-control">
                <label for="slide-dot-3"></label>
                <input type="radio" id="slide-dot-4" name="slide-control">
                <label for="slide-dot-4"></label>
                <input type="radio" id="slide-dot-5" name="slide-control">
                <label for="slide-dot-5"></label>
                <input type="radio" id="slide-dot-6" name="slide-control">
                <label for="slide-dot-6"></label>
                <input type="radio" id="slide-dot-7" name="slide-control">
                <label for="slide-dot-7"></label>
                <input type="radio" id="slide-dot-8" name="slide-control">
                <label for="slide-dot-8"></label>
                <input type="radio" id="slide-dot-9" name="slide-control">
                <label for="slide-dot-9"></label>
                <input type="radio" id="slide-dot-10" name="slide-control">
                <label for="slide-dot-10"></label>
                <input type="radio" id="slide-dot-11" name="slide-control">
                <label for="slide-dot-11"></label>
            </div>
        </div>    
    </div>
    <div style="margin-top:670px;">
    	<%@ include file="../maincate/maincate_m.jsp"%>    	
		<%@ include file="../maincate/maincate_w.jsp"%>
		<%@ include file="../maincate/maincate_s.jsp"%>
		<%@ include file="../maincate/maincate_a.jsp"%>
    </div>   
</body>

</html>

<script>
    var headerApp = new Vue({
        el: '#headerApp',
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