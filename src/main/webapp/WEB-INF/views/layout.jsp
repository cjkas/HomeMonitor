<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home Monitor</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"	href="<c:url value='/bootstrap/css/bootstrap.min.css'/>">
<!-- Font Awesome -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"	href="<c:url value='/dist/css/AdminLTE.min.css'/>">
<link rel="stylesheet"	href="<c:url value='/dist/css/skins/skin-blue.min.css'/>">
<link rel="stylesheet"	href="<c:url value='/dist/style.css'/>">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/favicon/apple-icon-57x57.png'/>">
<link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/favicon/apple-icon-60x60.png'/>">
<link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/favicon/apple-icon-72x72.png'/>">
<link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/favicon/apple-icon-76x76.png'/>">
<link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/favicon/apple-icon-114x114.png'/>">
<link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/favicon/apple-icon-120x120.png'/>">
<link rel="apple-touch-icon" sizes="144x144" href="<c:url value='/favicon/apple-icon-144x144.png'/>">
<link rel="apple-touch-icon" sizes="152x152" href="<c:url value='/favicon/apple-icon-152x152.png'/>">
<link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/favicon/apple-icon-180x180.png'/>">
<link rel="icon" type="image/png" sizes="192x192"  href="<c:url value='/favicon/android-icon-192x192.png'/>">
<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/favicon/favicon-32x32.png'/>">
<link rel="icon" type="image/png" sizes="96x96" href="<c:url value='/favicon/favicon-96x96.png'/>">
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/favicon/favicon-16x16.png'/>">
<link rel="manifest" href="<c:url value='/favicon/manifest.json'/>">
<meta name="msapplication-TileColor" content="#3c8dbc">
<meta name="msapplication-TileImage" content="<c:url value='/favicon/ms-icon-144x144.png'/>">
<meta name="theme-color" content="#3c8dbc">

<script src="<c:url value='/plugins/jQuery/jQuery-2.1.4.min.js'/>"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Main Header -->
		<header class="main-header">

    <!-- Logo -->
    <a href="index.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>H</b>MON</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Home</b>MONITOR</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
    </nav>
  </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" style="height: auto;">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">NAWIGACJA</li>
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Stacja pogody</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu menu-open" style="display: block;">
            <li><a href="<c:url value='/lastProbe'/>"><i class="fa fa-circle-o"></i> Ostatni odczyt</a></li>
            <li><a href="<c:url value='/weatherStationCharts'/>"><i class="fa fa-circle-o"></i> Wykresy</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<tiles:insertAttribute name="body" />
		</div>
		<!-- /.content-wrapper -->

	</div>

	<script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/dist/js/app.js'/>"></script>

</body>
</html>
