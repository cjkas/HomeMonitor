<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Stacja pogody wykresy
	</h1>
</section>

<!-- Main content -->
<section class="content">

<div class="btn-group">
  <button type="button" class="btn btn-default" onClick="drawChart('wind','Wiatr')">Wiatr</button>
  <button type="button" class="btn btn-default" onClick="drawChart('pressure','Ciśnienie')">Ciśnienie</button>
  <button type="button" class="btn btn-default" onClick="drawChart('tempExt','Temperatura')">Temperatura</button>
  <button type="button" class="btn btn-default" onClick="drawChart('humidity','Wilgotność')">Wilgotność</button>
  <button type="button" class="btn btn-default" onClick="drawChart('tempBat','Temperatura baterii')">Temperatura baterii</button>
  <button type="button" class="btn btn-default" onClick="drawChart('batVol','Napięcie baterii')">Napięcie baterii</button>
</div>

<div id="chartdiv"></div>	

</section>

<script src="<c:url value='/amcharts/amcharts.js'/>"></script>
<script src="<c:url value='/amcharts/serial.js'/>"></script>
<script src="<c:url value='/amcharts/themes/light.js'/>"></script>
<script src="<c:url value='/amcharts/plugins/dataloader/dataloader.min.js'/>" ></script>

<script type="text/javascript">
function drawChart(param,title){
	var chart = AmCharts.makeChart("chartdiv", {
	    "type": "serial",
	    "theme": "light",
	    "marginRight": 80,
	    "valueAxes": [{
	        "position": "left",
	        "title": title
	    }],
	    "graphs": [{
	        "id": "g1",
	        "fillAlphas": 0.4,
	        "valueField": "value",
	         "balloonText": "<div style='margin:5px; font-size:19px;'>"+title+":<b>[[value]]</b></div>"
	    }],
	    "chartScrollbar": {
	        "graph": "g1",
	        "scrollbarHeight": 80,
	        "backgroundAlpha": 0,
	        "selectedBackgroundAlpha": 0.1,
	        "selectedBackgroundColor": "#888888",
	        "graphFillAlpha": 0,
	        "graphLineAlpha": 0.5,
	        "selectedGraphFillAlpha": 0,
	        "selectedGraphLineAlpha": 1,
	        "autoGridCount": true,
	        "color": "#AAAAAA"
	    },
	    "chartCursor": {
	        "categoryBalloonDateFormat": "JJ:NN, DD/MM",
	        "cursorPosition": "mouse"
	    },
	    "categoryField": "date",
	    "categoryAxis": {
	        "minPeriod": "mm",
	        "parseDates": true
	    },
	    "export": {
	        "enabled": true
	    },
	    "dataLoader": {
	        "url": "weatherData.json?param="+param,
	        "format": "json"
	     }
	    
	});
	
	chart.addListener("dataUpdated", zoomChart);
	//when we apply theme, the dataUpdated event is fired even before we add listener, so
	//we need to call zoomChart here
	zoomChart();
	//this method is called when chart is first inited as we listen for "dataUpdated" event

	function zoomChart() {
		// different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
		var start = new Date();
		start.setHours(0, 0, 0, 0);
		var end = new Date();
		end.setHours(23, 59, 59, 999)
		chart.zoomToDates(start, end);
	}
}
drawChart("wind", "Wiatr");
</script>
<!-- /.content -->
