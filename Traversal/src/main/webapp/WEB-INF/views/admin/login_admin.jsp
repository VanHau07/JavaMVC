<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zxx">
<body>
	<section class="w3l-about-breadcrumb text-left">
		<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
			<div class="container">
				<h2 class="title">Đăng Nhập Admin</h2>
				
				<ul class="breadcrumbs-custom-path mt-2">
					<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
					<li class="active"><span class="fa fa-arrow-right mx-2"
						aria-hidden="true"></span> Đăng nhập</li>
				</ul>
			</div>
		</div>
	</section>
	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile form1">
				<h4 style="text-align: center;color: green;">ĐĂNG NHẬP ADMIN</h4>
				<form:form action="quan-tri" method="POST" modelAttribute="user">
					
					<h6 class=""style="text-align:center;color: red;">${statusLogin }</h6>
					<br/>			
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<form:input path="users" type="text" value="Nhập Email"
							onfocus="this.value = '';" required="true"
							onblur="if (this.value == '') {this.value = 'Username';}"
							/>
						<div class="clearfix"></div>
					</div>
					
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i>
						<form:input type="password" path="password" value="Password"
							name="Password" onfocus="this.value = '';" required="true"
							onblur="if (this.value == '') {this.value = 'Password';}"
							 />
						<div class="clearfix"></div>
					</div>				
					<input type="submit" value="Submit">
				</form:form>
			</div>

		</div>
	</div>

</body>

</html>