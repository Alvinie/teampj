<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<!-- 예제 시작 -->
<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style type="text/css">
.swiper-container {
	width:100%;
	height:auto;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	width:100%;
	height:auto;
}
.mbt{
	bottom:40%;
	left:16%;
	width:120px;
	height:40px;
	border:0;
	outline:0;
	position:absolute;
	background-color:#002266;
	font-size:13px;
	font-weight:bold;
	color:white;
}
</style>

<!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img src="../resources/images/메인/그랜져.jpg">
		<button class="mbt" type="button" onclick="location.href='grdetail'" style="cursor:pointer" >자세히 보기</button></div>
		<div class="swiper-slide"><img src="../resources/images/메인/소나타.jpg">
		<button type="button" onclick="location.href='sndetail'" style="cursor:pointer" >자세히 보기</button></div>
		<div class="swiper-slide"><img src="../resources/images/메인/팰리셰이드.jpg">
		<button class="mbt" type="button" onclick="location.href='pldetail'" style="cursor:pointer" >자세히 보기</button></div>
		<div class="swiper-slide"><img src="../resources/images/메인/벨로스터.jpg">
		<button class="mbt" type="button" onclick="location.href='bldetail'" style="cursor:pointer" >자세히 보기</button></div>
		<div class="swiper-slide"><img src="../resources/images/메인/아방.jpg">
		<button class="mbt" type="button" onclick="location.href='avdetail'" style="cursor:pointer" >자세히 보기</button></div>
	</div>
	<!-- 네비게이션 지정 -->
	<div class="swiper-button-next swiper-button-black"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev swiper-button-black"></div><!-- 이전 버튼 -->
</div>

<script>

var coverflowSetting = {
	slideShadows : true, // 슬라이더 그림자 : 3D 효과를 강조하기 위한 회전시 흐릿한 효과
	rotate : 50, // 슬라이더 회전 각 : 클수록 슬라이딩시 회전이 커짐
	stretch : 0, // 슬라이더간 거리(픽셀) : 클수록 슬라이더가 서로 많이 겹침
	depth : 100, // 깊이 효과값 : 클수록 멀리있는 느낌이 강해짐
	modifier : 1, // 효과 배수 : 위 숫자값들에 이 값을 곱하기 처리하여 효과를 강하게 처리함
}

var myswiper = null;

function init(){

	if(myswiper != null) myswiper.destroy();

	myswiper = new Swiper( '.swiper-container', {
		effect : 'coverflow', // 커버플로우 효과 사용
		coverflowEffect : coverflowSetting, // 커버플로우 설정
		loop : true, // 슬라이드 반복

		autoplay : { // 자동 재생
			delay : 3000, // 딜레이 0
		},
		//speed : 2000, // 슬라이드 속도 2초

		navigation : {
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명		
		},
		pagination : { // 페이징 설정
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
	});
	$( ".swiper-slide" ).hover(
			function() {
				myswiper .autoplay.stop();
			  }, 
			function() {
			    myswiper .autoplay.start();
			  });
	
}

init();

</script>
<!-- 예제 종료 -->


</body>
</html>