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
	width: 1120px;
	height:601px;
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
	background-color: rgba(255,255,255,0.1);
	font-size:15px;
	font-weight:bold;
	color:white;
	background-image: none;
	border-color: white;
	border:solid;
}
.img_content{
		position: absolute;
         top:20%;
         left:25%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
}
.img_content p{
		position: absolute;
         top:70%;
         left:30%;
         width:250px;
         transform: translate(-50%, -50%);                                                                   
         font-size:20px;
         color: white;
         z-index: 2;
         text-align: center; 
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div align="center">
	<img src="../resources/images/메인/그랜져2.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위: mm, 윤거는 245/40R19 타이어 기준)</div>
	<div><img class="detailimg" src="../resources/images/제원/그랜져제원.jpg">
	<div class="img_content"><h2>GRANDEUR</h2><p>성공을 새롭게 정의하다</p></div>
	
	
			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_grangeur'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	</div>
	
	
	

	<div>
	<div>
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>스마트스트림 가솔린 2.5</th><th>가솔린 3.3</th><th>LPi 3.0</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,990</th><th>4,990</th><th>4,990</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,875</th><th>1,875</th><th>1,875</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,470</th><th>1,470</th><th>1,470</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,885</th><th>2,885</th><th>2,885</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,612(17˝) / 1,607(18˝) / 1,602(19˝)</th><th>1,607(18˝) / 1,602(19˝)</th><th>1,612(17˝) / 1,607(18˝) / 1,602(19˝)</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,620(17˝) / 1,615(18˝) / 1,610(19˝)</th><th>1,615(18˝) / 1,610(19˝)</th><th>1,620(17˝) / 1,615(18˝) / 1,610(19˝)</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>Smartstream G2.5</th><th>GDi</th><th>LPi</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>2,497</th><th>3,342</th><th>2,999/th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>198/6,100</th><th>290/6,400</th><th>235/6,000</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>25.3/4,000</th><th>35.0/5,200</th><th>28.6/4,500</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>70</th><th>70</th><th>80(80% 충전시 64ℓ)</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>