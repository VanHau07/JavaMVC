<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Traversal</title>
<!-- google fonts -->
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<link
	href="//fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&display=swap"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;1,400&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<link href='https://css.gg/shopping-cart.css' rel='stylesheet'>
<!-- Template CSS -->
<link rel="stylesheet"
	href="<c:url value='resources/user/css/style-starter.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/user/css/button.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/user/css/register/style_1.css' />">


<!-- admin -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/jqvmap/jqvmap.min.css'/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value='resources/user/dist/css/adminlte.min.css'/>">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/daterangepicker/daterangepicker.css'/>">
<!-- summernote -->
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/summernote/summernote-bs4.min.css'/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet"
	href="<c:url value='resources/user/plugins/fontawesome-free/css/all.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/user/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- admin -->

<link href='https://css.gg/log-out.css' rel='stylesheet'>

<!--//Style-CSS -->
<!-- Template CSS -->
</head>

<header id="site-header" class="fixed-top">
	<nav class="navbar navbar-expand-lg stroke">
		<h1 class="col-md-2">
			<a class="navbar-brand"
				href="http://localhost:8080/Traversal/quan-tri"> Traversal </a>
		</h1>
		<button class="navbar-toggler  collapsed bg-gradient" type="button"
			data-toggle="collapse" data-target="#navbarTogglerDemo02"
			aria-controls="navbarTogglerDemo02" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon fa icon-expand fa-bars"></span> <span
				class="navbar-toggler-icon fa icon-close fa-times"></span> </span>
		</button>

		<div class="collapse navbar-collapse col-md-5"
			id="navbarTogglerDemo02">
			<ul class="navbar-nav mr-auto">
				<c:forEach var="item" items="${menus}" varStatus="index">
					<c:if test="${index.first }">
						<li class="nav-item active">
					</c:if>
					<c:if test="${not index.first }">
						<li class="nav-item">
					</c:if>
					<a class="nav-link" href=${item.url }>${item.name }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="col-md-5">
			<div class="row">
				<div class="col-md-6" style="margin-top: 2px; margin-right: 3px;">
					<c:if test="${empty LoginInfo }">
						<div class="dropdown">
							<button class="btn btn-success dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">Tài khoản</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="<c:url value="dang-nhap"/>">Đăng nhập</a> <a
									class="dropdown-item" href="<c:url value="dang-ky"/>">Đăng ký</a>
							</div>
						</div>
					</c:if>
					<c:if test="${not empty LoginInfo }">
						<div class="row">
							<div class="col-md-5" style="color: green;""><h5>Wellcome</h5></div>
							<div class="col-md-5"><h5>${LoginInfo.display_name}</h5></div>
							<div class="col-md-2"><a href="dang-xuat">Thoát</a></div>
						</div>
						<h5>
							
						</h5>
					</c:if>
				</div>
				<div class="col-md-1"style="margin-top: 4px;">
					<a href="<c:url value="gio-hang"/>"><span> <i
							class="gg-shopping-cart"></i>
					</span> </a>
				</div>
				<div class="col-md-1" style="margin-left: -3px; font-size: 20px;">
					<c:if test="${empty TotalQuantityCart}">
						<sup>0</sup>
					</c:if>
					<c:if test="${not empty TotalQuantityCart}">
						<sup>${TotalQuantityCart }</sup>
					</c:if>
				</div>

				<div class="col-md-4" style="margin-top: 4px;" >
					<c:if test="${empty TotalPriceCart}">
						<span><fmt:formatNumber value="0" type="number"
								maxIntegerDigits="14" />(VNĐ)</span>
					</c:if>
					<c:if test="${not empty TotalPriceCart}">
						<span><fmt:formatNumber value="${TotalPriceCart }"
								type="number" maxIntegerDigits="14" />(VNĐ)</span>
					</c:if>

				</div>
				<!-- 	<div class="col-md-2">
					<div class="mobile-position">
						<nav class="navigation">
							<div class="theme-switch-wrapper">
								<label class="theme-switch" for="checkbox"> <input
									type="checkbox" id="checkbox">
									<div class="mode-container">
										<i class="gg-sun"></i> <i class="gg-moon"></i>
									</div>
								</label>
							</div>
						</nav>
					</div>
				</div>  -->
			</div>
		</div>
		<!-- toggle switch for light and dark theme -->

		<!-- //toggle switch for light and dark theme -->
	</nav>


</header>
