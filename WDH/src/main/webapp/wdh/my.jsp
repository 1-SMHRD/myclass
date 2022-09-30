<%@page import="java.util.List"%>
<%@page import="kr.wdh.dao.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
    


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>What are you Doing Here?</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Resume Website Template Free Download" name="keywords">
        <meta content="Resume Website Template Free Download" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="${cpath}/css/my.css" rel="stylesheet">
    </head>	

    <body data-spy="scroll" data-target=".navbar" data-offset="51">
        <div class="wrapper">
            <div class="sidebar">
                <div class="sidebar-content">
                    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                        <a href="#" class="navbar-brand">Navigation</a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarCollapse">
                            <ul class="nav navbar-nav">
                            <li class="nav-item">
                                    <a class="nav-link" href="${cpath}/main.do">HOME</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#header">기본정보</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#about">이력관리</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#experience">My 취향</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#service">공지사항</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#portfolio">QnA</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#contact">FAQ</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="sidebar-footer">
                   <a href="#"><p onclick="test()">회원탈퇴</p></a>
                
                </div>
            </div>
            <div class="content">
                <!-- Header Start -->
                <div class="header" id="header">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>기본정보</h2>
                        </div>
                        <span class="bigfont">ID : </span>
                        <span class="smallfont">${mvo.mem_Id}</span>
                        <br>
                        <span class="bigfont">NICK NAME : </span>
                        <span class="smallfont">${mvo.mem_nick}</span>
                        <br>
                        <span class="bigfont">PHONE :</span>
                        <span class="smallfont">${mvo.mem_phone }</span>
                    </div>
                </div>
                <!-- Header End -->
                
                <!-- Large Button Start -->
                <div class="large-btn">
                    <div class="content-inner">
                        
                        <a class="btn" href="#">Resume</a>
                        <a class="btn" href="${cpath}/updateform.do">회원정보 수정</a>
                    </div>
                </div>
                <!-- Large Button End -->
                
                <!-- About Start -->
                <div class="about" id="about">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>이력관리</h2>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-md-6 col-lg-5">
                            </div>
                            <div class="col-md-6 col-lg-7">
                            </div>
                        </div>
                        <div class="row">
                        </div>
                    </div>
                </div>
                <!-- About End -->
                
                
                <!-- Experience Start -->
                <div class="experience" id="experience">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>My 취향</h2>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Experience Start -->
                
                <!-- Service Start -->
                <div class="service" id="service">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>공지사항</h2>
                        </div>
                        <div class="row align-items-center">
                        </div>
                    </div>
                </div>
                <!-- Service Start -->
                
                <!-- Portfolio Start -->
                <div class="portfolio" id="portfolio">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>QnA</h2>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- Portfolio Start -->
                
                
                
                <!-- Contact Start -->
                <div class="contact" id="contact">
                    <div class="content-inner">
                        <div class="content-header">
                            <h2>FAQ</h2>
                        </div>
                        
                    </div>
                </div>
                <!-- Contact End -->
                
                <!-- Footer Start -->
                <div class="footer">
                    <div class="content-inner">
                        <div class="row align-items-center">
                            
                        </div>
                    </div>
                </div>
                <!-- Footer Start -->
            </div>
        </div>
        
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-angle-double-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        <script src="lib/typed/typed.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
         <script type="text/javascript">
        
        function test() {
            if (!confirm("탈퇴하시겠습니까?")) {
            	
            } else {
                alert("탈퇴되었습니다.");
                window.location.href = 'http://localhost:8085/wdh/main.do'
                
            }
        }</script>
        
        <!-- Template Javascript -->
        <script src="${cpath}/js/main.js"></script>
    </body>
</html>
