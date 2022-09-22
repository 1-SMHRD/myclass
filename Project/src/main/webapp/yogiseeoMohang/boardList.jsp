
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 
<div class="container">
  <h2>MVC02</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
    
<!-- 회원인증 실패 -->
    <c:if test="${empty mvo}">
    <form class="form-inline" action="${cpath}/login.do">
  <div class="form-group">
    <label for="memId">ID :</label>
    <input type="text" class="form-control" name="memId">
  </div>
  <div class="form-group">
    <label for="memPwd">Password:</label>
    <input type="password" class="form-control" name="memPwd">
  </div>
  <button type="submit" class="btn btn-default">로그인</button>
</form>
    

<!-- 회원인증 성공 -->
</c:if>
<c:if test="${!empty mvo}">
<form class="form-inline" action="${cpath}/logout.do">
  <div class="form-group"></div>
  <div class="form-group">
    <label>${mvo.memName}님 환영합니다</label>
  </div>
  <button type="submit" class="btn btn-default">로그아웃</button>
</form>


</c:if>
    </div>
    
    
    <div class="panel-body">
      <table class="table table-bordered table-hover">
        <tr>
          <td>번호</td>
          <td>제목</td>
          <td>작성자</td>
          <td>작성일</td>
          <td>조회수</td>
        </tr>
        <c:forEach var ="vo" items="${list}">
        <tr>
          <td>${vo.idx}</td>
          <td><a href="${cpath}/boardDetail.do?idx=${vo.idx}">${vo.title}</a></td>
          <td>${vo.writer}</td>
          <td>${fn:split(vo.indate,"")[0] }</td>
          <td>${vo.count}</td>
        </tr>  
        </c:forEach>  
       
       <c:if test="${!empty mvo}">
        <tr>
        	<td colspan ="5">											
        	<button class="5 btn-sm btn-primary" onclick="location.href='${cpath}/boardWriteForm.do'">글쓰기</button>
        	<!--  글쓰기 이동 컨트롤러로 가야한다  > boardWriteForm.do -->
        	</td>
        </tr>  
        </c:if> 
      </table>
    </div>
    <div class="panel-footer">인공지능 융합서비스 개발자과정(박매일)</div>
  </div>
</div>

</body>
</html>

