<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Trang quản trị</title>
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<!-- Bootstrap Core CSS -->
<link href="<c:url value="../resources/admin/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<c:url value="../resources/admin/css/metisMenu.min.css"/>"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="<c:url value="../resources/admin/css/timeline.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="../resources/admin/css/dataTables/dataTables.bootstrap.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="../resources/admin/css/dataTables/dataTables.responsive.css"/>"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="../resources/admin/css/startmin.css"/>"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="<c:url value="../resources/admin/css/morris.css"/>"
	rel="stylesheet">

<!-- Custom Fonts -->
<link href="<c:url value="../resources/admin/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.html">Traversal</a>
			</div>

			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<ul class="nav navbar-nav navbar-left navbar-top-links">
				<li><a href="<c:url value="admin_home"/>"><i class="fa fa-home fa-fw"></i> Trang chủ</a></li>
			</ul>

			<ul class="nav navbar-right navbar-top-links">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						Chào ${LoginInfo.getDisplay_name() } <b class="caret"></b>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i>${LoginInfo.getUsers() }</a></li>					
						</li>
						<li class="divider"></li>
						<li><a href="<c:url value="../thoat"/>"><i class="fa fa-sign-out fa-fw"></i>
								Đăng xuất</a></li>
					</ul></li>
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-primary" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="<c:url value="../admin_home"/>" class="active"><i
								class="fa fa-dashboard fa-fw"></i> Trang chủ</a></li>
								 <li>
                                <a href="<c:url value="../admin_product"/>"><i class="fa fa-wrench fa-fw"></i> Sản phẩm<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                        <li>
                                        <a href="<c:url value="../admin_product"/>">Trang tour</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value="../admin_add_products"/>">Thêm tour mới</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>								
							     <li>
                                <a href="<c:url value="../admin_blog"/>"><i class="fa fa-files-o fa-fw"></i> Bài viết<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>
                                        <a href="<c:url value="../admin_blog"/>">Trang bài viết</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value="../admin_add_blog"/>">Thêm bài viết</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                              <li>
                                <a href="<c:url value="../bill_admin"/>"><i class="fa fa-sitemap fa-fw"></i> Đơn hàng<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="<c:url value="../admin_bill"/>">Trang hóa đơn</a>
                                    </li>                               
                                   </ul>
                                <!-- /.nav-second-level -->
                            </li>
                          	
					</ul>
				</div>
			</div>
		</nav>