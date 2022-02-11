<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="w3l-grids-3 py-5">
	<div class="container py-md-5">
		<div class="title-content text-left mb-lg-5 mb-4">
			<h6 class="sub-title">Bạn đang tìm kiếm</h6>
		</div>
		<div class="row bottom-ab-grids">
			<!--/row-grids-->
			<c:if test="${empty search}">
				<h4 style="text-align: center;">Không tìm thấy tour nào !!!</h4>
			</c:if>
			<c:if test="${not empty search}">
				<c:forEach var="item" items="${search}">
					<div class="col-lg-6 subject-card mt-lg-0 mt-4 mb-4">
						<div class="subject-card-header p-4">
							<a href="<c:url value="chi-tiet-san-pham/${item.id }" />" class="card_title p-lg-4d-block">
								<div class="row align-items-center">
									<div class="col-sm-5 subject-img">
										<img src="resources/user/images/${item.getImage() }"
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
									href="<c:url value="/AddCart/${item.id }"/>"><button
										class="custom-btn btn-5">
										<span>Chọn tour này</span>
									</button></a>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<!--//row-grids-->
		</div>
	</div>
</section>
