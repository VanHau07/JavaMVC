<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="../resources/user/css/style-starter.css">
<link rel="stylesheet" href="../resources/user/css/button.css">
<!-- about breadcrumb -->

<section class="w3l-about-breadcrumb text-left">
	<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
		<div class="container">
			<h2 class="title">Chi tiết</h2>
			<ul class="breadcrumbs-custom-path mt-2">
				<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Chi tiết</li>
			</ul>
		</div>
	</div>
</section>
<!-- //about breadcrumb -->
<!--  Work gallery section -->

<!-- //Content -->

<section class="grids-1 py-5">
	<div class="grids py-lg-5 py-md-4">
		<div class="container">
			<table class="table table-bordered" border="1"">
				<tr class="table-success" style="text-align: center">
					<th>Hình ảnh</th>
					<th>Nội dung</th>
				</tr>
				<tr>
					<td style="text-align: center">
						<div class="column">
							<a href=""><img
								src="../resources/user/images/${detail.getImage()}" alt=""
								class="img-fluid" style="width: 500px"></a>
						</div>
					</td>
					<td>
						<div class="boxDesign1">
							<div class="attr">
								<ul>
									<li>
										<div class="at">Tên tour</div>
										<div class="as">Chuyến du lịch ${detail.getTitle()}</div>
									</li>
									<li>
										<div class="at">Mã tour</div>
										<div class="as">${detail.getId()}</div>
									</li>
									<li>
										<div class="at">Thời gian:</div>
										<div class="as">${detail.getDescription()}</div>
									</li>
									<li>
										<div class="at">Khỏi hành:</div>
										<div class="as">${detail.getDeal_timer()}</div>
									</li>
										<li>
										<div class="at">Áp dụng:</div>
										<div class="as">${detail.getAvailable()} Người lớn</div>
									</li>
									<li>
										<div class="at">Vận chuyển:</div>
										<div class="as">Xe máy, máy bay</div>
									</li>
									<li>
										<div class="at">Xuất phát:</div>
										<div class="as">${detail.getInfor()}</div>
									</li>
								</ul>
								<button class="custom-btn btn-12"
									style="margin-top: 100px; margin-left: 100px;">
									<a href="<c:url value="/AddCart/${ detail.getId()}"/>"><span>nhấn
											vào</span><span>Đặt tour</span></a>
								</button>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<div>
						<h4>Mô tả về địa điểm du lịch</h4>
				<div>
					<table class="table table-bordered" border="1">					
						<tr>
							<td><h6>${ detail.getDetail()}</h6></td>
						</tr>
					</table>

				</div>
			
			</div>
			<div>			
				<h4>Lịch trình chuyến đi</h4>
				<div>
					<table class="table table-bordered" border="1"">
						<tr class="table-success">
							<th>Ngày thứ 1</th>
						</tr>
						<tr>
							<td><h6>${ detail.getSchedule1()}</h6></td>
						</tr>

					</table>

				</div>
					<div>
					<table class="table table-bordered" border="1"">
						<tr class="table-success">
							<th>Ngày thứ 2</th>
						</tr>
						<tr>
							<td><h6>${ detail.getSchedule2()}</h6></td>
						</tr>

					</table>

				</div>
					<div>
					<table class="table table-bordered" border="1"">
						<tr class="table-success">
							<th>Ngày thứ 3</th>
						</tr>
						<tr>
							<td><h6>${ detail.getSchedule3()}</h6></td>
						</tr>

					</table>

				</div>

			</div>
		</div>
	</div>
</section>
<!-- //Content -->

<!--  //Work gallery section -->
<!-- //tự tạo -->
<!--  Work gallery section -->
<section class="w3l-grids-3 py-5">
	<div class="container py-md-5">
		<h6 class="sub-title">Điểm đến liên quan</h6>
		<div class="row bottom-ab-grids">
			<!--/row-grids-->
			<c:forEach var="item" items="${Relate}">
				<div class="col-lg-6 subject-card mt-lg-0 mt-4 mb-4">
					<div class="subject-card-header p-4">
						<a href="" class="card_title p-lg-4d-block">
							<div class="row align-items-center">
								<div class="col-sm-5 subject-img">
									<img src="../resources/user/images/${item.getImage() }"
										class="img-fluid" alt="">
								</div>
								<div class="col-sm-7 subject-content mt-sm-0 mt-4">
									<h4>${item.getTitle()}</h4>
									<p>${item.getDescription()}</p>
									<div class="dst-btm">
										<h6 class="">Nơi đi ${item.getInfor()}</h6>
									</div>
									<div class="dst-btm">
										<h6 class="">Giá gốc</h6>
										<span style="text-decoration-line: line-through"><fmt:formatNumber
												value="${item.getPrice()}" type="number"
												maxIntegerDigits="14" />(VNĐ)</span>
									</div>
									<div class="dst-btm">
										<h6 class="">Giảm còn</h6>
										<span><fmt:formatNumber value="${item.getPrice_net()}"
												type="number" maxIntegerDigits="14" />(VNĐ)</span>
									</div>
									<p class="sub-para">${item.getContent()}</p>
								</div>
							</div>
						</a>
						<div class="frame">
							<a href="<c:url value="chi-tiet-san-pham/${item.id }" />"><button
									class="custom-btn btn-4" href="">Xem chi tiết</button></a> <a
								href="<c:url value="/AddCart/${ detail.getId()}"/>"><button class="custom-btn btn-5">
									<span>Đặt tour</span>
								</button></a>
						</div>
					</div>
				</div>
			</c:forEach>
			<!--//row-grids-->
		</div>
	</div>
</section>
<!--  //Work gallery section -->