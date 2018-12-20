<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>주소 추가 페이지</title>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<script type="text/javascript">
	// 추가 버튼 클릭시 주소 추가
	var index = 1;
	function erase(eraseNo, eraseBtn) {
		console.log(eraseNo);
		document.getElementById("addadd").removeChild(document.getElementById(eraseNo));
		document.getElementById("addadd").removeChild(document.getElementById(eraseBtn));
	}
	function addadd(){
		var inputText = document.createElement("input");
		var eraseBtn = document.createElement("input");
		inputText.placeholder = "주소를 입력하세요" ;
		inputText.setAttribute("type", "text");
// 		jbBtn.setAttribute("class", "btn-primary");
		inputText.setAttribute("id", "addNo" + index);
		
		document.getElementById("addadd").appendChild(inputText);
		eraseBtn.value = "-";
		eraseBtn.setAttribute("type", "button");
		eraseBtn.setAttribute("id", "eraseBtn"  + index);
		eraseBtn.setAttribute("onclick", "erase('addNo" + index + "', 'eraseBtn" + index + "')");
		document.getElementById("addadd").appendChild(eraseBtn);
		index = index + 1;
	
	}
	
	// 취소 버튼 클릭시 로그인 화면으로 이동
	function redirect() {
		window.location.href = '${path}/index.jsp';
	}
	
</script>

<link href="${path}/asset/css/creative.css" rel="stylesheet">
<link href="${path}/asset/css/sign.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${path}/asset/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${path}/asset/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- source codepen.io -->
<link
	href="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Plugin CSS -->
<link href="${path}/asset/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">
</head>
<body>



	<jsp:include page="../nav.jsp"></jsp:include>

	<div id="my_container">
		<form method="post" action="addressInsert.go" name="address" class="address"
			autocomplete="off">
			<div class="row signRow signUpColor">
				<div
					class="wrapper large-5 columns large-centered small-7 small-centered">
					<div class="row header">
						<div class="large-12 columns">나의 주소 입력</div>
					</div>
				
					<!-- 주소 -->
					<div class="row password">
						<div class="large-9 columns large-centered" id="addadd">
							<label for="address"><i class="fa font">주소</i></label> <input
								id="address" type="text" name="address" placeholder="주소를 입력하세요."
								required autocomplete="off" />
								<input type="checkbox" name = "isMain" value="true" checked> 
						
								<input type="button" value="+" onclick="addadd()">
						</div>
					</div>
					
					
					<!-- 저장하기 -->
					<br>
					<div class="row submit">
						<div class="large-9 columns large-centered btnTwo">
							<input type="button" value="CANCEL" onclick="redirect()">
							<input type="submit" value="SAVE">
						</div>
					</div>
					<br>
				</div>
			</div>
		</form>
	</div>

	<script src="${path}/asset/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/asset/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${path}/asset/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${path}/asset/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script
		src="${path}/asset/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="${path}/asset/js/creative.js"></script>
	
	<!-- sourceURL=pen.js -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js'></script>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script
		src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js'></script>
	<!-- Custom scripts for this template -->
	<script src="${path}/asset/js/loginPop.js"></script>
	
	<!-- Custom scripts for this template -->
	
	
	
</body>
</html>