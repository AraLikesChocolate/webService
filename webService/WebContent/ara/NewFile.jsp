<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>시작 페이지</title>

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
</head>
<body id="page-top">

	<jsp:include page="nav.jsp"></jsp:include>

	
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<form method="post" action="/signUp/signUp.go" name="userInfo"
						onsubmit="return checkValue()" style="border: 1px solid #ccc">

						<div class="container">
							<h1>Join Us!</h1>
							<p>회원가입을 위해 아래 정보를 입력하여 주십시오.</p>
							<hr>

							<label for="id"><b>아이디</b></label> <input type="text"
								placeholder="Enter ID" name="id" required><br>
							<br> <label for="psw"><b>비밀번호</b></label> <input
								type="password" placeholder="Enter Password" name="psw" required><br>
							<br> <label for="psw-repeat"><b>비밀번호 재입력</b></label> <input
								type="password" placeholder="Repeat Password" name="psw-repeat"
								required><br>
							<br> <label for="name"><b>이름</b></label> <input type="text"
								placeholder="Enter Name" name="name" required><br>
							<br> <label for="email"><b>이메일</b></label> <input
								type="text" placeholder="Enter Email" name="email" required><br>
							<br> <label for="gender"><b>성별</b></label> <input
								type="radio" name="gender" value="남" checked>남 <input
								type="radio" name="gender" value="여">여 <br>
							<br> <label for="birthday"><b>생년월일</b></label> <input
								type="date" name="birthday"><br>
							<br> <label> <input type="checkbox" name="remember"
								style="margin-bottom: 15px"> 내 정보 기억하기
							</label>

							<div class="clearfix">
								<button type="button" class="cancelbtn" onclick="goLoginForm()">취소</button>
								<button type="submit" class="signupbtn">회원가입</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/asset/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/asset/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/asset/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/asset/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/asset/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath}/asset/js/creative.min.js"></script>

</body>

</html>