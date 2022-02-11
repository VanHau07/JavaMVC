<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">CHỈNH SỬA ĐƠN HÀNG</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"><marquee> Cập nhật lại trạng thái</marquee></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form:form action="detail_bill" method="post"
									modelAttribute="bill_update" enctype="multipart/form-data">							
									<div class="form-group">
										<label for="myEmail">Mã</label>
										<form:input type="text" path="id" class="form-control" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Email</label>
										<form:input type="text" min="0" path="users"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Số điện thoại</label>
										<form:input type="number" min="0" path="phone"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Bí danh</label>
										<form:input type="text" min="0" path="display_name"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Nơi sống</label>
										<form:input type="text" min="0" path="address"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Số lượng</label>
										<form:input type="number" min="0" path="quantity"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label for="myEmail">Tổng tiền</label>
										<form:input type="number" min="0" path="total"
											class="form-control" id="price" readonly="true" />
									</div>
									<div class="form-group">
										<label>Trạng thái</label>
										<form:select path="status" class="form-control">
											<form:option value="0" label="Đang xử lý"/>
											<form:option value="1" label="Đã tiếp nhận"/>
											<form:option value="2" label="Đã xử lý"/>
										</form:select>
									</div>
									<button type="submit" class="btn btn-default">Cập nhật
									</button>
								</form:form>
									<div class="form-group" style="text-align: center;">
								<a href="<c:url value="../admin_bill"/>"><button
										class="btn btn-primary">Quay lại</button></a>
							</div>
							</div>

						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->