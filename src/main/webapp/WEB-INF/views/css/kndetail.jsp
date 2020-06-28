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
         left:21%;
         transform: translate(-50%, -50%);                                                                   
         font-size:45px;
         color: white;
         z-index: 2;
         text-align: center;
}
.img_content p{
		position: absolute;
         top:70%;
         left:44%;
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
	<img src="../resources/images/메인/코나.jpg">
	<div><span><h1>제원 정보</h1></span></div>
	<div><h3>Dimension</h3> (단위: mm, 윤거는 235/45 R18 타이어 기준, () 루프랙 선택 시)</div>
	<div><img class="detailimg" src="../resources/images/제원/코나제원.jpg">
	<div class="img_content"><h2>KONA</h2><p>유쾌한 변화의 시작</p></div>



			<c:if test = '${member != null}'>
	<button class="mycarbt" type="button" onclick="location.href='../cars/estimate_kona'" style="cursor:pointer">견적 보기</button>
	</c:if>
	<c:if test = '${member == null}'>
	<button class="mycarbt" type="button" onclick="location.href='../'" style="cursor:pointer">견적 보기</button>
	</c:if>
	
</div>




	<div>
	<table class="detail">
	<div><h3>Specifications</h3></div>
	<tr class="trcolor">
	<th>분류</th><th>가솔린 1.6 터보</th><th>디젤 1.6</th>
	</tr>
	<tr>
	<th>전장 (mm)</th><th>4,165</th><th>4,165</th>
	</tr>
	<tr>
	<th>전폭 (mm)</th><th>1,800</th><th>1,800</th>
	</tr>
	<tr>
	<th>전고 (mm)</th><th>1,550(1,565)</th><th>1,550(1,565)</th>
	</tr>
	<tr>
	<th>축간거리 (mm)</th><th>2,600</th><th>2,600</th>
	</tr>
	<tr>
	<th>윤거 전 (mm)</th><th>1,575(16") / 1,563(17") / 1,559(18")	</th><th>1,575(16") / 1,563(17") / 1,559(18")</th>
	</tr>
	<tr>
	<th>윤거 후 (mm)</th><th>1,584(16") / 1,572(17") / 1,568(18")</th><th>1,584(16") / 1,572(17") / 1,568(18")</th>
	</tr>
	<tr>
	<th>엔진형식</th><th>1.6 T-GDi</th><th>1.6 e-VGT</th>
	</tr>
	<tr>
	<th>배기량 (cc)</th><th>1,591</th><th>1,598</th>
	</tr>
	<tr>
	<th>최고출력 (PS/rpm)</th><th>177 / 5,500</th><th>136 / 4,000</th>
	</tr>
	<tr>
	<th>최대토크 (kgf·m/rpm)</th><th>27.0/1,500 ~ 4,500</th><th>32.6/2,000 ~ 2,250</th>
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