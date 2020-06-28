<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.inner_color {
	width: 85px;
	height: 85px;

}

.content {
	margin: 0px 150px 0px 150px;
	
}

.left_menu {
	width: 800px;
	float: left;
}

.right_menu {
	width: 600px;
	float: right;
	padding-left: 100px;
	border-left: 1px solid #BDBDBD;
}

.option_list {
	list-style: none;
}

.option_list li {
	padding-bottom: 10px;
	float: left;
}
.estiSave {
	display: inline-block;
	width: 150px;
	text-align: center;
	background-color: #2964e0;
	border-color: #2964e0;
	color: #FFFFFF;
	border-radius: 44px;
	font-size: 18px;
	background-color: #2964e0;
}

.estiSaveDiv {
border:2px solid;
	display: none;
	position: absolute;
	width: 400px;
	height: 450px;
	margin-left: 650px;
	z-index: 1;
	background: #FFFFFF;
}
.estiSaveDiv ul{
list-style: none;
}
</style>
<script type="text/javascript">
function metal(){
		document.getElementById("imagess").src="../resources/images/estimate/grandstarex/grandstarex_metal.png";
}
function itemSum(frm)
{
   var sum = 0;
   var coms;
   var count = frm.chkbox.length;
   for(var i=0; i < count; i++ ){
       if( frm.chkbox[i].checked == true ){
	    sum += parseInt(frm.chkbox[i].value);
       }
   }
   coms=String(sum+22090000);
   document.getElementById("p").value = coms.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
}
function estiSaveDiv() {
	var con = document.getElementById("estiSDiv");
	con.style.display = "block"
}
function btn_close(){
	var con = document.getElementById("estiSDiv");
	con.style.display="none"
}


</script>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp" />
	
	<div class="content	">
		<div align="left" class="left_menu">
			<div>
				<span><h1>견적내기</h1></span> 
			</div>
			<section>
				<div>
					<header>
						<div>
							<h2>그랜드 스타렉스 Style</h2>
							<span style="color: gray;">그랜드 스타렉스 자가용 밴 3인승 디젤 매뉴얼 Style</span>
						</div>
						<div align="right">
							<span style="font-size: 19px;">차량 가격</span><b style="font-size: 30px; margin-left: 30px;">22,090,000 원</b>
						</div>
					</header>
				</div>
				<div align="right">
					
				</div>
				<div>
				<img id="imagess" src="../resources/images/estimate/grandstarex/grandstarex_metal.png">
				</div>
				<div>
				<span style="color: gray;">*상기 이미지는 색상선택을 돕기 위한 예시로 실제와 다를수 있습니다.</span>
				</div>
				<div align="right" style="margin-top: 20px; padding-top: 50px;">
				<h2></h2>
				<span style="font-size: 19px;">총 차량가격</span>
				<b><input id="p" value="0" type="text" style="width:150px; border: none; text-align: right; font-size: 20px; font-style: Malgun Gothic">원</b>
				</div>
				<div align="right" style="margin-top: 20px;">
					<a href="javascript:estiSaveDiv()" class="estiSave">견적 저장</a>
				</div>
			</section>
		</div>
		<div class="estiSaveDiv" id="estiSDiv">
			<form  id="option" action="../prices/savePrice" method="post">
				<ul>
						
					<li><p><b>차량 종류</b></p><select name="car">
							<option value="그랜드 스타렉스 자가용 밴 3인승 디젤 매뉴얼 Style">그랜드 스타렉스</option>
					</select></li>
					<br>
					<li><p><b>차량 색</b></p><select name="color">
							<option value="metal">metal</option>
					</select></li>
					<p><b>추가 옵션</b></p>
					<div>
					<input type="hidden" name="userId" value="${member.userId }">
					<li><input type="checkbox" name="option1" value="7단 DCT">7단DCT</li><br>
					<li><input type="checkbox" name="option2" value="프리미엄 시트패키지">프리미엄시트패키지</li><br>
					<li><input type="checkbox" name="option3" value="파노라마 선루프">파노라마선루프</li><br>
					<li><input type="checkbox" name="option4" value="현대 스마트센서">현대스마트센서</li><br>
					<li><input type="checkbox" name="option5" value="8인치 네비게이션">8인치 네비게이션</li><br><br>
					<li><input type="submit" value="견적 정보 저장"><button type="button" onclick="btn_close()">취소</button>  </li>
				</ul>
			</form>
		</div>
		<div class="right_menu">
			<div>
				<span><h1>옵션</h1></span>
			</div>
			<section>
				<div>
					<p>외부색상</p>
					<div>
						<ul>
							<li>
								<button class="inner_color" onclick="metal();"	
									style="background: url('../resources/images/estimate/grandstarex/metal-exterior.png');"></button>
							</li>
						</ul>
					</div>
				</div>
			</section>
		<form name="form">	
			<section>
				<div>
					<p>상세 품목</p>
					<ul class="option_list">
						<li><label><img
								src="../resources/images/estimate/option/paddleshift_s.jpg">
								<p>7단 DCT</p>
								<p>1,800,000원</p><input name="chkbox" type="checkbox" value="1800000" onclick="itemSum(this.form);">
						</label></li>
						<li><label> <img
								src="../resources/images/estimate/option/pre_seat_s.jpg">
								<p>프리미엄 시트 패키지</p>
								<p>980,000원</p><input name="chkbox" type="checkbox" value="980000" onclick="itemSum(this.form);">
						</label></li>
						<li><label> <img
								src="../resources/images/estimate/option/panoramasunroof_s.jpg">
								<p>파노라마 선루프</p>
								<p>850,000원</p><input name="chkbox" type="checkbox" value="850000" onclick="itemSum(this.form);">
						</label></li>
						<li><label> <img
								src="../resources/images/estimate/option/smart_s.jpg">
								<p>현대 스마트센서</p>
								<p>1,500,000원</p><input name="chkbox" type="checkbox" value="1500000" onclick="itemSum(this.form);">
						</label></li>
						<li><label> <img
								src="../resources/images/estimate/option/navi_s.jpg">
								<p>8인치 네비게이션</p>
								<p>250,000원</p><input name="chkbox" type="checkbox" value="250000" onclick="itemSum(this.form);">
						</label></li>
					</ul>
				</div>
			</section>
			</form>
		</div>
	</div>
	<!-- 
<c:import url="../default/footer.jsp" />
 -->
</body>
</html>			