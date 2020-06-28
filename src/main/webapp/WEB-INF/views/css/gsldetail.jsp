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
         left:38%;
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
         width:300px;
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
	<img src="../resources/images/메인/그스리.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위: mm, 윤거 수치는 15인치 타이어 기준, 윤거 수치의 ()는 17인치 타이어 기준)</div>
	<div><img class="detailimg" src="../resources/images/제원/그스리제원.jpg">
	<div class="img_content"><h2>GRAND STAREX Limousine</h2><p>Confident of new Premiums</p></div>
	
			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_grandstarex_limousine'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	</div>
	
	
	
	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>2.5 디젤 리무진 익스클루시브</th><th>2.5 디젤 리무진 듀얼 선루프</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>5,175</th><th>5,175</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>2,000</th><th>2,000</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>2,205(2,245/4WD)</th><th>1,925(1,970/4WD)</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>3,200</th><th>3,200</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,685</th><th>1,685</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,660</th><th>1,660</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>CRDi</th><th>CRDi</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>2,497</th><th>2,497</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>175/3,600</th><th>175/3,600</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>46/2,000~2,250</th><th>46/2,000~2,250</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>75</th><th>75</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>