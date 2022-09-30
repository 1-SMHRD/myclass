<%@page import="kr.wdh.dao.PlaceVO" %>
    <%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <meta charset="utf-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1">
                        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                        <title>What are you Doing Here?</title>

                        <!-- Google font -->
                        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

                        <!-- Bootstrap -->
                        <link type="text/css" rel="stylesheet" href="${cpath}/css/bootstrap.min.css" />


                        <!-- Slick -->
                        <link type="text/css" rel="stylesheet" href="${cpath}/css/slick.css" />
                        <link type="text/css" rel="stylesheet" href="${cpath}/css/slick-theme.css" />

                        <!-- nouislider -->
                        <link type="text/css" rel="stylesheet" href="$${cpath}/css/nouislider.min.css" />

                        <!-- Font Awesome Icon -->
                        <link rel="stylesheet" href="${cpath}/css/font-awesome.min.css">

                        <!-- Custom stlylesheet -->
                        <link type="text/css" rel="stylesheet" href="${cpath}/css/style.css" />

                        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
                        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                        <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
                        <style>
                            .product {
                                float: left;
                            }
                        </style>
                    </head>

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
							<a href="${cpath}/main.do" class="logo"> <img src="${cpath}/img/logo_han.png"
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
									<a href="${cpath}/loginpage.do"> <i class="fa fa-sign-in"></i>
										<span>로그인</span>
									</a>
								</div>
								<!-- /Login -->

								<!-- Sign Up -->
								<div>
									<a href="${cpath}/loginpage.do"> <i class="fa fa-user-plus"></i>
										<span>회원가입</span>
									</a>
								</div>
								<!-- /Sign Up -->
							</c:if>
							<c:if test="${!empty mvo}">
								<!-- My Page -->
								<div>
									<a href="${cpath}/mypageform.do"> <i class="fa fa-user"></i><span>마이페이지</span>
									</a>
								</div>
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
					<ul class="main-nav nav navbar-nav"">
						<li><a href="${cpath}/recommand.do">추천</a></li>
						<li><a href="${cpath}/place.do">여행</a></li>
						<li><a href="${cpath}/place.do">숙소</a></li>
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
	
	
	
	
	






	<!-- SECTION -->
	<div class="section" style="display:flex;justify-content: center; ">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">


                    
                        
			

                        <%--     <c:forEach var="vo" items="${place_list}" varStatus="i">
                            
								<td>
                                <div class="product details" style="margin-right: 20px;width: 150px; height: 180px; margin-bottom: 180px">
                                    <img src="${vo.place_img1}" style="width: 100%; height: 100%"
                                        onerror="this.onerror= null; this.src='${cpath}/wdh/img/loding.gif';">

                                    <div class="product-body">
                                        <p class="place_no" id="place_no" style="display: none">${vo.place_no}</p>


                                        <div class="product-rating">

                                            <fmt:formatNumber value="${vo.placeratingavg}" type="number"
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
                           			</td>
                                <c:set var="j" value="${i.current}" />
                                <c:if test="${j!=0 &&(j%3 == 0) }">
                
                                
                             
                                
                        	</c:forEach> --%>
			
			
			<div class="products-tabs" style="position: relative;margin: auto;justify-content: center;">
			   <c:forEach var="vo" items="${place_list}">
                <div class="product" style=" margin-right: 20px; margin-right: 10px;">
                    <div class="product-img">
                        <img src="${vo.place_img1 }" alt="" onerror="this.onerror= null; this.src='${cpath}img/loding.gif';" style="width: 240px; height: 180px"/>
                    </div>
                    <div class="product-body">
                        <h3 class="product-name">
                            <a href="${cpath}/placedetail.do?place_no=${vo.place_no}">${vo.place_name}</a>
                        </h3>
                        <h3 class="product-addr">
                            <a href="${cpath}/placedetail.do?place_no=${vo.place_no}">${vo.place_addr_1} ${vo.place_addr_2} </a>
                        </h3>
                        <div class="product-rating">
                            <c:forEach begin="1" end="5" step="1" var="i">
                                <c:choose>
                                    <c:when test="${i<=vo.placeratingavg}">
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

</div>
</div>
</div>




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
								<li><a href="#">Help</a></li>
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
                        <script src="${cpath}/js/jquery.min.js"></script>
                        <script src="${cpath}/js/bootstrap.min.js"></script>
                        <script src="${cpath}/js/slick.min.js"></script>
                        <script src="${cpath}/js/nouislider.min.js"></script>
                        <script src="${cpath}/js/jquery.zoom.min.js"></script>
                        <script src="${cpath}/js/main.js"></script>
                    </body>

                    </html>
