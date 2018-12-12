<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link href="${pageContext.request.contextPath}/asset/css/sign.css"
	rel="stylesheet">
<!-- source codepen.io -->
<link
	href="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="my_container">
			<form method="post" autocomplete="off">
				<!-- 		<p class="intro1"> -->
				<!-- 			First try to log with anything to see a <strong -->
				<!-- 				style="color: #ff3322">failed</strong> login&hellip; -->
				<!-- 		</p> -->
				<!-- 		<p class="intro2"> -->
				<!-- 			Now try to log with "john@doe.com" and "test" to see a <strong -->
				<!-- 				style="color: #a4c639">successful</strong> login! -->
				<!-- 		</p> -->
				<div class="row signRow">
					<div
						class="wrapper large-5 columns large-centered small-7 small-centered">
						<div class="row header">
							<div class="large-12 columns">SIGN IN</div>
						</div>

						<div class="row username">
							<div class="large-9 columns large-centered">
								<label for="username"><i class="fa fa-user"></i></label> <input
									id="username" type="email" name="username"
									placeholder="john@doe.com" required autocomplete="off" />
							</div>
						</div>

						<div class="row password">
							<div class="large-9 columns large-centered">
								<label for="password"><i class="fa fa-lock"></i></label> <input
									id="password" type="password" name="pass"
									placeholder="password" required autocomplete="off" />
							</div>
						</div>

						<div class="row submit">
							<div class="large-9 columns large-centered">
								<input type="submit" value="SUBMIT">
							</div>
						</div>
					</div>
				</div>
			</form>
<!-- 			<span class='morphButton'> <img class="avatar" -->
<!-- 				src="http://www.migloo.be/labs/lab1/img/avatar.png" -->
<!-- 				alt="John... Doe?"> <i class="fa fa-refresh fa-spin loading"></i> -->
<!-- 				<i class="fa fa-check success"></i> <i class="fa fa-times failure"></i> -->
<!-- 			</span> <span class="morphHeader"><span>SIGN IN</span></span> -->
	</div>

	<!-- sourceURL=pen.js -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js'></script>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script
		src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js'></script>
	<!-- Custom scripts for this template -->
	<script src="${pageContext.request.contextPath}/asset/js/login.js"></script>
</body>
</html>