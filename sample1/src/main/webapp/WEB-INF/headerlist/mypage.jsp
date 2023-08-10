<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
* {margin:0; padding:0;}

table {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid black;
	padding: 5px 10px;
}

li {
	list-style:none;
	}


a {	text-decoration:none;
	color: inherit;
	}

.wrap {
	width:1200px; margin:0 auto;
	}
nav {
	float:left; width:200px; color:#000;
	}
	
.myinfo h2{
		margin-bottom:20px;
	}	

	
.myinfo h3{
		margin:30px 0;
	}	
	
.myinfo ul li{
	margin:10px 0;
	}	
	
	
	
	
.sailcontainer {float:left;}
	.profilearea {
		width:900px; height:150px; border:2px solid #f8f8f8; border-radius:10px;
		}
		.profileinner1{
			float:left; width: 100px; height:100px; margin:25px 40px;
		}
		.profileinner2{
			float:left; width: 200px; margin-top:25px; height:100px; line-height:25px; color:#888; font-size:13px;
		}
			.profileinner2 strong{
				font-size:15px; color:#000; font-weight:bold; margin-bottom:5px;
			}
			.profileinner2 p {margin:5px 0;}
			.profileinner2 a{
				display:inline-block; border:1px solid #999; border-radius:10px; padding:8px;
				margin-left:5px; height:15px; line-height:15px;
			}
		.profileinner3{
			float:right; height:130px; width:200px; border-left:2px solid #f5f5f5;
			margin-top:10px; text-align: center;
		}
			.profileinner3 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:22 0 0 0;}
			.profileinner3 p:nth-child(2){line-height:1; margin-top:0;}
		.profileinner4{
			float:right; height:150px; width:200px;
			text-align: center;
		}
			.profileinner4 p:nth-child(1){line-height:2.5; font-size:18px; font-weight:bold; margin:30 0 0 0;}
			.profileinner4 p:nth-child(2){line-height:1; margin-top:2px;}
		

	.mylist{
		width:900px; 
		}
		.mylist h2{
			display:inline-block; float:left; margin:25px 0 10px 0;
		}	
		.mylist span {
			display:inline-block; float:right; margin-top:35px;
		}
		.listhead:after {
		    clear: both;
		    content: '';
		    display: block;
    	}
		.viewdv{
			height:100px; background-color:rgb(248,248,248);
			border-radius:20px;
		}
			
		.listul li{
			float:left; width:225px; text-align:center; margin-top:0;
		}
			.listul li p:nth-child(1){line-height:2.5; font-size:15px; font-weight:bold; margin:15 0 0 0;}
			.listul li p:nth-child(2){line-height:1; margin-top:2px; font-size:20px;}
		.listul li:after {
		    clear: both;
		    content: '';
		    display: block;
    	}
    	.listdv{
    		height:300px; margin:0; text-align:center; line-height:200px;
     	}
     	
     	.joygooddv {
     		height:300px; margin:0; text-align:center; line-height:100px;
     		background-color:rgb(248,248,248); border-radius:20px;
     	}
     	
		.joygooddv button{
			border:1px solid #999; border-radius:10px; padding:8px;
			margin-left:5px; 
		}
    

</style>

</head>
<body>
	<div id="app">
	<div class="wrap">
		<nav>
		<div class="myinfo">
			<h2>���� ������</h2>
			<h3>���� ����</h3>
			<ul>
				<li><a href="#">���� ����</a></li>
				<li><a href="#">�Ǹ� ����</a></li>
				<li><a href="#">���� �Ǹ�</a></li>
				<li><a href="#">���� ��ǰ</a></li>
			</ul>
		</div>
		<div class="myinfo">
			<h3>�� ����</h3>
			<ul>
				<li><a href="#">�α��� ����</a></li>
				<li><a href="#">������ ����</a></li>
				<li><a href="#">�ּҷ�</a></li>
				<li><a href="#">���� ����</a></li>
				<li><a href="#">�Ǹ� ���� ����</a></li>
				<li><a href="#">���ݿ����� ����</a></li>
				<li><a href="#">����Ʈ</a></li>
			</ul>
		</div>
		</nav>
		<div class="sailcontainer">
			<div class="profilearea">
				<div class="profileinner1">
					<img src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png">
				</div>
				<div class="profileinner2">
					<strong>����ھ��̵�</strong>
					<p>E***********@email.com</p>
					<a href="#" type="button">������ ����</a>
					<a href="#" type="button">�� ��Ÿ��</a>
				</div>
				<div class="profileinner3">
					<p>0P</p>
					<p>����Ʈ</p>
				</div>
				<div class="profileinner4">
					<p>�Ϲ�ȸ��</p>
					<p>ȸ�����</p>
				</div>
				
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>���ų���</h2>
				<span><a href="#">������ ></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>��ü</p>
						<p>0</p>
					</li>
					<li>
						<p>���� ��</p>
						<p>0</p>
					</li>
					<li>
						<p>���� ��</p>
						<p>0</p>
					</li>
					<li>
						<p>����</p>
						<p>0</p>
					</li>
				</ul>
				</div>
				<div class="listdv">
					<p>�ŷ������� �����ϴ�</p>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>�Ǹų���</h2>
				<span><a href="#">������ ></a></span>
				</div>
				<div class="viewdv">
				<ul class="listul">
					<li>
						<p>��ü</p>
						<p>0</p>
					</li>
					<li>
						<p>���� ��</p>
						<p>0</p>
					</li>
					<li>
						<p>���� ��</p>
						<p>0</p>
					</li>
					<li>
						<p>����</p>
						<p>0</p>
					</li>
				</ul>
				</div>
				<div class="listdv">
					<p>�ŷ������� �����ϴ�</p>
				</div>
			</div>
			<div class="mylist">
				<div class="listhead">
				<h2>���ɻ�ǰ</h2>
				<span><a href="#">������ ></a></span>
				</div>
				<div class="joygooddv">
					<p>�߰��Ͻ� ���ɻ�ǰ�� �����ϴ�.</p>
					<button><a href="#">shop �ٷΰ���</a></button>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
<script>
	var app = new Vue({
		el : '#app',
		data : {
			list : []
		},// data
		methods : {
			fnGetList : function() {
				var self = this;
				var param = {};
				$.ajax({
					url : "footer.dox",
					dataType : "json",
					type : "POST",
					data : param,
					success : function(data) {
						self.list = data.list;
						console.log(self.list);
					}
				});
			}

		}, // methods
		created : function() {
			var self = this;
			self.fnGetList();
		}// created
	});
</script>