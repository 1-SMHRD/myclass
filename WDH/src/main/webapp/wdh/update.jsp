<%@page import="kr.wdh.dao.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="newLine" value="<%='\n'%>" />
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--css plugin  -->
<link type="text/css" rel="stylesheet" href="${cpath}/css/signin.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>


</head>
<body>
	<div class="container" id="container">
  <div class="form-container sign-in-container">
    <form action="${cpath}/update.do">
      <h1>Update</h1>
      <input type="hidden" name="mem_Id" value="${mvo.mem_Id }"/>
      <input type="password" placeholder="New Password" name="mem_Pw"/>
      <input type="password" placeholder="Password Check" name="mem_Pw" />
      <input type="text" placeholder="PhoneNumber" name="mem_phone"  />
      <button type="submit">Update</button>
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-right">
        <h1>Update Your Info</h1>
      </div>
    </div>
  </div>
</div>
	<!-- jQuery Plugins -->
	<script src="${cpath}/js/signin.js"></script>
	<script src="${cpath}/js/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</body>
</html>