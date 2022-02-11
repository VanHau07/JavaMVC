<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Thanh toán</title>
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
<!--//Style-CSS -->
<link href='https://css.gg/phone.css' rel='stylesheet'>
</head>

<body>
	<section class="w3l-about-breadcrumb text-left">
		<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
			<div class="container">
				<h2 class="title">Thanh toán</h2>

				<ul class="breadcrumbs-custom-path mt-2">
					<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
					<li class="active"><span class="fa fa-arrow-right mx-2"
						aria-hidden="true"></span> Thanh toán</li>
				</ul>
			</div>
		</div>
	</section>
	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile form1">
				<h3>Thanh toán đơn hàng</h3>
				<form:form action="checkout" method="post" modelAttribute="bills">
					<h6 class="" style="text-align: center; color: red;margin-bottom: 10px;">${statusLogin }</h6>
						<div class="key">
						<form:input path="id_users" type="text"  />
						<div class="clearfix"></div>
					</div>									
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<form:input path="display_name" type="text" />
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<form:input path="users" type="text" />
						<div class="clearfix"></div>
					</div>

					<div class="key">
						<i class="fa fa-phone-square" aria-hidden="true"></i>
						<form:input type="text" path="phone" />
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-location-arrow" aria-hidden="true"></i>
						<form:input type="text" path="address" />
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-commenting" aria-hidden="true"></i>
						<form:textarea path="note" type="text" rows="5" cols="44" />
						<div class="clearfix"></div>
					</div>
					<input type="submit" value="Thanh toán">
				</form:form>
			</div>

		</div>
	</div>

</body>

</html>