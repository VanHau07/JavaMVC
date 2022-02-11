<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- about breadcrumb -->
<section class="w3l-about-breadcrumb text-left">
	<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
		<div class="container py-2">
			<h2 class="title">Chi tiết bài viết</h2>
			<ul class="breadcrumbs-custom-path mt-2">
				<li><a href="#url">Bài viết</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Chi tiết bài viết</li>
			</ul>
		</div>
	</div>
</section>
<!-- //about breadcrumb -->
<!-- /about-6-->
<section class="w3l-cta4 py-5 mb-5">
	<div class="container py-lg-5">
		<div class="ab-section text-center">
			<h6 class="sub-title">${detail_blog.getName()}</h6>
			<h3 class="hny-title">${detail_blog.getTitle()}</h3>
			<p class="py-3 mb-3">${detail_blog.getDescription()}</p>
			<!--   <a href="services.html" class="btn btn-style btn-primary">Đọc thêm</a> -->
		</div>
		<div class="row mt-5">
			<div class="col-md-9 mx-auto" style="text-align: center;">
				<img src="../resources/user/images/${detail_blog.getImages()}"
					class="img-fluid" alt="">
			</div>

		</div>
		<div class="row mt-2">
			<div class="col-md-9 mx-auto" style="text-align: center;">
				<h5 class="fa fa-location-arrow"> ${detail_blog.getComment()}</h5>
			</div>
		</div>
	</div>
</section>

<section class="w3l-statshny py-5" id="stats">
	<div class="container py-lg-5 py-md-4">
		<div class="w3-stats-inner-info">
			<div class="row">
				<div class="col-lg-4 col-6 stats_info counter_grid text-left">
					<span class="fa fa-smile-o"></span>
					<p class="counter">150</p>
					<h4>Khách hàng hài lòng</h4>
				</div>
				<div class="col-lg-4 col-6 stats_info counter_grid1 text-left">
					<span class="fa fa-users"></span>
					<p class="counter">250</p>
					<h4>Sản phẩm yêu thích</h4>
				</div>
				<div
					class="col-lg-4 col-6 stats_info counter_grid mt-lg-0 mt-5 text-left">
					<span class="fa fa-database"></span>
					<p class="counter">3</p>
					<h4>Chi nhánh</h4>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //stats -->
<!-- team -->
<section class="w3l-team" id="team">
	<div class="team-block py-5">
		<div class="container py-lg-5">
			<div class="title-content text-center mb-lg-3 mb-4">
				<h6 class="sub-title">BÀI VIẾT</h6>
				<h3 class="hny-title">LIÊN QUAN</h3>
			</div>
			<div class="row">
				<c:forEach var="item" items="${blog}">
					<div class="col-lg-4 col-6 mt-lg-5 mt-4">
						<div class="box16">
							<a href="<c:url value="../bai-viet/${item.getId()}"/>"><img
								src="../resources/user/images/${item.getImages() }" alt=""
								class="img-fluid" /></a>
							<div class="box-content">
								<h3 class="title">
									<a href="<c:url value="bai-viet/${item.getId()}"/>">${item.getCreate_by()}</a>
								</h3>
								<h6 class="post" style="color: white;">${item.getDescription()}</h6>
								<ul class="social">
									<li><a href="<c:url value="../bai-viet/${item.getId()}"/>"
										class="facebook"> 
									</a></li>
									<li><a href="<c:url value="../bai-viet/${item.getId()}"/>"
										class="twitter"> 
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
<!-- //team -->