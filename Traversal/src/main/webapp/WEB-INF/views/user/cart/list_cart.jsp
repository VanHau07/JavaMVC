<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<link href='https://css.gg/select-r.css' rel='stylesheet'>
<link href='https://css.gg/close.css' rel='stylesheet'>
<title>Giỏ hàng</title>
<!-- about breadcrumb -->
<section class="w3l-about-breadcrumb text-left">
	<div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
		<div class="container">
			<h2 class="title">Giỏ hàng</h2>
			<ul class="breadcrumbs-custom-path mt-2">
				<li><a href="http://localhost:8080/Traversal/">Trang chủ</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Giỏ hàng</li>
			</ul>
		</div>
	</div>
</section>


<!-- //Giỏ hàng-->
<!-- //Giỏ hàng-->
<section class="Cart sda">
	<div class="detail py-5">
		<div class="container">
			<table class="table table-bordered table-hover" border="1"">
				<h2 style="text-align: center; margin-bottom: 15px;">BẢNG GIÁ
					TOUR CHI TIẾT</h2>
				<tr>
					<th>Loại giá/Độ tuổi</th>
					<th>Người lớn(Trên 11 tuổi)</th>
					<th>Trẻ em(5 - 11 tuổi)</th>
					<th>Trẻ nhỏ(2 - 5 tuổi)</th>
					<th>Sơ sinh( &lt; 2 tuổi)</th>
				</tr>
				<tr style="display: none;">
					<td></td>
				</tr>
				<tr>
					<td><span>Giá</span></td>
					<td><span class="mda-money">8,399,000</span> đ</td>
					<td><span class="mda-money">5,700,000</span> đ</td>
					<td><span class="mda-money">2,400,000</span> đ</td>
					<td><span class="mda-money">300,000</span> đ</td>
				</tr>
				<tr>
					<td><span>Phụ thu Nước Ngoài</span></td>
					<td><span class="mda-money"> 0</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
				</tr>
				<tr>
					<td><span><b>Phụ thu Phòng đơn</b></span></td>
					<td colspan="4" style="text-align: center;"><span
						class="mda-money">0</span> đ</td>
				</tr>
				<tr style="display: none">
					<td><span>Giảm giá</span></td>
					<td><span class="mda-money">200,000</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
					<td><span class="mda-money">0</span> đ</td>
				</tr>
			</table>
		</div>
	</div>
</section>
<!-- //Giỏ hàng-->

<!-- //Giỏ hàng-->
<!-- //about breadcrumb -->
<section class="Cart_1">
	<div class="detail py-5">
		<div class="container">
			<table class="table table-bordered table-condensed" border="1"">
				<h2 style="text-align: center; margin-bottom: 15px;">GIỎ HÀNG</h2>
				<thead>
					<tr>
						<th>Hình ảnh</th>
						<th>Mô tả</th>
						<th>Giá bán</th>
						<th>Số lượng</th>
						<th>Người lớn</th>
						<th>Số trẻ em</th>
						<th>Số trẻ nhỏ</th>
						<th>Số tre sơ sinh</th>
						<th>Cập nhật</th>
						<th>Xóa</th>
						<th>Tổng</th>
					</tr>

				</thead>

				<tbody>

					<c:forEach var="item" items="${ Cart }">
						<tr>
							<td><img width="100"
								src="<c:url value="/resources/user/images/${ item.value.product.image }"/>"
								alt=""></td>
							<td>${ item.value.product.title }</td>
							<td><fmt:formatNumber type="number" groupingUsed="true"
									value="${ TotalPriceCart }" /> ₫</td>
							<td><input type="number" min="0" max="1000" class="span1"
								style="border-radius: 16px; height: 40px; width: 50px;"
								placeholder="1" id="quantity-cart-${ item.key }" size="c"
								type="text" value="${ item.value.quantity }"></td>
							<!-- người lớn -->
							<td><input type="number" min="0" max="1000" class="span1"
								style="border-radius: 16px; height: 40px; width: 50px;"
								placeholder="1" id="quantity-adult-cart-${ item.key }" size="20"
								type="text" value="${ item.value.quantity_adult }"></td>
							<!-- tre em -->
							<td><input type="number" min="0" max="1000" class="span1"
								style="border-radius: 16px; height: 40px; width: 50px;"
								placeholder="1" id="quantity-children-cart-${ item.key }"
								size="20" type="text" value="${ item.value.quantity_children }"></td>
							<!-- tre nho -->
							<td><input type="number" min="0" max="1000" class="span1"
								style="border-radius: 16px; height: 40px; width: 50px;"
								placeholder="1" id="quantity-child-cart-${ item.key }" size="20"
								type="text" value="${ item.value.quantity_child }"></td>
							<!-- so sinh -->
							<td><input type="number" min="0" max="1000" class="span1"
								style="border-radius: 16px; height: 40px; width: 50px;"
								placeholder="1" id="quantity-infant-cart-${ item.key }"
								size="20" type="text" value="${ item.value.quantity_infant }"></td>
							<!--  -->
							<td>
								<button data-id="${ item.key }"
									class="btn btn-warning edit-cart" type="button">
									<i class="gg-select-r"></i>
								</button>
							</td>
							<td><a href="<c:url value="/DeleteCart/${ item.key }"/>"
								class="btn btn-danger" type="button"><i class="gg-close"></i>
							</a></td>
							<td><fmt:formatNumber type="number" groupingUsed="true"
									value="${ item.value.totalPrice }" /> ₫</td>
						</tr>
					</c:forEach>
					<tr style="text-align: right;">
						<td colspan="7">
							<h6>TỔNG CỘNG TIỀN THANH TOÁN</h6>
						</td>
						<td colspan="7"><c:if test="${empty TotalPriceCart}">
								<span><fmt:formatNumber value="0" type="number"
										maxIntegerDigits="14" />(VNĐ)</span>
							</c:if> <c:if test="${not empty TotalPriceCart}">
								<span><fmt:formatNumber value="${TotalPriceCart }"
										type="number" maxIntegerDigits="14" />(VNĐ)</span>
							</c:if></td>
					</tr>
					<tr style="text-align: center;">
						<td colspan="5"><a href="<c:url value="/trang-chu"/>"><button
									class="btn btn-success">Đặt tiếp</button></a></td>
						<td colspan="5"><a href="<c:url value="checkout/${ item.id }"/>"><button
									class="btn btn-info">Thanh toán</button></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<!-- //Giỏ hàng-->

<!-- //Giỏ hàng_demo-->


<content tag="script"> <script>
	$(".edit-cart").on(
			"click",
			function() {
				var id = $(this).data("id");
				var quantity = $("#quantity-cart-" + id).val();
				var quantity_adult = $("#quantity-adult-cart-" + id).val();
				var quantity_children = $("#quantity-children-cart-" + id)
						.val();
				var quantity_child = $("#quantity-child-cart-" + id).val();
				var quantity_infant = $("#quantity-infant-cart-" + id).val();
				window.location = "EditCart/" + id + "/" + quantity + "/" + "/"
						+ quantity_adult + "/" + quantity_children + "/"
						+ quantity_child + "/" + quantity_infant;
			});
</script> </content>

