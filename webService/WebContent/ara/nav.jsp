<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/asset/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/asset/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/asset/css/creative.css"
	rel="stylesheet">

<!-- Plugin CSS -->
<link
	href="${pageContext.request.contextPath}/asset/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="index.jsp">여기만나</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#about">소개</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#services">장소찾기</a></li>

				<c:if test="${sessionScope.user == null}">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="signUp.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="sign.jsp">로그인</a></li>
				</c:if>
				
				<c:if test="${sessionScope.user != null}">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="mypage.go">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="signOut.go">${sessionScope.user.name}님 로그아웃</a></li>
				</c:if>

			</ul>
		</div>
	</div>
</nav>