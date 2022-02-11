<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<section class="search_user ">
	<div class="container">
		<div class="flex-wrap search-wthree-field mt-md-5 mt-4">
		<!-- 	<marquee direction="left" style="color: white; padding-top: 30px;font-size: 20px;"> TÌM KIẾM TOUR BẰNG TỪ KHÓA TẠI ĐÂY. MỜI BẠN CLICK VÀO NÚT BÊN DƯỚI VÀ NHẬP TỪ KHÓA...</marquee>
		 -->	<div class="row book-form pt-5">
				<div class="col-lg-4"></div>
				<div class="col-lg-4 end-column">
					<form action="search" method="post">
						<div class="search-wrapper">
							<div class="input-holder">
								<input type="text" class="search-input" name="title"
									placeholder="Nhập để tìm kiếm" />
								<button class="search-icon" type="submit"
									onclick="searchToggle(this, event);">
									<span></span>
								</button>
							</div>
							<span class="close" onclick="searchToggle(this, event);"></span>
							<div class="result-container"></div>
						</div>
					</form>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</div>
</section>

<script>
	function searchToggle(obj, evt) {
		var container = $(obj).closest('.search-wrapper');

		if (!container.hasClass('active')) {
			container.addClass('active');
			evt.preventDefault();
		} else if (container.hasClass('active')
				&& $(obj).closest('.input-holder').length == 0) {
			container.removeClass('active');
			// clear input
			container.find('.search-input').val('');
			// clear and hide result container when we press close
			container.find('.result-container').fadeOut(100, function() {
				$(this).empty();
			});
		}
	}

	function submitFn(obj, evt) {
		value = $(obj).find('.search-input').val().trim();

		_html = "Searching for: ";
		if (!value.length) {
			_html = "Ehem, I can't search nothing";
		} else {
			_html += "<b>" + value + "</b>";
		}

		$(obj).find('.result-container').html('<span>' + _html + '</span>');
		$(obj).find('.result-container').fadeIn(100);

		evt.preventDefault();
	}
</script>
