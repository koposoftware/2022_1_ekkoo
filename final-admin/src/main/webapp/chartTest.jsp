<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="chart"></div>
<div id="chartAge"></div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script type="text/javascript">

var options = {
        series: [{
        name: 'Inflation',
        data: [2.3, 3.1]
      }],
        chart: {
        height: 350,
        type: 'bar',
      },
      plotOptions: {
        bar: {
          borderRadius: 10,
          dataLabels: {
            position: 'top', // top, center, bottom
          },
        }
      },
      dataLabels: {
        enabled: true,
        formatter: function (val) {
          return val + "원";
        },
        offsetY: -20,
        style: {
          fontSize: '12px',
          colors: ["#304758"]
        }
      },
      
      xaxis: {
        categories: ["예상 월 소비", "예상 월 지출"],
        position: 'top',
        axisBorder: {
          show: false
        },
        axisTicks: {
          show: false
        },
        crosshairs: {
          fill: {
            type: 'gradient',
            gradient: {
              colorFrom: '#D8E3F0',
              colorTo: '#BED1E6',
              stops: [0, 100],
              opacityFrom: 0.4,
              opacityTo: 0.5,
            }
          }
        },
        tooltip: {
          enabled: true,
        }
      },
      yaxis: {
        axisBorder: {
          show: false
        },
        axisTicks: {
          show: false, 
        },
        labels: {
          show: false,
          formatter: function (val) {
            return (val/(2.1+2.3)*100) + "%";
          }
        }
      
      },
      title: {
        text: 'Monthly Inflation in Argentina, 2002',
        floating: true,
        offsetY: 330,
        align: 'center',
        style: {
          color: '#444'
        }
      }
      };

      var chart = new ApexCharts(document.querySelector("#chart"), options);
      chart.render();

</script>
</body>
</html>