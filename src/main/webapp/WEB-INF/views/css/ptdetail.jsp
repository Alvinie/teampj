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
         left:30%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
}
.img_content p{
		position: absolute;
         top:70%;
         left:20%;
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
	<img src="../resources/images/메인/포터2.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위 : mm)</div>
	<div><img class="detailimg" src="../resources/images/제원/포터2제원.jpg">
	<div class="img_content"><h2>PORTER2 Electric</h2><p>새로운 친환경 EV트럭</p></div>


			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_porter2'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	
</div>



	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>일렉트릭</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>5,150</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,740</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,970</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,810</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,485</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,320</th>
	</tr>
	<tr>
	<th>적재함 장 (mm)</th><th>2,860</th>
	</tr>
	<tr>
	<th>적재함 폭 (mm)</th><th>1,630</th>
	</tr>
	<tr>
	<th>적재함 고 (mm)</th><th>355</th>
	</tr>
	<tr>
	<th>상면고 (mm)</th><th>800</th>
	</tr>
	<tr>
	<th>모터 형식</th><th>EM14</th>
	</tr>
	<tr>
	<th>최대 출력 (kW)</th><th>135</th>
	</tr>
	<tr>
	<th>최대 토크 (Nm)</th><th>395</th>
	</tr>
	<tr>
	<th>배터리 (kWh)</th><th>58.8</th>
	</tr>
	<tr>
	<th>에니저 소비효율 (km/kWh)</th><th>3.1</th>
	</tr>
	<tr>
	<th>1회 충전 주행거리 (km)</th><th>211</th>
	</tr>
	<tr>
	<th>충전시간</th><th>100kW 급속충전기 기준 54분 (0-80%) /<br>
	7.2kW 완속충전기 기준 9시간 30분</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>