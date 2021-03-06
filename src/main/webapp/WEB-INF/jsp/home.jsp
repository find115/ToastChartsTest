<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/rsc/tui-chart.min.css" />
</head>
<body>
    <h1>Charts Test!</h1>
    <div id="chart-area"></div>
    <script src="${pageContext.request.contextPath}/rsc/tui-chart-all.min.js"></script>
    <script>
        var container = document.getElementById('chart-area');
        var data = {
            categories: ['01/01/2016', '02/01/2016', '03/01/2016', '04/01/2016', '05/01/2016', '06/01/2016', '07/01/2016', '08/01/2016', '09/01/2016', '10/01/2016', '11/01/2016', '12/01/2016'],
            series: [
                {
                    name: 'Seoul',
                    data: [-3.5, -1.1, 4.0, 11.3, 17.5, 21.5, 24.9, 25.2, 20.4, 13.9, 6.6, -0.6]
                },
                {
                    name: 'Seattle',
                    data: [3.8, 5.6, 7.0, 9.1, 12.4, 15.3, 17.5, 17.8, 15.0, 10.6, 6.4, 3.7]
                },
                {
                    name: 'Sydney',
                    data: [22.1, 22.0, 20.9, 18.3, 15.2, 12.8, 11.8, 13.0, 15.2, 17.6, 19.4, 21.2]
                },
                {
                    name: 'Moskva',
                    data: [-10.3, -9.1, -4.1, 4.4, 12.2, 16.3, 18.5, 16.7, 10.9, 4.2, -2.0, -7.5]
                },
                {
                    name: 'Jungfrau',
                    data: [-13.2, -13.7, -13.1, -10.3, -6.1, -3.2, 0.0, -0.1, -1.8, -4.5, -9.0, -10.9]
                }
            ]
        };
        var options = {
            chart: {
                width: 1160,
                height: 540,
                title: '24-hr Average Temperature'
            },
            yAxis: {
                title: 'Temperature (Celsius)',
            },
            xAxis: {
                title: 'Month',
                pointOnColumn: true,
                dateFormat: 'MMM',
                tickInterval: 'auto'
            },
            series: {
                showDot: false,
                zoomable: true
            },
            tooltip: {
                suffix: '°C'
            },
            plot: {
                bands: [
                    {
                        range: ['03/01/2016', '05/01/2016'],
                        color: 'gray',
                        opacity: 0.2
                    }
                ],
                lines: [
                    {
                        value: '03/01/2016',
                        color: '#fa2828'
                    }
                ]
            }
        };
        var theme = {
            series: {
                colors: [
                    '#83b14e', '#458a3f', '#295ba0', '#2a4175', '#289399',
                    '#289399', '#617178', '#8a9a9a', '#516f7d', '#dddddd'
                ]
            }
        };
        // For apply theme
        // tui.chart.registerTheme('myTheme', theme);
        // options.theme = 'myTheme';
        var chart = tui.chart.lineChart(container, data, options);
    </script>
</body>
</html>
