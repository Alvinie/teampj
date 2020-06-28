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
         left:23%;
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
	<img src="../resources/images/메인/소나타2.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위 : mm, 윤거는 235/45R18 타이어 기준)</div>
	<img class="detailimg" src="../resources/images/제원/소나타제원.jpg">
	<div class="img_content"><h2>SONATA</h2><p>일상을 바꾸는 경험</p></div>


			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_sonata'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	

</div>
	<div align="center">
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>스마트스트림 가솔린 2.0</th><th>스마트스트림 가솔린 1.6 터보</th><th>스마트스트림 LPi 2.0</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,900</th><th>4,900</th><th>4,900</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,860</th><th>1,860</th><th>1,860</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,445</th><th>1,445</th><th>1,445</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,840</th><th>2,840</th><th>2,840</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,623(17") / 1,618(18")</th><th>1,623(17") / 1,618(18") / 1,610(19")</th><th>1,633(16") / 1,623(17") / 1,618(18")</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,630(17") / 1,625(18")</th><th>1,630(17") / 1,625(18") / 1,617(19")</th><th>1,640(16") / 1,630(17") / 1,625(18")</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>Smartstream G2.0</th><th>Smartstream G1.6T</th><th>Smartstream L2.0</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>1,999</th><th>1,598</th><th>1,999</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>160/6,500</th><th>180/5,500</th><th>146/6,000</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>20.0/4,800</th><th>27.0/1,500~4,500</th><th>19.5/4,200</th>
	</tr>
	<tr>
	<th>연료탱크용량 (ℓ)</th><th>60</th><th>60</th><th>64(총 용량 80ℓ의 80% 충전)</th>
	</tr>
	</table>
	</div>
	</div>
	
	<c:import url="../default/footer.jsp" />
</body>
</html>