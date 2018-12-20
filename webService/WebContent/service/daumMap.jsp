<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <link href="${pageContext.request.contextPath}/asset/css/creative.css" rel="stylesheet">  --%>
<div class="map_wrap">
	<div id="map"
		style="width: 100%; height: 400px; position: relative; overflow: hidden;"></div>
	<!-- 		<div class="hAddr"> -->
	<!-- 			<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span> -->
	<!-- 		</div> -->
</div>
<form action="FrontController" class="daumMapForm"
	style="transform: translateY(20%); padding-left: 15px; padding-right: 15px;">
	<div class="row btnTwo2" style="margin: 0 auto;">
			<input type="text" id="start" name="start" readonly="readonly" placeholder="출발지를 드래그 해주세요.">
			<input type="text" id="arrive" name="arrive" readonly="readonly" placeholder="도착지를 드래그 해주세요.">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="검색">
		
	</div>
</form>
