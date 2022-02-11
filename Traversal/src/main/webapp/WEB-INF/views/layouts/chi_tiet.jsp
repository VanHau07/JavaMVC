<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<title><decorator:title default="Trang chủ"/></title>
  <!--header-->
  <%@include file="/WEB-INF/views/layouts/chi-tiet/header.jsp"%>
 <!-- //header -->
<body>

 <!-- //body -->
	<decorator:body />
	
	 <!-- //body -->

      <!-- footer -->
    <%@include file="/WEB-INF/views/layouts/chi-tiet/footer.jsp"%>
    <!-- //footer -->
 