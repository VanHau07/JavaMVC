<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<decorator:title default="Trang chủ"></decorator:title>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->

<body>
  <!-- main-slider -->
		<jsp:include page="../user/w3l-main-slider.jsp"></jsp:include>
  <!-- /main-slider -->
  <!-- //banner-slider-->
  <!--/search--> 
  	<jsp:include page="../user/search_user.jsp"></jsp:include>
 <!--//search-->
  <!--/grids--> 
  	<jsp:include page="../user/w3l-grids-3.jsp"></jsp:include>
 <!--//grids-->
  <!-- stats -->
	<jsp:include page="../user/w3l-stats.jsp"></jsp:include>
  <!-- //stats -->
  <!--/-->
  <jsp:include page="../user/best_room.jsp"></jsp:include>

  <!-- //stats -->
  <!-- testimonials -->
    <jsp:include page="../user/w3l-clients.jsp"></jsp:include>
  <!-- //testimonials -->

  <!--/w3l-footer-29-main-->
  
  