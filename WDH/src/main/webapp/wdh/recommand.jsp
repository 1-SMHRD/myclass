<%@page import="kr.wdh.dao.PlaceVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
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
<link type="text/css" rel="stylesheet"
	href="${cpath}/css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="${cpath}/css/slick.css" />
<link type="text/css" rel="stylesheet"
	href="${cpath}/css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="${cpath}/css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="${cpath}/css/font-awesome.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="${cpath}/css/style.css" />



<!-- recommand algo  ajax 연동  -->
                            <script type="text/javascript">

                          	function getRecommand(){
                          		var frmData=$("#frm").serialize();
                          		$.ajax({
                          			url : "${cpath}/recommandAlgo.do",
                          			type : "post",
                          			data : "json",
                          			success : function(rec_place_list){
                          				alert(rec_place_list);
                          				
                          				location.href = "${cpath}/recommand.do";
                          			},
                          			error : function(){ alert("error!! 불편을 겪게해드려 죄송합니다.");}
                          		});
                          	}


                            </script>

<% List<PlaceVO> list = (List<PlaceVO>)request.getAttribute("rec_place_list"); %>


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
							<a href="${cpath}/main.do" class="logo"> <img
								src="${cpath}/img/logo_han.png" width="169" alt="" />
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
					<ul class="main-nav nav navbar-nav">
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
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- 전체 아웃트라인 -->
				<div class="col-md-12 order-details">
					<c:if test="${!empty mvo}">
						<%-- <form id = "frm" action="${cpath}/recommandAlgo.do"> --%>
							<button type="submit" <%-- value="${mvo.mem_no}" --%>
								class="bt btn-sm- btn-primary" onclick="getRecommand()">여행지 추천 받기</button>
						<!-- </form> -->
						<!-- container -->
						<div class="container">


							<!-- 지도 -->
							<div class="shiping-details float"
								style="width: 100%; margin: 0px;">
								<div class="section-title  text-center">
									<h3 class="title">카카오 지도</h3>
								</div>
								   <div class="map_wrap"
                                                                style="position:relative;overflow:hidden;width:100%;height:350px;">
                                                                <div id="map"
                                                                    style="width:100%;height:100%;position:relative;overflow:hidden;">
                                                                </div>
                                                                <!-- 지도타입 컨트롤 div 입니다 -->
                                                                <div class="custom_typecontrol radius_border" style="">
                                                                    <span id="btnRoadmap" class="selected_btn"
                                                                        onclick="setMapType('roadmap')"
                                                                        style="display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;">지도</span>
                                                                    <span id="btnSkyview" class="btn"
                                                                        onclick="setMapType('skyview')"
                                                                        style="display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;">스카이뷰</span>
                                                                </div>
                                                                <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
                                                            </div>
							</div>

							<!-- /지도 -->

							<div class="구분하기" style="margin-top: 100px"></div>

							<div class="구분하기" style="margin-top: 100px"></div>

							<!-- 세부일정2(숙소/여행지 정보) -->
							<div class="shiping-details">
								<div class="section-title  text-center">
									<h3 class="title">상품세부정보</h3>
								</div>
								
								
								
							<c:forEach var='rec_place_list' items="${rec_place_list}">
								
								<div class="form-group col-md-12 order-details"
									style="margin-bottom: 30px;">
									<div class="상품사진"
										style="position: absolute; width: 33%; height: 90%;">
										<img src="${rec_place_list.place_img1}" style="width: 100%; height: 100%;" onerror="this.onerror= null; this.src='${cpath}/img/loding.gif';"/></div>
									<div class="상품이름" style="margin-left: 40%;">
										<strong>${rec_place_list.place_name}</strong>
									</div>
									<%-- <div class="product-rating">
													<c:forEach begin="1" end="5" step="1" var="i">
														<c:choose>
															<c:when test="${i<=rec_place_list.placeratingavg}">
																<i class="fa fa-star"></i>
															</c:when>
															<c:otherwise>
																<i class="fa fa-star-o"></i>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</div> --%>
												
									<div class="상품개요" style="margin-left: 40%;">${rec_place_list.overview}</div>
								</div>

							</c:forEach>


							</div>
							<!-- 숙소정보, 여행정보 템플릿 사용 -->
							<!-- /세부일정2(숙소/여행지 정보) -->


							<div class="구분하기" style="margin-top: 100px"></div>


							<div class="text-center"></div>





						</div>
					</c:if>
					<c:if test="${empty mvo}">
						<p>로그인 해주세요</p>
					</c:if>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

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
	<!-- 	<script type="text/javascript">
    function gorecom(memNo){
    	var memNo = ${mvo.mem_no}.text();
    	// alert(frmData);
    	$.ajax({
    		url : "$127.0.0.1:3300/json",
    		type : "post",
    		data : ${'#memId'}.val()
    		success : function(res){
    			recommend_no = res;
    		},
    		error : function(){alert("error~!");}
    	});
    }
    </script> -->
    
    
                           <script type="text/javascript"
                                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11c7ad799dbc427a7b2435f3fe4f6d82&libraries=services,clusterer,drawing"></script>
                            <script>
                                var container = document.getElementById('map'); /* //지도를 담을 영역의 DOM 레퍼런스 */
                                var options = { //지도를 생성할 때 필요한 기본 옵션
                                    center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
                                    level: 3 //지도의 레벨(확대, 축소 정도)
                                };
                                var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

                                //마커가 표시될 위치입니다 
                                var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

                                // 마커를 생성합니다
                                var marker = new kakao.maps.Marker({
                                    position: markerPosition
                                });

                                // 마커가 지도 위에 표시되도록 설정합니다
                                marker.setMap(map);

                                //지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
                                function setMapType(maptype) {
                                    var roadmapControl = document.getElementById('btnRoadmap');
                                    var skyviewControl = document.getElementById('btnSkyview');
                                    if (maptype === 'roadmap') {
                                        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
                                        roadmapControl.className = 'selected_btn';
                                        skyviewControl.className = 'btn';
                                    } else {
                                        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
                                        skyviewControl.className = 'selected_btn';
                                        roadmapControl.className = 'btn';
                                    }
                                }


                            </script>
</body>
</html>