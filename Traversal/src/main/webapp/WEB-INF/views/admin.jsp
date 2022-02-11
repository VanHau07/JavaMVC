<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Đăng nhập</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="Hotair Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //Meta tag Keywords -->
<link
	href="//fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@400;600;700;900&display=swap"
	rel="stylesheet">
<!--/Style-CSS -->
<link rel="stylesheet" href="../resources/user/css/register/style_1.css">
<!--//Style-CSS -->

<link rel="stylesheet"
	href="../resources/user/css/register/font-awesome.min.css">
</head>

<body>
	<section class="w3l-about-breadcrumb text-left">
		<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
			<div class="container">
				<h2 class="title">Đăng Nhập Admin</h2>

				<ul class="breadcrumbs-custom-path mt-2">
					<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
					<li class="active"><span class="fa fa-arrow-right mx-2"
						aria-hidden="true"></span> Đăng nhập</li>
				</ul>
			</div>
		</div>
	</section>
	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile form1">
				<h4 style="text-align: center; color: green;">ĐĂNG NHẬP ADMIN</h4>
				<form:form action="quan-tri" method="POST" modelAttribute="user">

					<h6 class="md-mt-4" style="text-align: center; color: red;">${statusLogin }</h6>
					<br />
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<form:input path="users" type="text" value="Email"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Username';}"
							required="true" />
						<div class="clearfix"></div>
					</div>

					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i>
						<form:input type="password" path="password" value="Password"
							name="Password" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Password';}"
							required="true" />
						<div class="clearfix"></div>
					</div>
					<input type="submit" value="Submit">
				</form:form>
			</div>

		</div>
	</div>

</body>

</html>