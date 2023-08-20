<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> <!-- 차트표 api -->
<script src="https://cdn.jsdelivr.net/npm/vue-apexcharts"></script> <!-- 차트표 api vue -->
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
<div id="app">
	 <div id="chart">
        <apexchart type="line" height="200" width="407" :options="chartOptions" :series="series"></apexchart>
      </div>
      <!-- <h1 v-for="item in list">{{data.series}}</h1> --> 
</div>

</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	 components: {
         apexchart: VueApexCharts,
       },
	data : {
		list : [],
		proName : "Nike Air Force 1 07 Fresh Black",
		series: [{
            name : "",
            data: [123],
        }],
        chartOptions: {
            chart: {
                type: 'line',
                zoom: {
                    enabled: false,
                },
                toolbar: {
                    show: false, // 다운로드 버튼 숨기기
                },
            },
            dataLabels: {
                enabled: false,
            }, 
            stroke: {
                curve: 'straight',
                colors: '#ff0000',
                width: 3,
            },
            title: {
                align: 'left'
            },
            grid: {
                show: false
            },
            xaxis: {
                labels: { show: false },
                axisTicks: { show: false },
                axisBorder: { show: false },
                categories: [],
            },
            yaxis: {
            	  opposite: true,
	              min: 0,
	              max: 500000,
	              labels: {
	                  show: true,
	                  align: 'right',
	                  minWidth: 0,
	                  maxWidth: 160,
	                  style: {
	                      colors: [],
	                      fontSize: '12px',
	                      fontFamily: 'Helvetica, Arial, sans-serif',
	                      fontWeight: 400,
	                      cssClass: 'apexcharts-yaxis-label',
	                  },
      	  },
        },
        },
	},// data
	methods : {
		fnGetChart : function(){
            var self = this;
            var nparmap = {proName : self.proName};
            $.ajax({
                url : "/chartlist.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) { 
                	self.list = data.list;
					var price = [];
					var tdate = [];
					var won = "원";
					for(var i=0; i<self.list.length; i++){
						price.push(self.list[i].transactionPrice+won);
						tdate.push(self.list[i].transactionDate);
					}
					
					self.series = [{data : price}];
					
					self.chartOptions = {
                			
                			xaxis : {categories : tdate}
                	};
                },
            }); 
        }
	}, // methods
	created : function() {
		var self = this;
		self.fnGetChart();
	}// created
});
</script>