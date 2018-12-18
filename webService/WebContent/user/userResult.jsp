<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3;url=${path}/index.jsp">
<title>userResult.jsp</title>
</head>
<body>

	<h2>수정 결과...</h2>
	<br>
	<br>
	<div>${userResult}</div>
</body>
</html>