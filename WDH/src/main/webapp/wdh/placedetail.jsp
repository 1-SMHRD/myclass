<%-- <%@page import="kr.wdh.dao.PlaceReviewmvo"%> --%>
<%@page import="kr.wdh.dao.PlaceVO"%>
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
<link rel="stylesheet" href="../css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="${cpath}/css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<script type="text/javascript">

	
	//입력한 리뷰 저장(저장되면 메인으로)
	function PlacereviewInsert(){
		//pfrm->mem_no, place_review_title, place_review_content, place_rating
		var pfrmData=$("pfrm").serialize();
		//alert(pfrmData);
		$.ajax({
			url : "${cpath}/placedetail.do",
			type : "post",
			data : pfrmData,
			success : function(){
				location.href="${cpath}/placedetail.do";
			},
			 error : function() { alert("error"); }
		});
		
	}
	
	
	//지도api (위도,경도)
	function getmap(latitude,longitude){
		$.ajax({
			url 
		})
	}
	
</script>
<style>
#infomation {
	font-size: 20px;
	width: auto;
	list-style-position: inside;
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
						<img src="${mvo.place_img1}" alt=""
							style="width: 100%; height: 100%">
					</div>
				</div>
				<!-- /Product main img -->

				<!-- Product details -->
				<div class="col-md-5">
					<div class="product-details">
						<ul class="product-btns">
							<li><h2 class="product-name">${mvo.place_name}</h2></li>
							<li><a href="/like.do" class="product-name"><i
									class="fa fa-heart-o"></i> like</a></li>
						</ul>

						<div>
							<div class="product-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>
							</div>
							<a class="review-link" href="#">10 Review(s) | Add your
								review</a>
						</div>
						<div>
							<!-- <h3 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h3>
								<span class="product-available">In Stock</span> -->
						</div>
						<p class="overview">
							${mvo.place_overview}
							<!--개요내용 들어가야함  -->
							<!-- 개요 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
							do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. -->
						</p>

						<ul class="product-btns">
							<li>Category:</li>
							<li><a href="#">Headphones</a></li>
							<li><a href="#">Accessories</a></li>
						</ul>

						<ul class="product-links">
							<li>Share:</li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-envelope"></i></a></li>
						</ul>

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
						<li><a data-toggle="tab" href="#tab3">리뷰(리뷰수)</a></li>
					</ul>
					<!-- /product tab nav -->

					<!-- product tab content -->
					<div class="tab-content">
						<!-- tab1  -->
						<div id="tab1" class="tab-pane fade in active">
							<!-- <div class="row">
										<div class="col-md-12">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in mvoluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
										</div>
									</div>
								</div> -->

							<!-- <div class="col-md-3"> -->
							<div id="product-main-img"></div>


							<!-- 관광지api로 데이터 가져올 부분  -->
							<div class="info"></div>
							<div id="infomation">
								${mvo.place_date}
								<!-- <p>씨메르를 보다 프라이빗하고 여유롭게 즐기 실 수 있는 경험을 드립니다. 럭셔리하고 트렌디한 아쿠아
										스파 존은 아쿠아 액티비티 뿐만 아니라 다이나믹한 LED 미디어 아트와 차별화된 컨셉의 풀파티를 즐길 수
										있습니다. 실내, 외에 배치된 썬베드에서 씨메르 및 파라다이스시티 전체를 조망하며 여유로운 휴식을 취하실 수
										있습니다. 각 상품별 안내사항은 아래 사진을 반드시 참고해주세요. 자녀와 즐거운 추억을 남길 수 있는 원더박스도
										같이 즐겨보세요!</p>
									<p>씨메르를 보다 프라이빗하고 여유롭게 즐기 실 수 있는 경험을 드립니다. 럭셔리하고 트렌디한 아쿠아
										스파 존은 아쿠아 액티비티 뿐만 아니라 다이나믹한 LED 미디어 아트와 차별화된 컨셉의 풀파티를 즐길 수
										있습니다. 실내, 외에 배치된 썬베드에서 씨메르 및 파라다이스시티 전체를 조망하며 여유로운 휴식을 취하실 수
										있습니다. 각 상품별 안내사항은 아래 사진을 반드시 참고해주세요. 자녀와 즐거운 추억을 남길 수 있는 원더박스도
										같이 즐겨보세요!</p>
									<p>씨메르를 보다 프라이빗하고 여유롭게 즐기 실 수 있는 경험을 드립니다. 럭셔리하고 트렌디한 아쿠아
										스파 존은 아쿠아 액티비티 뿐만 아니라 다이나믹한 LED 미디어 아트와 차별화된 컨셉의 풀파티를 즐길 수
										있습니다. 실내, 외에 배치된 썬베드에서 씨메르 및 파라다이스시티 전체를 조망하며 여유로운 휴식을 취하실 수
										있습니다. 각 상품별 안내사항은 아래 사진을 반드시 참고해주세요. 자녀와 즐거운 추억을 남길 수 있는 원더박스도
										같이 즐겨보세요!</p> -->
							</div>



							<!-- <div class="row">
									
									</div>
								</div>
							</div>
			
									
								<-- /tab1  -->

							<!-- tab2 -->
							<!-- 지도api로 데이터 가져올 부분(위도,경도를 매개변수로)  -->
							<div id="tab2" class="tab-pane fade in">
								<div class="col-md-3"></div>
								<div id="product-main-img">
									<img src="./img/product01.png" alt="">
								</div>
								<!-- </div> -->


								<!-- /tab2 -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">

													<span> ${mvo.place_rating_avg}</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>

												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div> <span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div> <span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
																class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div> <span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
																class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div> <span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
																class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
																class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div> <span class="sum">0</span>
													</li>
													<!--평점개수  -->
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name"><%-- ${mvo.mem_id} --%></h5>
															<p class="date"><%-- ${mvo.pv_date} --%></p>
															<div class="review-rating">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p><%-- ${mvo.pv_review} --%></p>
															<!-- <p>Lorem ipsum dolor sit amet, consectetur
																	adipisicing elit, sed do eiusmod tempor incididunt ut
																	labore et dolore magna aliqua</p> -->
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name"><%-- ${mvo.mem_id} --%></h5>
															<p class="date"><%-- ${mvo.pv_date} --%></p>
															<div class="review-rating">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p><%-- ${mvo.pv_review} --%></p>
															<!-- <p>Lorem ipsum dolor sit amet, consectetur
																	adipisicing elit, sed do eiusmod tempor incididunt ut
																	labore et dolore magna aliqua</p> -->
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name"><%-- ${mvo.mem_id} --%></h5>
															<p class="date"><%-- ${mvo.pv_date} --%></p>
															<div class="review-rating">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<%-- <p>${rvo.pv_review}</p> --%>
															<!-- <p>Lorem ipsum dolor sit amet, consectetur
																	adipisicing elit, sed do eiusmod tempor incididunt ut
																	labore et dolore magna aliqua</p> -->
														</div>
													</li>
													<!-- 리뷰 가져오는 자바 로직 forEach문 -->
													<!-- <li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													-->
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form id="pfrm" class="review-form">
													<input class="input" type="text" name="memId"
														value="mem_id"> <input class="input" type="text"
														name="place_review_title" value="pv_date">
													<!-- mvo객체 db가 없어 오류나는 부분 -->
													
													<textarea class="input" name="pv_reivew"></textarea>
												
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars" >
															<input id="star5" name="rating" value="5" type="radio">
															<label for="star5"></label> 
															<input id="star4" name="rating"	value="4" type="radio">
															<label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio">
															<label for="star3"></label> 
															<input id="star2" name="rating"	value="2" type="radio">
															<label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio">
															<label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn" onclick="PlacereviewInsert()">저장</button>
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

		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">Related Products</h3>
						</div>
					</div>

					<!-- div 4개 여기는 절대로 없애면 안되는 div footer의 넓이가 달라짐 -->
				</div>
			</div>
			<!-- /product -->

		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
	<!-- </div> -->
	<!-- /Section -->




	<!-- jQuery Plugins -->
	<script src="${cpath}js/jquery.min.js"></script>
	<script src="${cpath}js/bootstrap.min.js"></script>
	<script src="${cpath}js/slick.min.js"></script>
	<script src="${cpath}js/nouislider.min.js"></script>
	<script src="${cpath}js/jquery.zoom.min.js"></script>
	<script src="${cpath}js/main.js"></script>
</body>
</html>

