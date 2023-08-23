<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	*{
		margin:0;
		padding:0;
		box-sizing : border-box;
	}
	
	li{
		list-style:none;
	}
	
	
	a {	text-decoration:none;
		color: inherit;
	}
	
	.footerwrap{
		clear:both;		
		margin:0 auto;
		border-top:1px solid #999;
		width:1295px; height:543px;		
	}
	
	footer {
		box-sizing:border-box;
		padding:50px 0;
		width:1200px; height:543px;
		margin:0 auto;
	}
		
	.servicearea {
		margin-bottom:30px;
	}
	
	.customerinfo {
		width:300px; float:right; 
		font-size:13px; 
		color:#777;
		}
	.customerinfo h3{
		font-size:19px; margin-bottom:10px;
		color:#000;
	}
	
	.footerul {
		float:left; margin-right:150px;
		}
	
	.footerul li {
		margin:10px 0;
		
	}
	
	.footerul li a{
		display:block;
		color:#777;
		}	
	.servicearea:after {
	    clear: both;
	    content: '';
	    display: block;
	    }
	
	.companyinfo {
		border-top:1px solid #999;
		}
	
	.companyinfo p {
		font-size:13px;	color:#777; width:700px;
		margin-bottom:20px; 	
		}
	.footerul2 {
		margin:25px 0;
	}
		    
	.footerul2 li{
		float:left; font-size:16px; margin-right:15px;
		} 
	
	.footerul2 li:nth-child(5){
		font-weight:bold;
	}   
		
	.footerul2:after {
	    clear: both;
	    content: '';
	    display: block;
	    }
	    
	.footernotice{
		width:700px; font-size:13px;
		color:#777; 
		}
	.footernotice p{
		margin:10px 0; color:#000; font-size:15px; font-weight:bold;
	}
	
	.questionbtn {
		background-color:#000; color:#fff; border:0 solid; padding:10px;  font-weight: bold;
		margin-top:20px; width:180px;
	}
	.questionbtn a{
		display:block;
	}	
	
</style>

</head>
<body>
	<div class="footerwrap">
		<footer>
		<div class="servicearea">
			<div class="customerinfo">
				<h3>고객센터 1500-0000</h3>
				<p>운영시간 평일 11:00 - 18:00 (토 일, 공휴일 휴무)  점심시간 평일 13:00 - 14:00</p>
				<p>1:1 문의하기는 앱에서만 가능합니다.</p>
				<button class="questionbtn"><a href="#">자주묻는질문</a></button>
			</div>
			<div>
				<ul class="footerul">
					<h3>이용안내</h3>
					<li><a href="#">검수기준</a></li>
					<li><a href="#">이용정책</a></li>
					<li><a href="#">페널티 정책</a></li>
					<li><a href="#">커뮤니티 가이드라인</a></li>
				</ul>
			</div>
			<div>
				<ul class="footerul">
					<h3>고객지원</h3>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">서비스 소개</a></li>
					<li><a href="#">스토어 안내</a></li>
					<li><a href="#">판매자 방문접수</a></li>
				</ul>
			</div>
			</div>
		<div class="companyinfo">
			<ul class="footerul2">
				<li><a href="#">회사소개</a></li>
				<li><a href="#">인재채용</a></li>
				<li><a href="#">제휴제안</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
			</ul>
			<p>크레용 주식회사 · 대표 손명욱　사업자등록번호 : 123-45-6789　사업자정보확인　사업장소재지 : 부평 상록스테이션타워 706호, 7층　호스팅 서비스 : ㅠㅠ</p>
		</div>
		<div class="footernotice">
			<p>00은행 채무지급보증 안내</p>
			당사는 고객님의 현금 결제 금액에 대해 00은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.서비스가입 사실 확인
			크레용(주)는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 본 상품은 개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 단, 이용약관 및 정책, 기타 거래 체결 과정에서 고지하는 내용 등에 따라 검수하고 보증하는 내용에 대한 책임은 크레용(주)에 있습니다.
		</div>
	</footer>
	</div>
</body>
</html>