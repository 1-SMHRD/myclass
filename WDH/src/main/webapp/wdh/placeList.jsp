<%@page import="kr.wdh.dao.PlaceVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Electro - HTML Ecommerce Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="${cpath}/wdh/css/bootstrap.min.css" />


<!-- Slick -->
<link type="text/css" rel="stylesheet" href="${cpath}/wdh/css/slick.css" />
<link type="text/css" rel="stylesheet"
	href="${cpath}/wdh/css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="${cpath}/wdh/css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="${cpath}/wdh/css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="${cpath}/wdh/css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<style>
 .product{
 	float: left;
 }
</style>
</head>
<body>

	<div class="col-md-4 col-xs-6" style="float: left;">

			<div class=pdrow>
		<c:forEach var="vo" begin="0" end="12" step="3" items="${place_list}">



				<div class="product" style="width: 100px; height: 120px">
					<img src="${vo.place_img1}" style="width: 100%; height: 100%"
						onerror="this.onerror= null; this.src='${cpath}/wdh/img/loding.gif';">

					<div class="product-body">
						<p class="place_no" id="place_no" style="display: none">${vo.place_no}</p>


						<div class="product-rating">


							<fmt:formatNumber value="${vo.place_rating_avg}" type="number"
								var="ratnum" />
							<c:forEach var="i" begin="1" end="${ratnum}" step="1">
								<i class="fa fa-star"></i>
							</c:forEach>
						</div>
						<div class="product-btns">
							<h3 class="product-name">
								<a href="${cpath}/placedetail.do?place_no=${vo.place_no}">
									${vo.place_name}</a>
							</h3>
							<p class="product-category">${vo.place_addr_1}
								${vo.place_addr_2} ${vo.place_addr_3}</p>

						</div>
					</div>
				</div>

		</c:forEach>
			</div>

	</div>







	<!-- jQuery Plugins -->
	<script src="${cpath}/wdh/js/jquery.min.js"></script>
	<script src="${cpath}/wdh/js/bootstrap.min.js"></script>
	<script src="${cpath}/wdh/js/slick.min.js"></script>
	<script src="${cpath}/wdh/js/nouislider.min.js"></script>
	<script src="${cpath}/wdh/js/jquery.zoom.min.js"></script>
	<script src="${cpath}/wdh/js/main.js"></script>
</body>
</html>
