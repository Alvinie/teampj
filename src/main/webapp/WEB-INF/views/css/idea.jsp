<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.max-small {
	margin-bottom: 5%;
}
.div_back{
	max-width:100%;
	background-color:#A3AFC9;
	padding-top: 50px;
}
.div_idea1 {
	width: 1100px;
	height: 200px;
	background-color: #D9E5FF;
	padding-top: 50px;
}
.div_ideabtn button{

	width:350px;
	height:65px;
	border:0;
	outline:0;
	background-color:#002266;
	font-size:15px;
	font-weight:bold;
	color:white;
}
.div_idea2 {
	margin-top:50px;
	width: 200px;
	hegiht: 100px;
}

</style>
</head>
<body>
	<c:import url="../default/header.jsp" />

	<div align="center">
		<div class="div_back">
		<div class="div_idea1">
				<h1>기업이념</h1>
				<h4>현대자동차 그룹의 경영이념체계를 소개합니다.</h4>
		</div>
		</div>
		<div class="div_ideabtn">
		<button type="button" onclick="location.href='idea'">경영철학</button>
		<button type="button" onclick="location.href='idea2'">핵심가치</button>
		<button type="button" onclick="location.href='idea3'">비전</button>
		</div>
		<div class="div_idea2">	
				<h2>경영철학</h2>
		</div>
		<div>
				<h3>Management Philosophy</h3><br>
				<h4>창의적 사고와 끝없는 도전을 통해 새로운 미래를 창조함으로써 인류 사회의 꿈을 실현한다.</h4><br>
				<h2>↑</h2><br>
				<h3>Vision</h3><br>
				<h4>자동차에서 삶의 동반자로</h4><br>
				<h2>↑</h2><br>
				<img class="max-small" src="../resources/images/코어밸류.jpg">
		</div>
	</div>
	<c:import url="../default/footer.jsp" />

</body>
</html>