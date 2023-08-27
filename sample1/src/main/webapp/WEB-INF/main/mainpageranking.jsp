<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://kit.fontawesome.com/15a79bdff8.js" crossorigin="anonymous"></script>
<title>CrayoN 헤더 인클루드 수정페이지</title>
<style>
 .slider-wrap {
            position: absolute;
            top: 355px;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            height: 450px;
            overflow: hidden;
        }

        .slider {
            display: flex;
            width: 100%;
            height: 100%;
        }

        .slide {
            flex-shrink: 0; width: 100%;
            height: 100%; background-position: center;
            background-size: cover;
        }

            .slide h1 {
                text-align: center; margin-top: 255px;
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

		 /*상품 품목별 전시영역 시작*/ 

	 	.rankwrap {width:1200px; margin:170px auto;}
	 	.goodsdisplay { /*상품 품목별 4개씩 분류 전시 영역*/
            width: 1200px; margin-bottom:30px; 
        }

        .ranktitle {
            width: 1200px; height: 24px;
            margin: 20px 0 24px 0; font-weight: bold;
        }

            .goodsinfo p {                
                font-size: 14px; color: #333;
            }         

        .goodsblock {
            width:1200px;
            height: 401px;
            margin-bottom:50px;
            display: flex;
            justify-content: space-between;
        }

            .goodsblock article {
                width: 285px;
                height: 486px;
                background: #fff;
                border-radius: 10px;
            }

                .goodsblock article picture {
                    width: 285px;
                    height: 230px;
                    position: relative;					
                }
				.goodsblock article a:hover picture{
					width:280px; height:240px; position:relative;
				}
                    .goodsblock article picture img {
                        border-radius: 10px;
                        margin-bottom: 7px;
						background: #b0c9dc;
                    }
					.goodsblock article a:hover picture img {
						transform: scale(1.05);
						transition: transform 0.3s ease-in-out;
					}
					.goodsblock article a {
						position: relative;
						display: inline-block;
					}
                    .goodsblock article a>span {
                        position: absolute;
                        top: 10px; left: 10px; text-align: center;
                        font-size: 15px; font-weight: bold;
						width:25px; height:25px; color:#fff;
						border-radius:5px; background: #333;
						line-height: 25px; z-index: 1;
                    }
                /*상품이미지 내부 거래수 스팬태그*/

                .goodsmanual p {
                    font-size: 13px;
                    margin: 3px;
                }

                    .goodsmanual p:nth-child(2) {
                        font-size: 11px;
                        color: #ccc;
                    }
                /*상품설명 영,한 p태그 두개 영역*/

                .goodsprice h4 {
                    margin-top: 5px;
                }

                .goodsprice p {
                    font-size: 11px;
                    color: #ccc;
                }

				.dropdownbtn {
					height:100px; border-bottom:1px solid #ccc; text-align: center;
				}

				.dropdownbtn button{border:1px solid #ccc; font-size:16px; background:#fff;
					width:100px; height:50px; border-radius: 15px;
				}
				 .headerKindList li a::after {
            display: none;
            content: '';
            width: 100%;
            height: 2px;
            background-color: #000;
            margin-top: 3px;
        }

        .headerKindList li a.active {
            font-weight: bold;
        }

            .headerKindList li a.active::after {
                display: block;
            }
				
            /*상품 품목별 전시영역 종료*/

</style>
</head>
<%@ include file="../header/mainheader.jsp"%>
<body>
<div id="headerApp">
  <div class="slider-wrap">
            <button class="slide-button slide-prev">&lt;</button>
            <button class="slide-button slide-next">&gt;</button>
            <div class="slider">
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258617476-52258cff-0aeb-4299-b0d3-82a1bb2c8f1f.jpg');">
                    <h1 class="innertext">
                        Limited Edition 경매로 입찰
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258590474-952bb211-2163-4e47-b8d7-40d451dacb87.jpg');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258589692-fb26706c-1058-430d-85cd-de30918bd7ab.jpg');">
                    <h1 class="innertext">
                        완벽한 당신을 위한 최고의 선택!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258617951-80105c21-50aa-4e33-b488-2242a4055e61.jpg'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258590474-952bb211-2163-4e47-b8d7-40d451dacb87.jpg');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258589692-fb26706c-1058-430d-85cd-de30918bd7ab.jpg');">
                    <h1 class="innertext">
                        완벽한 당신을 위한 최고의 선택!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258617951-80105c21-50aa-4e33-b488-2242a4055e61.jpg'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258590474-952bb211-2163-4e47-b8d7-40d451dacb87.jpg');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258589692-fb26706c-1058-430d-85cd-de30918bd7ab.jpg');">
                    <h1 class="innertext">
                        완벽한 당신을 위한 최고의 선택!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258617951-80105c21-50aa-4e33-b488-2242a4055e61.jpg'); ">
                    <h1 class="innertext">
                        Hot Summer Sale Event!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258590474-952bb211-2163-4e47-b8d7-40d451dacb87.jpg');">
                    <h1 class="innertext">
                        Luxury Item, Rare Goods!
                    </h1>
                </div>
                <div class="slide" style="background-image: url('https://user-images.githubusercontent.com/137017779/258589692-fb26706c-1058-430d-85cd-de30918bd7ab.jpg');">
                    <h1 class="innertext">
                        완벽한 당신을 위한 최고의 선택!
                    </h1>
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
                <input type="radio" id="slide-dot-12" name="slide-control">
                <label for="slide-dot-12"></label>
            </div>
        </div>	
	<div class="rankwrap">
	
	</div>
</div>
</body>
<%@ include file="../maincate/maincate_m.jsp"%>
<%@ include file="../maincate/maincate_w.jsp"%>
<%@ include file="../maincate/maincate_s.jsp"%>
<%@ include file="../maincate/maincate_a.jsp"%>
</html>
<script>
var headerApp = new Vue({
	el : '#headerApp',
	data : {
		loginOut : "${sessionId}"
	},// data
	methods : {
		fnCheck : function(){
			var self = this;
			var nparmap = {}
			  $.ajax({
	                url:"list.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {  
						
	                }
	            });  
		},
	}, // methods
	created : function() {
		var self = this;
		
	}// created
});


</script>