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
         left:29%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
}
.img_content p{
		position: absolute;
         top:70%;
         left:25%;
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
	<img src="../resources/images/메인/그스.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위 : mm, 윤거는 235/45R18 타이어 기준)</div>
	<div><img class="detailimg" src="../resources/images/제원/그스제원.jpg">
	<div class="img_content"><h2>GRAND STAREX</h2><p>삶의 스펙트럼이 넓어지다</p></div>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_grandstarex'" style="cursor:pointer">견적 보기</button></div>
	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>2.5 디젤 왜건</th><th>2.5 디젤 밴</th><th>2.4 LPi 왜건</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>5,150</th><th>5,150</th><th>5,150</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,920</th><th>1,920</th><th>1,920</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,925(1,970/4WD)</th><th>1,935</th><th>1,925</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>3,200</th><th>3,200</th><th>3,200</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1685</th><th>1685</th><th>1685</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1660</th><th>1660</th><th>1660</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>CRDi</th><th>CRDi</th><th>LPi</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>2,497</th><th>2,497</th><th>2,497</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>140/3,600(M/T),<br>175/3,600(A/T)</th><th>140/3,600(M/T),<br>175/3,600(A/T)</th>
	<th>159/5,500</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>36/1,500~2,500(M/T),<br>46/2,000~2,250(A/T)</th><th>36/1,500~2,500(M/T),<br>46/2,000~2,250(A/T)</th>
	<th>23/4,250</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>75</th><th>75</th><th>83</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>