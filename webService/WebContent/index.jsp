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
<style type="text/css">
section#services div.container{
max-width: 100% !important;
padding: 0 !important;
margin: 0 auto;
}



@media ( min-width : 576px) {
	section#services div.container {
	width: 100% !important;
	padding-left: 0 !important;
	padding-right: 0 !important;
	}
}

@media ( min-width : 768px) {
	section#services div.container {
	width: 100% !important;
	padding-left: 0 !important;
	padding-right: 0 !important;
	}
}
}

@media ( min-width : 992px) {
	section#services div.container {
	width: 100% !important;
	padding-left: 0 !important;
	padding-right: 0 !important;
	}
}
}

@media ( min-width : 1200px) {
	section#services div.container {
	width: 100% !important;
	padding-left: 0 !important;
	padding-right: 0 !important;
	}
}

</style>
</head>
<body id="page-top">
	<jsp:include page="nav.jsp"></jsp:include>
	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto" style="color: black;">
			<div class="row">
				<!-- 				<div class="col-lg-10 mx-auto"> -->
				<!-- 					<h1 class="text-uppercase"> -->
				<!-- 						<strong>Your Favorite Source of Free Bootstrap Themes</strong> -->
				<!-- 					</h1> -->
				<!-- 					<hr> -->
				<!-- 				</div>  -->
				<div class="col-lg-8 mx-auto">
					<!-- 					<p class="text-faded mb-5">Start Bootstrap can help you build -->
					<!-- 						better websites using the Bootstrap CSS framework! Just download -->
					<!-- 						your template and start going, no strings attached!</p> -->
					<a class="btn btn-primary btn-xl js-scroll-trigger btn-loc"
						href="#about">서비스 소개</a>
					<!-- 					<a class="btn btn-light btn-xl js-scroll-trigger btn-loc" href="#about">서비스 소개</a> -->
				</div>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading text-white">오작교 서비스는..</h2>
					<hr class="light my-4">
					<p class="text-faded mb-4">Start Bootstrap has everything you
						need to get your new website up and running in no time! All of the
						templates and themes on Start Bootstrap are open source, free to
						download, and easy to use. No strings attached!</p>
					<a class="btn btn-light btn-xl js-scroll-trigger" href="#services">서비스로
						이동</a>
				</div>
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<jsp:include page="service/daumMap.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</section>

<%-- 	<section class="p-0" id="portfolio">
		<div class="container-fluid p-0">
			<div class="row no-gutters popup-gallery">
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/1.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/1.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/2.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/2.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/3.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/3.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/4.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/4.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/5.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/5.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a class="portfolio-box"
						href="${path}/asset/img/portfolio/fullsize/6.jpg"> <img
						class="img-fluid"
						src="${path}/asset/img/portfolio/thumbnails/6.jpg" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Category</div>
								<div class="project-name">Project Name</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section> --%>

	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading">Let's Get In Touch!</h2>
					<hr class="my-4">
					<p class="mb-5">Ready to start your next project with us?
						That's great! Give us a call or send us an email and we will get
						back to you as soon as possible!</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center">
					<i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
					<p>123-456-6789</p>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>



	<!-- 	<section class="bg-gray text-white"> -->
	<!-- 		<div class="container text-center"> -->
	<!-- 			<h2 class="mb-4">Free Download at Start Bootstrap!</h2> -->
	<!-- 			<a class="btn btn-light btn-xl sr-button" -->
	<!-- 				href="http://startbootstrap.com/template-overviews/creative/">Download -->
	<!-- 				Now!</a> -->
	<!-- 		</div> -->
	<!-- 	</section> -->
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