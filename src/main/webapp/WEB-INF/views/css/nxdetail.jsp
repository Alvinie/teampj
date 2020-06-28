<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

.detailimg{
	max-width:100%
}
.detail{
	width: 921px;
	height:636px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-size: 14px;
    letter-spacing: -.4px;
    color: #000;
    line-height: 22px;
    margin-bottom: 5%;
}

.detail tr>th{
height:50px;
	border: 1px solid silver;
}

.trcolor{
	background-color:#002266;
	color:white;
}
.mycarbt{
	bottom:60%;
	left:16%;
	width:150px;
	height:50px;
	outline:0;
	position:absolute;
	background-color: rgba(140,140,140,0.5);
	font-size:15px;
	font-weight:bold;
	color:white;
	background-image: none;
	border-color:white;
	border:solid;
}
.img_content{
		position: absolute;
         top:20%;
         left:21%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
         border-color: black;
         text-shadow: 0 0 5px rgba(0,0,0,.7);
}
.img_content p{
		position: absolute;
         top:70%;
         left:34%;
         width:250px;
         transform: translate(-50%, -50%);                                                                   
         font-size:20px;
         color: white;
         z-index: 2;
         text-align: center; 
         border-color: black;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div align="center">
	<img src="../resources/images/메인/넥소.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위 : mm / ( )는 루프랙 장착 시, 윤거는 19인치 타이어 기준)</div>
	<div><img class="detailimg" src="../resources/images/제원/넥소제원.jpg">
	<div class="img_content"><h2>NEXO</h2><p>눈 앞의 미래</p></div>



			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_nexo'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	
</div>



	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>Modern | 17인치 타이어</th><th>Premium | 19인치 타이어</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,670</th><th>4,670</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,860</th><th>1,860</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,630</th><th>1,630</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,790</th><th>2,790</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,618</th><th>1,614</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,629</th><th>1,625</th>
	</tr>
	<tr>
	<th>모터 최대 출력</th><th>113kW/154PS (3,000~4,600 rpm)</th><th>113kW/154PS (3,000~4,600 rpm)</th>
	</tr>
	<tr>
	<th>모터 최대 토크</th><th>40.3kgf·m/395N·m</th><th>40.3kgf·m/395N·m</th>
	</tr>
	<tr>
	<th>최고속도 (km/h)</th><th>177</th><th>179</th>
	</tr>
	<tr>
	<th>구동방식</th><th>전륜구동</th><th>전륜구동</th>
	</tr>
	<tr>
	<th>CO2 배출량 (g/km)</th><th>0</th><th>0</th>
	</tr>
	<tr>
	<th>항속거리 (km)*100% 완충 기준</th><th>609</th><th>593</th>
	</tr>
	<tr>
	<th>연료탱크용량 (kg/ℓ)</th><th>6.33/156.6</th><th>6.33/156.6</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>