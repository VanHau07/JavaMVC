<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">ĐƠN HÀNG</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-green">
					<c:forEach var="item" items="${ order_detail }">
						<div class="panel-heading">Đơn hàng số ${ item.getId() }</div>
						<div class="panel-body">
							<p>khách hàng có mã :${item.getId_bills()}</p>
							<p>Mã sản phẩm được chọn: ${item.getId_product()}</p>
							<p>Số lượng: ${item.getQuantity()}</p>
							<p>Tổng tiền: <fmt:formatNumber type="number" groupingUsed="true"
									value="${item.getTotal()}" /> ₫</p>
						</div>
						<div class="panel-footer"></div>
					</c:forEach>
				</div>
					<div class="form-group" style="text-align: center;">
			<a href="<c:url value="../admin_bill"/>"><button
					class="btn btn-primary">Quay lại</button></a>
		</div>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->