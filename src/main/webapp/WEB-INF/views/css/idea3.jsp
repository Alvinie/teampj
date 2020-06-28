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
.ideamain_1{
	margin-top:50px;
	margin-bottom:10px;
}

.ideamain_2{
	margin-top:15px;
	margin-bottom:50px;
	font-size: 15px;
	font-weight: bold;
}
.ideatable{
	align-content: center;
}
.ideatable_1{
	display: table;
    border: 1px solid #e4dcd3;
    margin-bottom: 50px;
}
.ideatable_left{
	float:left;
    vertical-align: middle;
    margin-top:20px;
    margin-left:20px;
    font-size: 15px;
}
.ideatable_right{
	float:left;
	margin-right:20px;
	margin-bottom: 20px;
}
.ideatable_img{
	vertical-align:middle;
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
		</div>
		<div align="center">
		<div class="ideamain_1"><h2>비전</h2></div>
		<div class="ideamain_2">현대자동차그룹이 반드시 성취해야 할 향후 10년 간의 사업 목표로, 구체적인 경영전략 및 실행과제를 통해 비전을 달성해나갈 것입니다.</div>
		<div class="ideatable">
		<div class="ideatable_1" align="center">
			<div class="ideatable_left">
			<h4>자동차에서 삶의 동반자로 Lifetime partner in automobiles and beyond</h4>
			인간중심적이고 환경친화적인 혁신 기술과 포괄적 서비스를 기반으로 최상의 이동성을<br>
			구현하여 삶을 더욱 편리하고 즐겁게 영위할 수 있는 새로운 공간을 제공한다.</div>
			<div class="ideatable_right"><img class="ideatable_img" src="../resources/images/비전1.jpg"></div>
			</div>
		</div>
		</div>
<c:import url="../default/footer.jsp" />
</body>
</html>