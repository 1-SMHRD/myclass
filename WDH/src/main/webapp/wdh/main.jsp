<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>What are you Doing Here?</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet" />

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="../css/slick.css" />
<link type="text/css" rel="stylesheet" href="../css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="../css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="../css/font-awesome.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="../css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- HEADER -->
	<header data-spy="affix" data-offset-top="10">
		<!-- TOP HEADER
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
						<li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
						<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
					</ul>
				</div>
			</div>
			/TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="#" class="logo"> <img src="../img/logo_han.png"
								width="169" alt="" />
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>
								<!-- <select class="input-select">
										<option value="0">All Categories</option>
										<option value="1">Category 01</option>
										<option value="1">Category 02</option>
									</select> -->
								<!-- <input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="Your Email" style="height: 58px;">
										<button type="button" class="btn btn-primary rounded-pill py-2 px-3 shadow-none position-absolute top-0 end-0 m-2">Free Trail</button> -->
								<input class="input" placeholder="Search here" />
								<button class="search-btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<c:if test="${empty mvo}">
								<!-- Login -->
								<div>
									<a href="${cpath}/login.do"> <i class="fa fa-sign-in"></i>
										<span>로그인</span>
									</a>
								</div>
								<!-- /Login -->

								<!-- Sign Up -->
								<div>
									<a href="${cpath}/signup.do"> <i class="fa fa-user-plus"></i>
										<span>회원가입</span>
									</a>
								</div>
								<!-- /Sign Up -->
							</c:if>
							<c:if test="${!empty mvo}">
								<!-- My Page -->
								<div>
									<a href="${cpath}/mypage.do"> <i class="fa fa-user"></i><span>마이페이지</span>
									</a>
								</div>
								<div><label>${mvo.memName}님 환영합니다.</label></div>
								<!-- /My Page -->

								<!-- Logout -->
								<div>
									<a href="${cpath}/logout.do"> <i class="fa fa-sign-out"></i>
										<span>로그아웃</span>
									</a>
								</div>
							</c:if>
							<!-- Logout -->

							<!-- Menu Toogle -->
							<div class="menu-toggle">
								<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
								</a>
							</div>
							<!-- /Menu Toogle -->
						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li><a href="${cpath}/recommand.do">추천</a></li>
						<li><a href="${cpath}/place.do">여행</a></li>
						<li><a href="${cpathe}/place.do">숙소</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
	</header>
	<!-- /HEADER -->

	<!-- MAIN -->
	<!-- main image -->
	<div class="container_mi">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<c:forEach var="bl" items="${banner_list}">
					<div class="item active">
						<div class="img-write">
							<h1 class="content">${bl.text}}</h1>
						</div>
						<img src="${cpath}/img/${bl.imgAddr}"
							style="width: 100%; height: auto" />
					</div>
				</c:forEach>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a><a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">인기여행지</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">
									<!-- product -->
									<c:forEach var="vo" items="${listPlace}">
										<div class="product">
											<div class="product-img">
												<img src="${cpath}/img/${pl.imgAddr}" alt="" />
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">${bl.title}</a>
												</h3>
												<div class="product-rating">
													<c:forEach begin="1" end="5" step="1" var="i">
														<c:choose>
															<c:when test="${i<=bl.rating}">
																<i class="fa fa-star"></i>
															</c:when>
															<c:otherwise>
																<i class="fa fa-star-o"></i>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist">
														<i class="fa fa-heart-o"></i><span class="tooltipp">add
															to wishlist</span>
													</button>
												</div>
											</div>
										</div>
									</c:forEach>
									<!-- /product -->

								</div>
								<div id="slick-nav-1" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">인기 숙소</h3>
					</div>
				</div>
				<!-- /section title -->

				<!-- Products tab & slick -->
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<!-- tab -->
							<div id="tab2" class="tab-pane fade in active">
								<div class="products-slick" data-nav="#slick-nav-2">
									<!-- product -->
									<div class="product">
										<div class="product-img">
											<img src="${cpath}/img/${sl.imgAddr}" alt="" />
										</div>
										<div class="product-body">
											<p class="product-category">Category</p>
											<h3 class="product-name">
												<a href="#">${sl.title}</a>
											</h3>
											<h4 class="product-price">
												$980.00
												<del class="product-old-price">$990.00</del>
											</h4>
											<div class="product-rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="product-btns">
												<button class="add-to-wishlist">
													<i class="fa fa-heart-o"></i><span class="tooltipp">add
														to wishlist</span>
												</button>
											</div>
										</div>
									</div>
									<!-- /product -->

								</div>
								<div id="slick-nav-2" class="products-slick-nav"></div>
							</div>
							<!-- /tab -->
						</div>
					</div>
				</div>
				<!-- /Products tab & slick -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<!-- /MAIN -->

	<!-- FOOTER -->
	<footer id="footer">
		<!-- top footer -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="clearfix visible-xs"></div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Information</h3>
							<ul class="footer-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Service</h3>
							<ul class="footer-links">
								<li><a href="#">My Account</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
					</div>
					
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">고객센터</h3>
							<ul class="footer-links">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">자주하는 질문</a></li>
								<li><a href="#">문의하기</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /top footer -->
		<div id="bottom-footer" class="section">
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12 text-center">
						<span class="copyright"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright ©2022 All rights reserved | This template is made with
							by Team <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</span>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/slick.min.js"></script>
	<script src="../js/nouislider.min.js"></script>
	<script src="../js/jquery.zoom.min.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>