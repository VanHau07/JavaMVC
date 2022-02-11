<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">CHI TIẾT BÀI VIẾT</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<marquee>Chi tiết về sản phẩm</marquee>
					</div>
					<div class="panel-body">
						<div class="row">
							<form:form action="update_blog" method="post"
								modelAttribute="detail">
								<div class="form-row">
									<div class="form-group col-sm-6">
										<label for="myEmail">Tên bài viết</label>
										<form:input type="text" path="Name" class="form-control"
											id="myEmail" readonly="true" />
									</div>
									<div class="form-group col-sm-6">
										<label for="myPassword">Mô tả ngắn</label>
										<form:input type="text" path="Title" class="form-control"
											id="myPassword" readonly="true" />
									</div>
								</div>


								<div class="form-group">
									<label>Hình ảnh:</label> <input type="file" name="image_file"
										class="form-control" />
									<form:hidden path="Images" />
								</div>

								<div class="form-group">
									<label for="myEmail">Mô tả</label>
									<form:textarea type="text" path="Description"
										class="form-control" id="chi_tiet" readonly="true" />
								</div>

								<div class="form-group">
									<label for="myEmail">Chi tiết</label>
									<form:textarea type="text" path="Detail" class="form-control"
										id="chi_tiet" readonly="true" />
								</div>
								<div class="form-group">
									<label for="myEmail">Người tạo</label>
									<form:input type="text" path="Create_by" min="0"
										class="form-control" id="Create_by" readonly="true"/>
								</div>

								<div class="form-group">
									<label for="myEmail">Bình luận</label>
									<form:input type="text" path="Comment" min="0"
										class="form-control" id="myEmail" readonly="true" />
								</div>
							</form:form>
							<div class="form-group" style="text-align: center;">
								<a href="<c:url value="../admin_blog"/>"><button
										class="btn btn-primary">Quay lại</button></a> <a
									href="<c:url value="../detail_delete_blog/${id}"/>"><button
										class="btn btn-danger">Xóa</button></a> <a
									href="<c:url value="../detail_update_blog/${id }"/>"><button
										class="btn btn-warning">Sửa lại</button></a>
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