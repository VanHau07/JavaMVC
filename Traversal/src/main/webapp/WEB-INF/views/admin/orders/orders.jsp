<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">TRANG ĐƠN HÀNG
					</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<marquee>Danh sách tất cả đơn hàng</marquee>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr class="text-center">
										<th>Mã đơn hàng</th>
										<th>Email</th>
										<th>số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Tổng tiền</th>
										<th>Số lượng</th>
										<th>Ghi chú</th>
										<th>Trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${ bill_admin }">
										<tr class="text-center">
											<td>${ item.getId() }</td>
											<td>${ item.getUsers() }</td>
											<td>${ item.getPhone() }</td>
											<td>${ item.getAddress() }</td>
											<td><fmt:formatNumber type="number" groupingUsed="true"
													value="${item.getTotal()}" /> ₫</td>
											<td>${ item.getQuantity() }</td>
											<td>${ item.getNote() }</td>
											<td><a href="<c:url value="detail_bill/${item.id }"/>"><c:if
														test="${ item.getStatus() ==0}">
														<button class="btn btn-warning">Đang xử lý</button>
													</c:if> <c:if test="${ item.getStatus() ==1}">
														<button class="btn btn-success" onclick="1">Đã
															tiếp nhận</button>
													</c:if> <c:if test="${ item.getStatus() ==2}">
														<button class="btn btn-danger" onclick="1">Đã hoàn tất</button>
													</c:if></a></td>
											<td class="text-center"><a
												href="detail_order_detail/${item.id }"><button
														class="btn btn-info">Chi tiết</button></a></td>
											<!--  -->
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->

					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->