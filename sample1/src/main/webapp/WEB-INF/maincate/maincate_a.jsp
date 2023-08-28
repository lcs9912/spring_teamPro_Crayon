<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="../js/jquery.js"></script>	
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <title>CrayoN 메인 페이지 남성품목 인클루드 파일</title>
    <style>
    	* {margin: 0; padding: 0; box-sizing: border-box;}
	    li {list-style: none;}
	    a {text-decoration: none; color: inherit;}
	    img {max-width: 100%; vertical-align: top;}
    	
        /*상품 품목별 전시영역 시작*/

	 	.acsewrap {width:1200px; margin:0 auto; clear:both; margin-top:600px;}
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
            width: 100%;
            height: 401px;
            margin-bottom:50px;
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 가로로 4개씩 나열 */
            gap: 5px; /* 각 상품 사이의 간격 */
        }

      .goodsblock {
          display: flex;
          flex-wrap: wrap;
          gap: 5px;
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
            /*상품 품목별 전시영역 종료*/    
    .goodsitem{
    cursor:pointer;
    }
    .dropdownbtn button{
    cursor:pointer;
    }
               
    </style>
</head>

<body>
	<div id=headerAppA>
  	<div class="acsewrap">
        <div class="goodsdisplay">
            <!--상품전시 영역 시작-->
            <div class="ranktitle">
                <p>악세사리 인기 품목</p>		
            </div>
            <div class="goodsblock" >
                <!--상품전시  4개 한줄 영역 아티클 태그 시작-->
                <div v-for="(item , index) in visibleItems" :key="index"  class="goodsitem">
                <article>
                    <a @click="fnProInfo(item.productModel)"> 
                        <!-- 링크로 상품 상세 구매판매 페이지로 전환-->
                        <picture>
                            <!-- 업로드 된 이미지 파일 추가되는 태그-->						
                           <img :src="item.pImgPath">
                        </picture>
                       <div><h5>{{item.brandName}}</h5></div><!--브랜드 명-->
	                                <div class="goodsmanual">
	                                    <p>{{item.productName}}</p><!--상품명 영문-->
	                                    <p>{{item.productKname}}</p><!--상품명 한문-->
	                                </div>
	                                <div class="goodsprice">
	                                    <h4>{{item.buyminprice}}</h4>
	                                    <p>즉시구매가</p>
	                                </div>
	                                <div>
	                                    <span>관심 갯수 : {{item.productInterest}}</span>  <!-- 관심 갯수 -->
	                                    
	                               </div>
	                           </a>
                </article>
                
                
                 </div>
        <div class="dropdownbtn" v-if="showMoreButton">
        <button @click="showMoreItems">더보기</button>
    		</div>
 
        </div><!--상품전시 영역 종료-->
      
        </div>   
    </div>
     </div>
</body>

</html>

<script>
    var headerAppA = new Vue({
        el: '#headerAppA',
        data: {
            loginOut: "${sessionId}",
            list : [],
            maingate : "4",
            visibleItemCount: 4, // 한 번에 보여질 아이템 개수
            visibleItemIndex: 0, // 현재 보여지는 아이템의 인덱스
        },// data
        computed: {
           
            	 // 현재 보여지는 아이템들을 계산된 속성으로 관리
                visibleItems() {
                    return this.list.slice(0, this.visibleItemIndex + this.visibleItemCount);
                },
                // 더보기 버튼을 표시할지 여부를 결정하는 계산된 속성
                showMoreButton() {
                    return this.visibleItemIndex + this.visibleItemCount < this.list.length;
                }
        },
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
            fnGetList : function(){
                var self = this;
                var nparmap = {cate1Num : self.maingate}
                  $.ajax({
                        url:"/shopmanList.dox",
                        dataType:"json",
                        type : "POST",
                        data : nparmap,
                        success : function(data) {
                        	self.list = data.list;
                        	console.log(self.list);
                        
                        	
    						
                        }
                    });
            },
            fnProInfo : function(productModel){
            	var self = this;        
            	window.location.href = "/product.do?modelNum=" + encodeURIComponent(productModel);
            },
            // 더보기 버튼을 눌렀을 때 호출되는 메서드
            showMoreItems() {
                this.visibleItemIndex += this.visibleItemCount;
            },
        }, // methods
        created: function () {
            var self = this;
		self.fnGetList();
        }// created
    });

 
</script>