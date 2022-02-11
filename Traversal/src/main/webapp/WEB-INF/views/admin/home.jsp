<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title default="Trang quản trị"/></title>
           <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header" style="text-align: center;">TRANG QUẢN TRỊ </h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-comments fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${ product_admin.size() }</div>
                                            <div>số lượng</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<c:url value="admin_product"/>">
                                    <div class="panel-footer">
                                        <span class="pull-left">Tour</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-tasks fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${ blog_admin.size() }</div>
                                            <div>Số lượng</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<c:url value="admin_blog"/>">
                                    <div class="panel-footer">
                                        <span class="pull-left">BÀI VIẾT</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="panel panel-yellow">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-shopping-cart fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">${ bill_admin.size() }</div>
                                            <div>Số lượng</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="<c:url value="admin_bill"/>">
                                    <div class="panel-footer">
                                        <span class="pull-left">ĐƠN HÀNG</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        </div>
                  
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

   