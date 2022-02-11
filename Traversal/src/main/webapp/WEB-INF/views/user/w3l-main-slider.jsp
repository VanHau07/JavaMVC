<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section class="w3l-main-slider" id="home">
	<div class="banner-content">
		<div id="demo-1"
			data-zs-src='["resources/user/images/banner1.jpg", "resources/user/images/banner2.jpg","resources/user/images/banner3.jpg", "resources/user/images/banner4.jpg"]'
			data-zs-overlay="dots">
			<div class="demo-inner-content">
				<div class="container">
					<div class="banner-infhny">
						<h3>Bạn không cần phải đi đâu xa để tìm ra thứ quan trọng.</h3>
						<h6 class="mb-3">Khám phá cuộc phiêu lưu tiếp theo của bạn</h6>
						<div class="flex-wrap search-wthree-field mt-md-5 mt-4">
							<form action="search_slider" method="POST">
								<div class="row book-form">
									<div class="form-input col-md-4 mt-md-0 mt-3">
										<select name="title" class="selectpicker" id="title"
											style="width: 200px; height: 52px; border-radius: 5px;">
											<c:forEach var="item" items="${product}">
												<option value="${item.getTitle()}">${item.getTitle()}</option>
											</c:forEach>
										</select>					
									</div>
									<div class="form-input col-md-4 mt-md-0 mt-3">
										<input type="date" name=""
											style="width: 200px; height: 52px; border-radius: 5px;">
									</div>
									<div class="bottom-btn col-md-4 mt-md-0 mt-3">
										<button class="btn btn-style btn-danger" type="submit">
											<span class="fa fa-search mr-3" aria-hidden="true"></span>Tìm
											kiếm
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
