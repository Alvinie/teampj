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
         text-shadow: 0 0 5px rgba(0,0,0,.7);
}
.img_content p{
		position: absolute;
         top:70%;
         left:35%;
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
	<img src="../resources/images/메인/펠리셰이드2.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위: mm)</div>
	<div><img class="detailimg" src="../resources/images/제원/펠리셰이드제원.jpg">
	<div class="img_content"><h2>PALISADE</h2><p>당신만의 영역을 찾아서</p></div>


			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_palisade'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	

</div>


	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>디젤 2.2</th><th>가솔린 3.8</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,980</th><th>4,980</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,975</th><th>1,975</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,750</th><th>1,750</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,900</th><th>2,900</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,708</th><th>1,708</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,716</th><th>1,716</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>e-VGT</th><th>GDi</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>2,199</th><th>3,778</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>202/3,800</th><th>295/6,000</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>45.0/1,750~2,750</th><th>36.2/5,200</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>71</th><th>71</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>