<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>Temperatura 
		<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm:ss"
			value="${probe.created}" />
			<i id="refreshIcon" class="fa fa-refresh" style="display:none"></i>
	</h1>
</section>

<!-- Main content -->
<section class="content">

	<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i class="ion ion-flag"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Wiatr</span> <span
						class="info-box-number">${probe.windSpeed} <small>m/s</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i
					class="ion ion-ios-timer-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Ciśnienie</span> <span
						class="info-box-number">${probe.pressure} <small>hPa</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->

		<!-- fix for small devices only -->
		<div class="clearfix visible-sm-block"></div>

		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i
					class="ion ion-thermometer"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Temperatura</span> <span
						class="info-box-number">${probe.tempExternal} <small>&deg;C</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-aqua"><i
					class="ion ion-waterdrop"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Wilgotność</span> <span
						class="info-box-number">${probe.humidity} <small>%</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-yellow"><i
					class="ion ion-thermometer"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Temperatura baterii</span> <span
						class="info-box-number">${probe.tempBattery} <small>&deg;C</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<!-- /.col -->
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="info-box">
				<span class="info-box-icon bg-yellow"><i
					class="ion ion-battery-low"></i></span>
				<div class="info-box-content">
					<c:set var="percentBat">${((probe.batteryVoltage - 3.3)/(4.2-3.3)) * 100}</c:set>
					<span class="info-box-text">Napięcie baterii / Procent naładowania</span> <span
						class="info-box-number">${probe.batteryVoltage} <small>V / <fmt:formatNumber maxFractionDigits="2" maxIntegerDigits="2" type="number" value="${percentBat}"/> %</small></span>
				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
	</div>

	<!-- Your Page Content Here -->

</section>
<script type="text/javascript">
$(function(){
	var lastProbeDate = ${probe.created.time};
	var getLastProbeDate = function(){
		$("#refreshIcon").show();
		$.getJSON( "lastProbeDate.json", function( data ) {
				
				if (data != lastProbeDate) {
					window.location.reload();
				} else {
					$("#refreshIcon").hide();
				}
			});
		}
		setInterval(getLastProbeDate, 1000 * 60);
});
</script>
<!-- /.content -->
