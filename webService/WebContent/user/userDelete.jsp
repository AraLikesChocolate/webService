<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<script src="${path}/asset/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
	function redirect() {
		window.location.href = '${path}/index.jsp';
	}
	// 비밀번호 미입력시 경고창
	function checkValue() {
		if (!document.userDelete.password.value) {
			alert("비밀번호를 입력하지 않았습니다.");
			return false;
		}
	}
	var isSame = '';
	$(function() {
		var password = $('#password');
		password.blur(function() {
			var url = "IdCheckForm.go?password="
					+ document.getElementById('password').value;
			$.post(url, function(data, status) {
				if (status == "success") {
					isSame = data;
					console.log(isSame.length)
					if (isSame.length == 6) {
						$('#pwCheck').val("회원탈퇴가 가능합니다.");
						$("#exit").prop("disabled", false);
					} else {
						$('#pwCheck').val("잘못된 비밀번호입니다.");
						password.val('');
						$("#exit").prop("disabled", true);
					}
				}
			});
		});
	});
</script>

</head>
<body>

	<br>
	<br>
	<b><font size="6" color="gray">내 정보</font></b>
	<br>
	<br>
	<br>
	<form name="userDelete" method="post" action="userDelete.go"
		onsubmit="return checkValue()">

		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="password" name="password"
					maxlength="50"></td>
				<td><input type="text" id="pwCheck" maxlength="50"></td>
			</tr>
		</table>

		<br> <input type="button" value="취소" onclick="redirect()">
		<input type="submit" id="exit" value="탈퇴" disabled="disable	d" onsubmit="return true" />
	</form>


	<!-- <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> -->
</body>
</html>