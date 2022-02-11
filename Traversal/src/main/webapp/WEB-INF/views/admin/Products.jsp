<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">DANH SÁCH TOUR
					</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"><marquee>Danh sách tất cả các tour</marquee>
					<marquee>${message }</marquee>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables-example">
								<thead>
									<tr>
										<th>Mã</th>
										<th>hình ảnh</th>
										<th>Tiêu đề</th>
										<th>Tính năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${ product_admin }">
										<tr class="odd gradeX">
											<td>${ item.getId() }</td>
											<td><img width="100"
												src="<c:url value="/resources/user/images/${item.getImage()}"/>"
												alt=""></td>
											<td>${ item.getTitle() }</td>
											<td class="text-center"><a
												href="detail_product/${item.id }"><button
														class="btn btn-info">Chi tiết</button></a> <a
												href="<c:url value="detail_delete_product/${item.id }" />"><button
														class="btn btn-danger">Xóa</button></a> <a
												href="detail_update_product/${item.id }"><button
														class="btn btn-warning">Sửa</button></a></td>

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