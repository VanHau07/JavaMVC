<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="text-align: center;">XÓA TOUR</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<marquee>Xóa tour ra khỏi danh sách</marquee>
					</div>
					<div class="panel-body">
						<div class="row">
							<form:form action="detail_delete_product" method="post"
								modelAttribute="detail">
								<div class="form-row">
									<div class="form-group col-sm-3">
										<label for="myEmail">Mã tour</label>
										<form:input type="text" path="id" class="form-control"
											readonly="true" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myEmail">Tên tour</label>
										<form:input type="text" path="title" class="form-control"
											id="myEmail" placeholder="title" readonly="true" />
									</div>
									<div class="form-group col-sm-6">
										<label for="myPassword">Mô tả ngắn</label>
										<form:input type="text" path="description"
											class="form-control" readonly="true" id="myPassword"
											placeholder="description" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-sm-3">
										<label for="myEmail">Giá gốc</label>
										<form:input type="number" min="0" path="price"
											class="form-control" readonly="true" id="myEmail"
											placeholder="0" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myEmail">Giá giảm</label>
										<form:input type="number" path="price_net" min="0"
											readonly="true" class="form-control" id="myEmail"
											placeholder="0" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myPassword">Còn lại</label>
										<form:input type="number" path="available" min="0"
											readonly="true" class="form-control" id="myPassword"
											placeholder="0" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myPassword">Đã bán</label>
										<form:input type="number" path="sold" min="0"
											class="form-control" readonly="true" id="myPassword"
											placeholder="0" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col-sm-6">
										<label for="myEmail">Mã giảm</label>
										<form:input type="number" min="0" path="discount"
											readonly="true" class="form-control" id="myEmail"
											placeholder="0" />
									</div>
									<div class="form-group col-sm-6">
										<label for="myEmail">Ngày tạo</label>
										<form:input type="text" path="deal_timer" readonly="true"
											class="form-control" id="myEmail" placeholder="0" />
									</div>
								</div>
								<div class="form-group">
									<label for="inputAddress2">Hình ảnhtour</label> <br /> <img
										width="300" height="200"
										src="../resources/user/images/${ detail.image}" />
								</div>
								<div class="form-row">
									<div class="form-group col-sm-3">
										<label>Thịnh hành</label><br/>
										<form:select path="hot_hot"
											cssStyle="margin-left:7px;width:100px;">
											<form:option value="true" label="Có" disabled="true"/>
											<form:option value="false" label="Không" disabled="true"/>
										</form:select>
									</div>
									<div class="form-group col-sm-2">
										<label>Tour mới</label><br/>
										<form:select path="hot_new"
											cssStyle="margin-left:7px;width:100px;">
											<form:option value="true" label="Có" disabled="true"/>
											<form:option value="false" label="Không" disabled="true"/>
										</form:select>
									</div>
									<div class="form-group col-sm-2">
										<label>Nhiều đơn</label><br/>
										<form:select path="hot_best"
											cssStyle="margin-left:7px;width:100px;">
											<form:option value="true" label="Có" disabled="true" />
											<form:option value="false" label="Không" disabled="true"/>
										</form:select>
									</div>
									<div class="form-group col-sm-2">
										<label for="myCity">Xu hướng</label><br/>
										<form:select path="trend"
											cssStyle="margin-left:7px;width:100px;">
											<form:option value="true" label="Có" disabled="true"/>
											<form:option value="false" label="Không" disabled="true"/>
										</form:select>
									</div>
									<div class="form-group col-sm-3">
										<label for="myCity">Yêu thích</label><br/>
										<form:select path="latest_review"
											cssStyle="margin-left:7px;width:100px;">
											<form:option value="true" label="Có" disabled="true"/>
											<form:option value="false" label="Không" disabled="true"/>
										</form:select>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-sm-1">
										<label for="myEmail">Mã loại</label>
										<form:input type="number" path="id_category"
											class="form-control" id="myEmail" min="0" />
									</div>
									<div class="form-group col-sm-7">
										<label for="myEmail">Nội dung</label>
										<form:input type="text" path="content" class="form-control"
											id="content" placeholder="Price" readonly="true" />
									</div>
									<div class="form-group col-sm-4">
										<label for="myEmail">Điểm xuất phát</label>
										<form:input type="text" min="0" path="infor"
											class="form-control" id="myEmail" placeholder="0"
											readonly="true" />
									</div>
								</div>

								<div class="form-group">
									<label for="myEmail">Chi tiết</label>
									<form:textarea type="text" path="detail" class="form-control"
										id="ct" placeholder="Price" readonly="true" />
								</div>
								<div class="form-row">

									<div class="form-group col-sm-3">
										<label for="myEmail">Giá người lớn</label>
										<form:input type="text" path="price_adult" min="0"
											class="form-control" id="price_adult" placeholder="0"
											readonly="true" />
									</div>

									<div class="form-group col-sm-3">
										<label for="myEmail">Giá trẻ em</label>
										<form:input type="text" path="price_children" min="0"
											class="form-control" id="myEmail" placeholder="0"
											readonly="true" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myEmail">Giá trẻ nhỏ</label>
										<form:input type="text" min="0" path="price_child"
											class="form-control" id="myEmail" readonly="true" />
									</div>
									<div class="form-group col-sm-3">
										<label for="myEmail">Giá trẻ sơ sinh</label>
										<form:input type="text" path="price_infant" min="0"
											class="form-control" id="price_infant" readonly="true" />
									</div>
								</div>

								<div class="form-group">
									<label for="inputAddress2">schedule1</label>
									<form:input type="text" path="schedule1" class="form-control"
										readonly="true" id="myAddress2" placeholder="" />
								</div>
								<div class="form-group">
									<label for="inputAddress2">schedule2</label>
									<form:input type="text" path="schedule2" class="form-control"
										readonly="true" id="myAddress2" placeholder="" />
								</div>
								<div class="form-group">
									<label for="inputAddress2">schedule3</label>
									<form:input type="text" path="schedule3" class="form-control"
										readonly="true" id="myAddress2" placeholder="" />
								</div>
								<div class="form-group" style="text-align: center;">
									<button type="submit" class="btn btn-danger">Xóa</button>
								</div>
							</form:form>
							<div class="form-group" style="text-align: center;">
								<a href="<c:url value="../admin_product"/>"><button
										class="btn btn-primary">Về trang chủ</button></a>
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