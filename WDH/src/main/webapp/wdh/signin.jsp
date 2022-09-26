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
		<div class="form-container sign-up-container">
			<form id="frm" action="${cpath}/signup.do">
				<h1>Create Account</h1>
				<input type="email" placeholder="Email" name="up_mem_id" />
				 <input	type="password" placeholder="Password" name="up_mem_pw" id="pw_ck1"	oninput="pwck()" />
					 <input type="password"	placeholder="PasswordCheck" name="up_mem_pw2" id="pw_ck2"oninput="pwck()" /> 
					 <input type="text" placeholder="Nickname"		name="mem_nick" /> 
					<input type="text" placeholder="PhoneNumber"	name="mem_pohone" />

				<!-- 	약관 동의여부 
					<div>
					Accept the mandatory terms and conditions<a style='color:blue;' href='#'>(약관내용) </a> 
						<table style="text-align: center;">
							<tr>
								<td>
								agree:
								</td>
								<td>
								<input type="radio" id="agree" name="agree" value="y" >
								</td>
									<td width=15px>
								</td>
								<td>
								disagree:
								</td>
							
								<td>
								<input type="radio" id="disagree" name="agree" value="n"> 

								</td>
							</tr>
							
						</table>
						
					</div>
 -->


				<button>Sign Up</button>
				<p id='success_bar' style='display: none; color: blue;'>비밀번호가
					일치합니다.</p>
				<p id='fail_bar' style='display: none; color: red;'>비밀번호가 일치하지
					않습니다.</p>

			</form>
		</div>





		<div class="form-container sign-in-container">
			<form action="${cpath}/signup.do">
				<h1>Sign in</h1>
				<span>or use your account</span> 
				<input type="email"	placeholder="Email" name="in_mem_id" /> 
				<input type="password"placeholder="Password" name="in_mem_pw" /> 
				<a href="#">Forgot	your password?</a>
				<button>Sign In</button>
			</form>
		</div>
		
		
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Make the best trip ever!!!</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 회원가입시 비밀번호 1, 2 일치여부 -->
	<script>
		$('#pw_ck2').on("propertychange change keyup paste input", function() {
			var pwd1 = $("#pw_ck1").val();
			var pwd2 = $("#pw_ck2").val();

			if (pwd1 != '' && pwd2 == '') {
				null;
			} else if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#success_bar").css('display', 'inline-block');
					$("#fail_bar").css('display', 'none');
				} else {

					$("#success_bar").css('display', 'none');
					$("#fail_bar").css('display', 'inline-block');
				}
			}
		});
	</script>
	<!-- jQuery Plugins -->
	<script src="${cpath}/wdh/js/signin.js"></script>
	<script src="${cpath}/wdh/js/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</body>
</html>