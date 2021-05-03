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

	<canvas id="myChart" width="600" height="300" ></canvas>
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
									type : 'bar',
									data : {
										labels : resultLabel,
										datasets : [ {
											label : '음식점 수',
											data : resultData,
											backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
													'rgba(54, 162, 235, 0.2)',
													'rgba(255, 206, 86, 0.2)',
													'rgba(75, 192, 192, 0.2)',
													'rgba(153, 102, 255, 0.2)' ],
											borderColor : [ 'rgba(255, 99, 132, 1)',
													'rgba(54, 162, 235, 1)',
													'rgba(255, 206, 86, 1)',
													'rgba(75, 192, 192, 1)',
													'rgba(153, 102, 255, 1)' ],
											borderWidth : 1
										} ]
									},
									options : {
										scales : {
											y : {
												beginAtZero : true
											}
										}
									}
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