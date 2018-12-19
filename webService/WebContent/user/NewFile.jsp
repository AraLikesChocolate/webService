<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>시작 페이지</title>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!-- Bootstrap core CSS -->
<link href="${path}/asset/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${path}/asset/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="${path}/asset/css/creative.css" rel="stylesheet">

<!-- Plugin CSS -->
<link href="${path}/asset/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">
<link href="${path}/asset/css/sign.css" rel="stylesheet">
<!-- source codepen.io -->
<link
	href="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">

</head>
<body id="page-top">
	<jsp:include page="../nav.jsp"></jsp:include>
	<section id="contact">
		<div class="container">
			<div class="row">
				<form method="post" autocomplete="off" action="sign.go" id="signForm">
				<div class="row signRow">
					<div
						class="wrapper large-5 columns large-centered small-7 small-centered">
						<div class="row header">
							<div class="large-12 columns">SIGN IN</div>
						</div>

						<div class="row username">
							<div class="large-9 columns large-centered">
								<label for="id"><i class="fa fa-user"></i></label> <input
									id="id" type="text" name="id"
									placeholder="id" required autocomplete="off" />
							</div>
						</div>

						<div class="row password">
							<div class="large-9 columns large-centered">
								<label for="psw"><i class="fa fa-lock"></i></label> <input
									id="psw" type="password" name="password"
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
			</div>
			
		</div>
	</section>

	<!-- Bootstrap core JavaScript -->
	<script src="${path}/asset/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/asset/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${path}/asset/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${path}/asset/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script
		src="${path}/asset/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="${path}/asset/js/creative.min.js"></script>
</body>
</html>