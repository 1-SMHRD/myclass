<%@page import="kr.wdh.dao.PlaceReviewVO" %>
<%@page import="java.util.List"%>
<%@page import="kr.wdh.dao.MemberVO" %>
    <%@page import="kr.wdh.dao.PlaceVO" %>
        <!-- 여긴 문제 없음 -->
        <%@page import="java.util.List" %>
            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:set var="cpath" value="${pageContext.request.contextPath}" />
                    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                        <!-- 특수문자를 ''로 해준다!  -->
                        <c:set var="newLine" value="<%='\n'%>" />
                        
                        <link href="${cpath}/js/placedetail.js" rel="stylesheet">
                        <!DOCTYPE html>
                        <html lang="en">

                        <head>
                            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                            <title>What are you Doing Here?</title>

                            <!-- Google font -->
                            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
                                rel="stylesheet">

                            <!-- Bootstrap -->
                            <link type="text/css" rel="stylesheet" href="${cpath}/css/bootstrap.min.css" />

                            <!-- Slick -->
                            <link type="text/css" rel="stylesheet" href="${cpath}/css/slick.css" />
                            <link type="text/css" rel="stylesheet" href="${cpath}/css/slick-theme.css" />

                            <!-- nouislider -->
                            <link type="text/css" rel="stylesheet" href="${cpath}/css/nouislider.min.css" />

                            <!-- Font Awesome Icon -->
                            <link rel="stylesheet" href="${cpath}/css/font-awesome.min.css">

                            <!-- Custom stlylesheet -->
                            <link type="text/css" rel="stylesheet" href="${cpath}/css/style.css" />
							  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
                            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                            <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
                            <style>
                                html,
                                body {
                                    width: 100%;
                                    height: 100%;
                                    margin: 0;
                                    padding: 0;
                                }

                                .map_wrap {
                                    position: relative;
                                    overflow: hidden;
                                    width: 100%;
                                    height: 350px;
                                }

                                .radius_border {
                                    border: 1px solid #919191;
                                    border-radius: 5px;
                                }

                                .custom_typecontrol {
                                    position: absolute;
                                    top: 10px;
                                    right: 10px;
                                    overflow: hidden;
                                    width: 135px;
                                    height: 30px;
                                    margin: 0;
                                    padding: 0;
                                    z-index: 1;
                                    font-size: 12px;
                                    font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
                                }

                                .custom_typecontrol span {
                                    display: block;
                                    width: 65px;
                                    height: 30px;
                                    float: left;
                                    text-align: center;
                                    line-height: 30px;
                                    cursor: pointer;
                                }

                                .custom_typecontrol .btn {
                                    background: #fff;
                                    background: linear-gradient(#fff, #e6e6e6);
                                }

                                .custom_typecontrol .btn:hover {
                                    background: #f5f5f5;
                                    background: linear-gradient(#f5f5f5, #e3e3e3);
                                }

                                .custom_typecontrol .btn:active {
                                    background: #e6e6e6;
                                    background: linear-gradient(#e6e6e6, #fff);
                                }

                                .custom_typecontrol .selected_btn {
                                    color: #fff;
                                    background: #425470;
                                    background: linear-gradient(#425470, #5b6d8a);
                                }

                                .custom_typecontrol .selected_btn:hover {
                                    color: #fff;
                                }

                                .custom_zoomcontrol {
                                    position: absolute;
                                    top: 50px;
                                    right: 10px;
                                    width: 38px;
                                    height: 82px;
                                    overflow: hidden;
                                    z-index: 1;
                                    background-color: #f5f5f5;
                                }

                                .custom_zoomcontrol span {
                                    display: block;
                                    width: 36px;
                                    height: 40px;
                                    text-align: center;
                                    cursor: pointer;
                                }

                                .custom_zoomcontrol span img {
                                    width: 37px;
                                    height: 40px;
                                    padding: 12px 0;
                                    border: none;
                                }

                                .custom_zoomcontrol span:first-child {
                                    border-bottom: 1px solid #bfbfbf;
                                }
                            </style>
                            <script type="text/javascript">

                          	function goInsert(){
                          		// frm->memId, title, content, writer
                          		var frmData=$("#frm").serialize();
                          		$.ajax({
                          			url : "${cpath}/reviewWrite.do?place_no=${Place_mvo.place_no}",
                          			type : "post",
                          			data : frmData,
                          			success : function(){
                          				alert("등록되었습니다.");
                          				location.href = "${cpath}/placedetail.do?place_no=${Place_mvo.place_no}";
                          			},
                          			error : function(){ alert("error!! 입력하지 않은 정보가 있는지 확인해주세요");}
                          		});
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
                                        <!-- Product main img -->
                                        <div class="col-md-5">
                                            <div class="section-title  text-center">
                                                <h3 class="title">${Place_mvo.place_name}</h3>
                                            </div>
                                            <div id="product-main-img">
                                                <img src="${Place_mvo.place_img1}" onerror="this.onerror= null; this.src='${cpath}/img/loding.gif';" alt=""
                                                    style="width: 100%; height: 100%">
                                            </div>
                                            <!-- Rating -->
							
								<div id="rating">
									<div class="rating-avg">
										<span>평균평점 : ${Place_mvo.placeratingavg}</span>
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
							
							<!-- /Rating -->
                                        </div>
                                        <!-- /Product main img -->

                                        <!-- Product details -->
                                        <div class="col-md-5">
                                            <div class="product-details">
                                                <ul class="product-btns">
                                                    <li>
                                                        <h1 class="product-name">${Place_mvo.place_name} 요약정보</h1>
                                                    </li>
                                                </ul>

                                                <div class="overview">
                                                    <!-- mvo 가 아닌 Place_mvo.place_overview를 써야함 -->
                                                    ${Place_mvo.overview}
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
                                                            <p>${Place_mvo.place_addr_1} ${Place_mvo.place_addr_2}
                                                                ${Place_mvo.place_addr_3}</p>
                                                        </div>
                                                    </div>


                                                </div>
                                                <!-- </div> -->
                                                <!-- 임시 -->


                  

                                                <!-- 임시 -->
                   
                                                    </div>
                                                </div>
                                                <!-- /tab3  -->
                                            </div>
                                            <!-- /product tab content  -->
                                            
                                            
                                            					<!-- tab3 -->
					<div id="tab3" class="tab-pane fade in">
						<div class="row">
							

							<!-- Reviews -->
							<div class="col-md-6">
								<div id="reviews">
								
								<c:forEach var="rvo" items="${PlaceReview}" begin="0" end="3" step="1">
									<ul class="reviews">
										<li>
											<div class="review-heading">
												<h5 class="name">${rvo.mem_id}</h5>
												<p class="date">${rvo.place_review_date}</p>
											</div>
											<div class="review-body">
												<h4>${rvo.place_review_title}</h4>
												<p>${rvo.place_review_content}</p>
											</div>
											
											<div class="product-rating">
													<c:forEach begin="1" end="5" step="1" var="i">
														<c:choose>
															<c:when test="${i<=rvo.place_rating}">
																<i class="fa fa-star"></i>
															</c:when>
															<c:otherwise>
																<i class="fa fa-star-o"></i>
															</c:otherwise>
														</c:choose>
													</c:forEach>
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
									<form id="frm" class="review-form" <%-- action= "${cpath}/reviewWrite.do?place_no=${Place_mvo.place_no}" --%>  method="post">
									<!--이부분 type=email에서 type=text로 바꿤 -->
									<!-- 여기부분은 밸류값? 여기부분 애매해서 놔둠........ 입력해야함 -->
										<input class="input" type="text" name="place_review_title" placeholder="제목을 입력해주세요">
										<textarea class="input" rows=10; name="place_review_content" placeholder="내용을 입력해주세요"></textarea>
										<div class="input-rating">
											<span>점수를 평가해주세요 : </span>
											<div class="stars" >
												<input id="star5" name="place_rating" value="5" type="radio">
												<label for="star5"></label> 
												<input id="star4" name="place_rating"	value="4" type="radio">
												<label for="star4"></label>
												<input id="star3" name="place_rating" value="3" type="radio">
												<label for="star3"></label> 
												<input id="star2" name="place_rating"	value="2" type="radio">
												<label for="star2"></label>
												<input id="star1" name="place_rating" value="1" type="radio">
												<label for="star1"></label>
											</div>
										</div>
										  	<div class="form-group">
		  <div class="col-sm-offset-2 col-sm-10">
			<button type="button" class="btn btn-sm btn-success" onclick="goInsert()">등록</button>
			<button type="reset" class="btn btn-sm btn-info">취소</button>
	  	  </div>
		</div>
									</form>
								</div>
							</div>
							<!-- /Review Form -->
						</div>
					</div>
					<!-- /tab3  -->
                                            
                                            
                                            
                                            
                                        </div>
                                    </div>
                                    <!-- /product tab -->


	



<%-- 					<!-- tab3 -->
					<div id="tab3" class="tab-pane fade in">
						<div class="row">
							

							<!-- Reviews -->
							<div class="col-md-6">
								<div id="reviews">
								
								<c:forEach var="rvo" items="${PlaceReview}" begin="0" end="3" step="1">
									<ul class="reviews">
										<li>
											<div class="review-heading">
												<h5 class="name">${rvo.mem_id}</h5>
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
									<form class="review-form" action= "${cpath}/reviewWrite.do?place_no=${Place_mvo.place_no}"  method="post">
									<!--이부분 type=email에서 type=text로 바꿤 -->
									<!-- 여기부분은 밸류값? 여기부분 애매해서 놔둠........ 입력해야함 -->
										<input class="input" type="text" name="place_review_title" placeholder="제목을 입력해주세요">
										<textarea class="input" rows=10; name="place_review_content" placeholder="내용을 입력해주세요"></textarea>
										<div class="input-rating">
											<span>점수를 평가해주세요 : </span>
											<div class="stars" >
												<input id="star5" name="place_rating" value="5" type="radio">
												<label for="star5"></label> 
												<input id="star4" name="place_rating"	value="4" type="radio">
												<label for="star4"></label>
												<input id="star3" name="place_rating" value="3" type="radio">
												<label for="star3"></label> 
												<input id="star2" name="place_rating"	value="2" type="radio">
												<label for="star2"></label>
												<input id="star1" name="place_rating" value="1" type="radio">
												<label for="star1"></label>
											</div>
										</div>
										<button class="primary-btn">등록</button>
									</form>
								</div>
							</div>
							<!-- /Review Form -->
						</div>
					</div>
					<!-- /tab3  --> --%>


















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
                            <script src="${cpath}js/jquery.min.js"></script>
                            <script src="${cpath}js/bootstrap.min.js"></script>
                            <script src="${cpath}js/slick.min.js"></script>
                            <script src="${cpath}js/nouislider.min.js"></script>
                            <script src="${cpath}js/jquery.zoom.min.js"></script>
                            <script src="${cpath}js/main.js"></script>




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