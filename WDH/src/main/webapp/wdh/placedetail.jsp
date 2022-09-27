<%-- <%@page import="kr.wdh.dao.PlaceReviewmvo" %> --%>
    <%@page import="kr.wdh.dao.PlaceVO" %>
        <%@page import="java.util.List" %>
            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                    <c:set var="cpath" value="${pageContext.request.contextPath}" />
                    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                        <!-- 특수문자를 ''로 해준다!  -->
                        <c:set var="newLine" value="<%='\n'%>" />
                        <!DOCTYPE html>
                        <html lang="en">

                        <head>
                            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                            <title>Electro - HTML Ecommerce Template</title>

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
                                function PlacereviewInsert() {
                                    //pfrm->mem_no, place_review_title, place_review_content, place_rating
                                    var pfrmData = $("pfrm").serialize();
                                    //alert(pfrmData);
                                    $.ajax({
                                        url: "${cpath}/placedetail.do",
                                        type: "post",
                                        data: pfrmData,
                                        success: function () {
                                            location.href = "${cpath}/placedetail.do";
                                        },
                                        error: function () { alert("error"); }
                                    });

                                }


                                //지도api (위도,경도)
                                function getmap(latitude, longitude) {
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
                                                <img src="${mvo.place_img1}" alt="" style="width: 100%; height: 100%">
                                            </div>
                                        </div>
                                        <!-- /Product main img -->

                                        <!-- Product details -->
                                        <div class="col-md-5">
                                            <div class="product-details">
                                                <ul class="product-btns">
                                                    <li>
                                                        <h1 class="product-name">1 ${mvo.place_name}</h1>
                                                    </li>
                                                </ul>

                                                <div class="overview">
                                                    ${mvo.place_overview}
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
                                                    <li><a data-toggle="tab" href="#tab3">리뷰(리뷰수)</a></li>
                                                </ul>
                                                <!-- /product tab nav -->

                                                <!-- product tab content -->
                                                <div class="tab-content">
                                                    <!-- tab1  -->
                                                    <div id="tab1" class="tab-pane fade in active">

                                                        <!-- <div class="col-md-3"> -->
                                                        <div id="product-main-img"></div>


                                                        <!-- 관광지api로 데이터 가져올 부분  -->
                                                        <div class="info"></div>
                                                        <div id="infomation">
                                                            ${mvo.otherinformation}
                                                        </div>



                                                        <!-- tab2 -->
                                                        <!-- 지도api로 데이터 가져올 부분(위도,경도를 매개변수로)  -->
                                                        <div id="#tab2" class="shiping-details float"
                                                            style="margin: 0px;">
                                                            <div class="section-title  text-center">
                                                                <h3 class="title">네이버 지도</h3>
                                                            </div>
                                                            <div class="form-group" style=" height: 400px">
                                                                <div id="map" style="width: 100%; height: 100%;"></div>

                                                            </div>
                                                        </div>


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
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i> <i
                                                                                class="fa fa-star"></i> <i
                                                                                class="fa fa-star-o"></i>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /Rating -->

                                                            <!-- Reviews -->
                                                            <div class="col-md-6">
                                                                <div id="reviews">
                                                                    <ul class="reviews">
                                                                        <!-- 리뷰 포문 돌립시다 -->
                                                                        <li>
                                                                            <div class="review-heading">
                                                                                <h5 class="name">
                                                                                    <%-- ${mvo.mem_id} --%>
                                                                                </h5>
                                                                                <p class="date">
                                                                                    <%-- ${mvo.pv_date} --%>
                                                                                </p>
                                                                                <div class="review-rating">
                                                                                   <%-- 리뷰별 평점정보 ${mvo.} --%>
                                                                                </div>
                                                                            </div>
                                                                            <div class="review-body">
                                                                                <p>
                                                                                    <%-- ${mvo.pv_review} --%>
                                                                                </p>
                                                                                <!-- <p>Lorem ipsum dolor sit amet, consectetur
																	adipisicing elit, sed do eiusmod tempor incididunt ut
																	labore et dolore magna aliqua</p> -->
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <!-- /Reviews -->

                                                            <!-- Review Form -->
                                                            <div class="col-md-3">
                                                                <div id="review-form">
                                                                    <form id="pfrm" class="review-form">
                                                                        <input class="input" type="text" name="memId"
                                                                            value="mem_id"> <input class="input"
                                                                            type="text" name="place_review_title"
                                                                            value="pv_date">
                                                                        <!-- mvo객체 db가 없어 오류나는 부분 -->

                                                                        <textarea class="input"
                                                                            name="pv_reivew"></textarea>

                                                                        <div class="input-rating">
                                                                            <span>Your Rating: </span>
                                                                            <div class="stars">
                                                                                <input id="star5" name="rating"
                                                                                    value="5" type="radio">
                                                                                <label for="star5"></label>
                                                                                <input id="star4" name="rating"
                                                                                    value="4" type="radio">
                                                                                <label for="star4"></label>
                                                                                <input id="star3" name="rating"
                                                                                    value="3" type="radio">
                                                                                <label for="star3"></label>
                                                                                <input id="star2" name="rating"
                                                                                    value="2" type="radio">
                                                                                <label for="star2"></label>
                                                                                <input id="star1" name="rating"
                                                                                    value="1" type="radio">
                                                                                <label for="star1"></label>
                                                                            </div>
                                                                        </div>
                                                                        <button class="primary-btn"
                                                                            onclick="PlacereviewInsert()">저장</button>
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
                        </body>

                        </html>