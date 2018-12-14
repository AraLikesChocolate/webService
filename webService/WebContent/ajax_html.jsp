<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/asset/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#sign').click(function() {
			alert("asdf");
// 			document.getElementById("my_container").
			$.get("sign2.jsp", function(aa, bb){
				alert(aa);
				$("#my_container").html(aa);
			});
			// 		return false;
		});
	});
</script>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>  
<%-- <%@ include file="nav.jsp" %> --%>
<br><br>
	<button id="sign">누르기</button>
	<div id="my_container">asdf</div>
</body>
</html>