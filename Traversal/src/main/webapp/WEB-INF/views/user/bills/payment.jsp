<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="../resources/user/css/style-starter.css">
<link rel="stylesheet" href="../resources/user/css/button.css">
<link href='https://css.gg/select-r.css' rel='stylesheet'>
<link href='https://css.gg/close.css' rel='stylesheet'>
<!-- about breadcrumb -->
<section class="w3l-about-breadcrumb text-left">
	<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
		<div class="container">
			<h2 class="title">Đã thanh toán</h2>
			<ul class="breadcrumbs-custom-path mt-2">
				<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Giỏ hàng</li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Đã thanh toán</li>
			</ul>
		</div>
	</div>
</section>
<div class="container">
	<div class="" style="margin-top: 50px;">
		<h3><marquee direction="left"  style="text-align: center; color: #00b159;">Xin cảm ơn
			anh/chị ${bill_detail.getDisplay_name()} đã tin và chọn tour du lịch
			của chúng tôi.</marquee></h3>
		<h2 style="text-align: center;color:red; margin-top: 20px;">THÔNG TIN KHÁCH HÀNG ĐÃ ĐĂNG KÝ</h2>
		<form:form action="payment" method="post" modelAttribute="bill_detail">
			<div class="form-row">
				<div class="form-group col-sm-2"></div>
				<div class="form-group col-sm-4">
					<label for="myEmail">Mã khách hàng</label>
					<form:input type="text" path="id" class="form-control"
						readonly="true" />
				</div>
				<div class="form-group col-sm-4">
					<label for="myEmail">Địa chỉ Email</label>
					<form:input type="text" path="users" class="form-control"
						id="myEmail" readonly="true" />
				</div>
				<div class="form-group col-sm-2"></div>
			</div>
			<div class="form-row">
				<div class="form-group col-sm-2"></div>
				<div class="form-group col-sm-4">
					<label for="myEmail">Bí danh/ Tên gọi</label>
					<form:input type="text" path="display_name" class="form-control"
						readonly="true" />
				</div>
				<div class="form-group col-sm-4">
					<label for="myEmail">Địa chỉ nơi sống</label>
					<form:input type="text" path="address" class="form-control"
						id="myEmail" readonly="true" />
				</div>
				<div class="form-group col-sm-2"></div>
			</div>
			<!-- 	<button type="submit" class="btn btn-danger" >THÔNGTIN ĐẶT TOUR</button> -->
		</form:form>
		<h3 style="text-align: center; margin: 40px;">
			<a href="<c:url value="/payment_detail/${bill_detail.id}" />"><button
					class="btn btn-warning">Chi tiết đơn hàng</button></a>
		</h3>
		<h2 style="text-align: center; margin: 40px;">
			<a href="<c:url value="/trang-chu" />"><button
					class="btn btn-success">Tiếp tục</button></a>
		</h2>


	</div>

</div>