<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹소켓의악마</title>

    <link rel="stylesheet" href="resources/css/main.css">

    <script src="https://kit.fontawesome.com/a2e8ca0ae3.js" crossorigin="anonymous"></script>

</head>
<body>
 
 	<main>
	 <c:choose>
	 	<c:when test="${empty sessionScope.loginMember}">
			<section>
				<form action="member/login" method="POST" name="login-form" onsubmit="return loginValidate()">
					<fieldset>
						<section>
							<input type="text" id="inputId" name="id" placeholder="userID">
							<input type="password" id="inputPw" name="pw" placeholder="password">
							<button>Login</button>
						</section>
						<section>
<!-- 							 <a>회원가입</a>
							 <a>아이디/비밀번호 찾기</a> -->
						</section>	
					</fieldset>
				</form> 
			</section>
	 	</c:when>
	 
	 	<c:otherwise>
			<section>
			 	<div class="my-info">
				 
				 	<a href="${contextPath}/member/myPage/profile">
						<c:if test="${empty loginMember.img}">
							<img src="${contextPath}/resources/images/user.png" id="member-profile">
						</c:if>
						<c:if test="${!empty loginMember.img}">
							<img src="${contextPath}${loginMember.img}" id="member-profile">
						</c:if>
		 			</a>
					 <a href="${contextPath}/member/myPage/info" id="nickname">${loginMember.nick}</a>
					 <a href="${contextPath}/member/logout" id="logout-btn nickname">로그아웃</a>
				 
			 	</div>
			</section>
			
		</c:otherwise>
	 </c:choose>
	 
	 <section id="game">
		<!-- title -->
		<h1 class="title">루미의세포들</h1>
		<!-- game start btn -->
		<div class="container-btn">
			<div class="btn btn-start">
				<a href="${contextPath}/gameEntry">게임 시작</a>
			</div>
			<div class="btn btn-start">
				<a href="${contextPath}/AIgameEntry">AI게임 시작</a>
			</div>
			<div class="btn btn-rule">
				<a href="${contextPath}/info">게임 설명</a>
			</div>
		</div>
	 </section>
	  
 	</main>
 	
	<script src="${contextPath}/resources/js/main.js"></script>
	
	<jsp:include page="/WEB-INF/views/common/message.jsp" />
</body>
</html>