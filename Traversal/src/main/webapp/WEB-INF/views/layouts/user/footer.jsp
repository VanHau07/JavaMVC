


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="w3l-footer">
	<div class="w3l-footer-16-main py-5">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 column">
					<div class="row">
						<div class="col-md-4 column">
							<h3>Traversal</h3>
							<ul class="footer-gd-16">
								<li><a href="http://localhost:8080/Traversal/">Trang
										chủ</a></li>
								<li><a href="http://localhost:8080/Traversal/gio-hang">Giỏ
										hàng</a></li>
								<li><a href="http://localhost:8080/Traversal/dang-ky">Đăng
										ký</a></li>
								<li><a href="http://localhost:8080/Traversal/dang-nhap">Đăng
										nhập</a></li>
								<li><a href="http://localhost:8080/Traversal/checkout">Thanh
										toán</a></li>
							</ul>
						</div>
						<div class="col-md-4 column mt-md-0 mt-4">
							<h3>Điểm đến hấp dẫn</h3>
							<ul class="footer-gd-16">
								<li><a href="#url">Paris</a></li>
								<li><a href="#url">London</a></li>
								<li><a href="#url">Bankok</a></li>
								<li><a href="about.html">Maldives</a></li>
								<li><a href="#url">Ai cập</a></li>
							</ul>
						</div>
						<div class="col-md-4 column mt-md-0 mt-4">
							<h3>Dịch vụ</h3>
							<ul class="footer-gd-16">
								<li><a href="#url">chính sách pháp lý</a></li>
								<li><a href="#url">Đội ngũ nhân viên</a></li>
								<li><a href="<c:url value="quan-tri"/>">Admin</a></li>
								<li><a href="landing-single.html">Trang dịch vụ</a></li>
								<li><a href="#url">Hướng dẫn</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 column pl-lg-5 column4 mt-lg-0 mt-5">
					<h3>Tìm kiếm tour</h3>
					<div class="end-column">
						<h4>Tìm kiếm ở đây</h4>
						<form action="search" class="subscribe" method="post">
							<input type="text" name="title" class="form-control"
								id="myEmail" placeholder="Nhập từ khóa..." />
							<button style="font-size: 12px;" type="submit" name="btnAction" >Tìm</button>
						</form>
					</div>
				</div>
			</div>
			<div
				class="d-flex below-section justify-content-between align-items-center pt-4 mt-5">
				<div class="columns text-lg-left text-center">
					<h6 style="color: green;">
						&copy; 2021 Traversal. Thiết kế bởi <a
							href="https://w3layouts.com/" target="_blank" style="color: red;">
							Nguyễn Văn Hậu</a>
					</h6>
				</div>
				<div class="columns-2 mt-lg-0 mt-3">
					<ul class="social">
						<li><a href="https://www.facebook.com/"><span
								class="fa fa-facebook" aria-hidden="true"></span></a></li>
						<li><a href="https://www.linkedin.com/signup"><span
								class="fa fa-linkedin" aria-hidden="true"></span></a></li>
						<li><a href="https://twitter.com/login?lang=vi"><span
								class="fa fa-twitter" aria-hidden="true"></span></a></li>
						<li><a href="https://accounts.google.com/"><span
								class="fa fa-google-plus" aria-hidden="true"></span></a></li>
						<li><a href="https://github.com/login"><span
								class="fa fa-github" aria-hidden="true"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fa fa-angle-up"></span>
	</button>
	
<!--//MENU-JS-->
  <script src="<c:url value='resources/user/js/jquery-3.3.1.min.js'/>"></script>
  <script src="<c:url value='resources/user/js/jquery.min.js'/>"></script>
  <script src="<c:url value='resources/user/js/modernizr-2.6.2.min.js'/>"></script>
  <script src="<c:url value='resources/user/js/jquery.zoomslider.min.js'/>"></script>
  <script src="<c:url value='resources/user/js/owl.carousel.js'/>"></script>
  <script src="<c:url value='resources/user/js/jquery.waypoints.min.js'/>"></script>
  <script src="<c:url value='resources/user/js/jquery.countup.js'/>"></script>
	<script src="<c:url value='resources/user/js/bootstrap.min.js'/>"></script>
<!-- AdminLTE for demo purposes -->
<decorator:getProperty property="page.script">
</decorator:getProperty>
</body>

</html>
