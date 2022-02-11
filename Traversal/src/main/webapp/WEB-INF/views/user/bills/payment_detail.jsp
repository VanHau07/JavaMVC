<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<h2 style="text-align: center; color: #00b159;">THÔNG TIN ĐẶT
			TOUR</h2>
		<table class="table table-bordered table-condensed" border="1">
			<tr>
				<th>Địa chỉ email</th>
				<th>Số điện thoại</th>
				<th>Bí danh</th>
				<th>Địa chỉ sinh sống</th>	
				<th>Số lượng</th>
				<th>tổng tiền</th>
			</tr>
			<c:forEach var="item" items="${ bill }">
			<tr>
				<td>${ item.getUsers() }</td>
				<td>${ item.getPhone() }</td>
				<td>${ item.getDisplay_name() }</td>
				<td>${ item.getAddress() }</td>
				<td>${ item.getQuantity() }</td>
				<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${item.getTotal()}" /> VNĐ</td>
			</tr>
			</c:forEach>
		</table>
		<h2 style="text-align: center; margin: 40px;">
			<a href="<c:url value="/trang-chu" />"><button
					class="btn btn-success">Tiếp tục</button></a>
		</h2>


	</div>

</div>
<session> </session>