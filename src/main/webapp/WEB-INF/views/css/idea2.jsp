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
	width: 200px;
	hegiht: 100px;
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
	margin-bottom: 30px;
    border: 1px solid #e4dcd3;
}
.ideatable_left{
	float:left;
	width:450px;
	height:120px;
	background-color:#f6f3f2;
	display: inline-block;
    font-size:15px;
    vertical-align: middle;
}

.ideatable_img{
	vertical-align:middle;
	margin-left: 80px;
	margin-top: 35px;
}

.img_h3{
	margin-top: 35px;
	margin-right: 50px;
}

.ideatable_right{
	float:left;
	width:600px;
	heigt:120px;
	font-size:15px;
	background-color: white;
	margin-top: 35px;
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
		<div class="ideamain_1"><h2>핵심가치</h2></div>
		<div class="ideamain_2">5대 핵심가치는 현대자동차의 조직과 구성원에게 내재되어 있는 성공 DNA이자 더 나은 미래를 향하여 새롭게 발전시키고 있는 구체적인 행동양식입니다.<br>
			현대자동차는 5대 핵심가치를 통해 글로벌 기업의 위상에 맞는 선진문화를 구축하며 성공 DNA를 더욱 발전시켜 나갈 것입니다.</div>
		</div>
		<div class="ideatable" align="center">
		<div class="ideatable_1">
			<div class="ideatable_left"><img class="ideatable_img" src="../resources/images/핵심가치1.jpg" align="left">
			<h3 class="img_h3">CUSTOMER<br>고객 최우선</h3></div>
			<div class="ideatable_right"><b>최고의 품질과 최상의 서비스를 제공함으로써 모든 가치의 중심에<br>고객을 최우선으로 두는 고객 감동의 기업 문화를 조성한다.</b></div>
		</div>
		<div class="ideatable_1">
			<div class="ideatable_left"><img class="ideatable_img" src="../resources/images/핵심가치2.jpg" align="left">
			<h3 class="img_h3">CHALLENGE<br>도전적 실행</h3></div>
			<div class="ideatable_right"><b>현실에 안주하지 않고 새로운 가능성에 도전하며 '할 수 있다'는<br>열정과 창의적 사고로 반드시 목표를 달성한다.</b></div>
		</div>
		<div class="ideatable_1">
			<div class="ideatable_left"><img class="ideatable_img" src="../resources/images/핵심가치3.jpg" align="left">
			<h3 class="img_h3">COLLABORATION<br>소통과 협력</h3></div>
			<div class="ideatable_right"><b>타 부문 및 협력사에 대한 상호 소통과 협력을 통해<br>'우리'라는 공동체 의식을 나눔으로써 시너지효과를 창출한다.</b></div>
		</div>
		<div class="ideatable_1">
			<div class="ideatable_left"><img class="ideatable_img" src="../resources/images/핵심가치4.jpg" align="left">
			<h3 class="img_h3">PEOPLE<br>인재 존중</h3></div>
			<div class="ideatable_right"><b>우리 조직의 미래가 각 구성원들의 마음가짐과 역량에 달려 있음을 믿고<br>자기계발에 힘쓰며, 인재 존중의 기업문화를 만들어 간다.</b></div>
		</div>
		<div class="ideatable_1">
			<div class="ideatable_left"><img class="ideatable_img" src="../resources/images/핵심가치5.jpg" align="left">
			<h3 class="img_h3">GLOBALITY<br>글로벌 지향</h3></div>
			<div class="ideatable_right"><b>문화와 관행의 다양성을 존중하며, 모든 분야에서 글로벌 최고를 지향하고<br>글로벌 기업시민으로서 존경 받는 개인과 조직이 된다.</b></div>
		</div>
			
		</div>
		<c:import url="../default/footer.jsp" />
</body>
</html>