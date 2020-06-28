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
         left:24%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
}
.img_content p{
		position: absolute;
         top:70%;
         left:16%;
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
	<img src="../resources/images/메인/벨로스터2.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위: mm, 윤거는 224/40 R18 타이어 기준)</div>
	<div><img class="detailimg" src="../resources/images/제원/벨로스터제원.jpg">
	<div class="img_content"><h2>VELOSTER</h2><p>Live Loud</p></div>
	
	
		
		<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_veloster'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	</div>


	<div>
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>가솔린 1.4 터보</th><th>가솔린 1.6 터보</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,240</th><th>4,240</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,800</th><th>1,800</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,400</th><th>1,400</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,650</th><th>2,650</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,561(17") / 1,549(18")</th><th>1,549</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,575(17") / 1,563(18")</th><th>1,563</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>1.4 T-GDi</th><th>1.6 T-GDi</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>1,353</th><th>1,591</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>140/6,000</th><th>204/6,000</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>24.7/1,500~3,200</th><th>27.0/1,500~4,500</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>50</th><th>50</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>