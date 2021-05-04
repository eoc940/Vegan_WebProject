<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.2.0/dist/chart.min.js"
></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.2.0/dist/chart.min.js"
></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.2.0/dist/chart.esm.min.js"
></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.2.0/dist/helpers.esm.min.js"
></script>
<script src="../assets/vendor/jquery/jquery.min.js"></script>
</head>
<body>

	<canvas id="myChart" width="250" height="250"></canvas>
	<script>
		var resultLabel = new Array();
		var resultData = new Array();

		function showAreaGraph() {
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange = callback;
			xhr.open("post", "areaGraph.do", true);
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded;charset=utf-8");
			xhr.send();
		}
		function callback() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					var list = JSON.parse(xhr.responseText);

					if (list != null) {
						for (var i = 0; i < 5; i++) {
							resultLabel[i] = list[i].areaName;
							resultData[i] = list[i].countStore;
						}
						var ctx = document.getElementById('myChart');
						var myChart = new Chart(ctx,
								{
									type : 'doughnut',
									data : {
										labels : resultLabel,
										datasets : [ {
											label : '음식점 수',
											data : resultData,
											backgroundColor : [ 'rgba(43, 177, 255, 0.2)',
													'rgba(254, 186, 1, 0.2)',
													'rgba(254, 237, 6, 0.2)',
													'rgba(94, 199, 94, 0.2)',
													'rgba(255,168,168, 0.2)'],
											borderColor : [ 'rgba(43, 177, 255, 1)',
													'rgba(254, 186, 1, 1)',
													'rgba(254, 237, 6, 1)',
													'rgba(94, 199, 94, 1)',
													'rgba(255,168,168, 1)' ],
											borderWidth : 1
										} ]
									},
									options: {
										responsive: true,
										plugins: {
										  legend: {
											position: 'left',
										  },
										  title: {
											display: false,
											text: 'Chart.js Doughnut Chart'
										  }
										}
									  },
								});
					}
				}
			}

		}

		$(document).ready(function() {
			showAreaGraph();
		});
	</script>
</body>
</html>