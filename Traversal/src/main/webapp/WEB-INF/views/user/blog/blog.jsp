<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- team -->
<section class="w3l-about-breadcrumb text-left">
	<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
		<div class="container">
			<h2 class="title">Bài viết</h2>
			<ul class="breadcrumbs-custom-path mt-2">
				<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Bài viết</li>
			</ul>
		</div>
	</div>
</section>
<!-- //about breadcrumb -->
<!--  Work gallery section -->
<section class="w3l-grids1">
  <div class="hny-three-grids py-5">
    <div class="container py-lg-5">
      <div class="row">
      	<c:forEach var="item" items="${blog}">
    	 <div class="col-md-4 col-sm-6 mt-md-0 mt-5 grids5-info" style="text-align: center;">
          <a href="<c:url value="bai-viet/${item.getId() }"/>"><img src="resources/user/images/${item.getImages()}" class="img-fluid" alt=""></a>
          <h5>${item.getTitle()}</h5>
          <h4><a href="#url">${item.getDescription()}</a></h4>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>
</section>