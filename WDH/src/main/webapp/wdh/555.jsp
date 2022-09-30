<%@page import="kr.wdh.dao.PlaceReviewVO"%>
<%@page import="kr.wdh.dao.PlaceVO"%>

<!-- 여긴 문제 없음 -->
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 특수문자를 ''로 해준다!  -->
<c:set var="newLine" value="<%='\n'%>" />
<!DOCTYPE html>
<html lang="en">

<head>
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Electro - HTML Ecommerce Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

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
#infomation {
	font-size: 20px;
	width: auto;
	list-style-position: inside;
}

/* 
td{
border: 1px solid black;
} */
#table {
	width: 600px;
	height: 500px;
	margin-bottom: 10px
}

tr {
	font-size: 25px;
}
</style>
</head>

<body>



	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- Product main img -->
				<div class="col-md-5">
					<div id="product-main-img">
						<img src="${Place_mvo.place_img1}" alt=""
							style="width: 100%; height: 100%">
					</div>
				</div>
				<!-- /Product main img -->

				<!-- Product details -->
				<div class="col-md-5">
					<div class="product-details">
						<ul class="product-btns">
							<li>
								<h1 class="product-name">1 ${Place_mvo.place_name}</h1>
							</li>
						</ul>

						<div class="overview">
							<!-- mvo 가 아닌 Place_mvo.place_overview를 써야함 -->
							${Place_mvo.place_overview}
							<!--개요내용 들어가야함  -->
						</div>



					</div>
				</div>

				<!-- /Product details -->

				<!-- Product tab -->
				<div class="col-md-12">
					<div id="product-tab">
						<!-- product tab nav -->
						<ul class="tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">여행지정보</a></li>
							<li><a data-toggle="tab" href="#tab2">지도</a></li>
							<li><a data-toggle="tab" href="#tab3">리뷰(내용)</a></li>
						</ul>
						<!-- /product tab nav -->

						<!-- product tab content -->
						<div class="tab-content">
							<!-- tab1  -->
							<div id="tab1" class="tab-pane fade in active">

								<!-- <div class="col-md-3"> -->
								<div id="product-main-img"></div>


								<!-- 데이터 가져올 부분  -->
								<div class="info"></div>
								<div id="infomation">${Place_mvo.otherinformation}</div>



								<!-- tab2 -->
								<!-- 지도api로 데이터 가져올 부분(위도,경도를 매개변수로)  -->
								<div id="tab2" class="shiping-details float"
									style="margin: 0px;">
									<div class="section-title  text-center">
										<h3 class="title">네이버 지도</h3>
									</div>
									<div class="form-group" style="height: 400px">
										<div id="map" style="width: 100%; height: 100%;"></div>

									</div>
								</div>


							</div>
							<!-- </div> -->
							<!-- 임시 중복된 부분-->


							<!-- 	<div id="reviews"> -->
							<%-- 				<div>
								<ul>
								<!-- 정렬때문에 필요한 부분 	<ul class="reviews"> -->
								<!-- 리뷰 포문 돌립시다 -->
								<c:forEach var="rvo" items="${PlaceReview}" begin="0" end="3"
									step="1">
									<li>
										<div class="review-heading">

											<h5 class="name">${rvo.mem_no}</h5>
											<p class="date">${rvo.place_review_date}</p>
											<div class="review-rating">${rvo.place_rating}</div>
										</div>
										<div class="review-body">
											<p>${rvo.place_review_title}</p>
											<p>${rvo.place_review_content}</p>
										</div>
									</li>
								</c:forEach>

								</ul>
							</div>
						</div>
					</div> --%>


							<!-- 	<div class="section-title  text-center"> -->
							<!-- 	<h3 class="title">공간확인 1</h3> -->

						</div>
						<!-- 임시 -->
						<!-- 		<div class="section-title  text-center"></div>
				<h3 class="title">공간구분하기</h3> -->
					</div>
					<!--공간구분 필요  -->
					<!-- /tab2 -->

					<!-- tab3  -->
					<%-- 					<div id="tab3" class="tab-pane fade in">
						<div class="tab-content">
							<!-- <div class="row"> -->
							<!-- Rating -->
							<div class="col-md-3">
								<div id="rating">
									<div class="rating-avg">

										<span> ${Place_mvo.placeratingavg}점</span>
										<!--별찍기 로직부분  반복문으로 자리 만들어놓기!!!-->
										<div class="rating-stars">
											<c:forEach begin="1" end="5" step="1" var="i">
												<c:choose>
													<c:when test="${i<=Place_mvo.placeratingavg}">
														<i class="fa fa-star"></i>
													</c:when>
													<c:otherwise>
														<i class="fa fa-star-o"></i>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>

									</div>
								</div>
							</div>
							<!-- /Rating -->
							<!--  Review Form -->
							<div class="col-md-3">
								<div id="review-form">
									<form id="pfrm" action="${cpath}/reviewWrite.do"
										class="review-form">
										<span>유저 아이디</span> class="input" type="text" name="memId"
										value="mem_id"> <input class="input" type="text"
											name="place_review_title" value="pv_date">

										<textarea class="input" name="place_review_title"></textarea>

										<div class="input-rating">
											<span>Your Rating: </span>
											<div class="stars">
												<input id="star5" name="rating" value="5" type="radio">
												<label for="star5"></label> <input id="star4" name="rating"
													value="4" type="radio"> <label for="star4"></label>
												<input id="star3" name="rating" value="3" type="radio">
												<label for="star3"></label> <input id="star2" name="rating"
													value="2" type="radio"> <label for="star2"></label>
												<input id="star1" name="rating" value="1" type="radio">
												<label for="star1"></label>
											</div>
										</div>
										<button class="primary-btn" onclick="PlacereviewInsert()">저장</button>
									</form>
								</div>
							</div>
							<!-- /ReviewFrom -->>
						</div>
					</div> --%>

					<!-- tab3 -->
					<div id="tab3" class="tab-pane fade in">
						<div class="row">
							<!-- Rating -->
							<div class="col-md-3">
								<div id="rating">
									<div class="rating-avg">
										<span>${Place_mvo.placeratingavg}</span>
										<div class="rating-stars">
											<c:forEach begin="1" end="5" step="1" var="i">
												<c:choose>
													<c:when test="${i<=Place_mvo.placeratingavg}">
														<i class="fa fa-star"></i>
													</c:when>
													<c:otherwise>
														<i class="fa fa-star-o"></i>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<!-- /Rating -->

							<!-- Reviews -->
							<div class="col-md-6">
								<div id="reviews">
								
								<c:forEach var="rvo" items="${PlaceReview}" begin="0" end="3" step="1">
									<ul class="reviews">
										<li>
											<div class="review-heading">
												<h5 class="name">${rvo.mem_no}</h5>
												<p class="date">${rvo.place_review_date}</p>
											</div>
											<div class="review-body">
												<h4>${rvo.place_review_title}</h4>
												<p>${rvo.place_review_content}</p>
											</div>
										</li>
									</ul>
								</c:forEach>
								</div>
							</div>
							<!-- /Reviews -->

							<!-- Review Form -->
							<div class="col-md-3">
								<div id="review-form">
									<form class="review-form" action= "cpath/reviewWrite.do"  method="post">
									<!--이부분 type=email에서 type=text로 바꿤 -->
									<!-- 여기부분은 밸류값? 여기부분 애매해서 놔둠........ 입력해야함 -->
										<input class="input" type="text" name=memid value="${#}" placeholder="아이디를 입력해주세요">
										<textarea class="input" rows=10; placeholder="내용을 입력해주세요"></textarea>
										<div class="input-rating">
											<span>Your Rating: </span>
											<div class="stars" name=placerating>
												<input id="star5" name="rating" value="5" type="radio"><label
													for="star5"></label> <input id="star4" name="rating"
													value="4" type="radio"><label for="star4"></label>
												<input id="star3" name="rating" value="3" type="radio"><label
													for="star3"></label> <input id="star2" name="rating"
													value="2" type="radio"><label for="star2"></label>
												<input id="star1" name="rating" value="1" type="radio"><label
													for="star1"></label>
											</div>
										</div>
										<button class="primary-btn">저장</button>
									</form>
								</div>
							</div>
							<!-- /Review Form -->
						</div>
					</div>
					<!-- /tab3  -->
				</div>
				<!-- /product tab content  -->
			</div>
		</div>
		<!-- /product tab -->
	</div>
	<!-- /row -->
	</div>
	<!-- /container -->
	</div>
	<!-- /SECTION -->






	<!-- jQuery Plugins -->
	<script src="${cpath}js/jquery.min.js"></script>
	<script src="${cpath}js/bootstrap.min.js"></script>
	<script src="${cpath}js/slick.min.js"></script>
	<script src="${cpath}js/nouislider.min.js"></script>
	<script src="${cpath}js/jquery.zoom.min.js"></script>
	<script src="${cpath}js/main.js"></script>



	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=11c7ad799dbc427a7b2435f3fe4f6d82"></script>
	<script>
                                var container = document.getElementById('map');
                                var options = {
                                    center: new kakao.maps.LatLng(33.450701,
                                        126.570667),
                                    level: 3
                                };

                                var map = new kakao.maps.Map(container, options);
                            </script>
	
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53453794678011876868747a30475286"></script>
	<script>
 var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
 var options = { //지도를 생성할 때 필요한 기본 옵션
 	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
 	level: 3 //지도의 레벨(확대, 축소 정도)
 };
 var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴</script>
</body>

</html>