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
</head>
<body>
<div id="app">
	 <div id="chart">
        <apexchart type="line" height="350" :options="chartOptions" :series="series"></apexchart>
      </div>
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
            name: "Desktops",
            data: [10, 41, 35, 51, 49, 62, 69, 91, 148]
        }],
        chartOptions: {
          chart: {
            height: 350,
            type: 'line',
            zoom: {
              enabled: false
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            curve: 'straight',
            colors : '#ff0000',
          },
          title: {
            text: 'Product Trends by Month',
            align: 'left'
          },
          grid: {
            row: {
              colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
              opacity: 0.5
            },
          },
          xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
          }
        },
	},// data
	methods : {
		fnGetList : function(){
            var self = this;
            var nparmap = {proName : self.proName};
            $.ajax({
                url : "/chartlist.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
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