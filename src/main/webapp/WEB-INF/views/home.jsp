<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Home</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.head {
	height: 50px;
}

.head th {
	padding-top: 10px;
}

.head ul {
	padding-top: 10px;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		
		
		$("#registerBtn").on("click", function(){
			location.href="member/register";
		})
		
		
		$("#memberUpdateBtn").on("click", function(){
			location.href="member/memberUpdateView";
		})
		
		
		
	})
</script>
<body>
	<div class="head"><c:import url="./default/header.jsp" /></div>
	<div align="center"><form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			<div style="margin-top: 100px;">
				<label for="userId" style="margin-top: 30px;">아이디 </label>
				<div>
					<input class="form-control" type="text" id="userId" name="userId"
						style="width: 400px;">
				</div>
			</div>

			<div style="margin-top: 30px;">
				<label for="userPass" style="margin-top: 30px;">비밀번호 </label> 
				<input class="form-control" type="password" id="userPass"
					name="userPass" style="width: 400px;">
			</div>

			<div>
				<button type="submit" class="btn btn-primary" style="margin-top: 50px; margin-right: 25px;" >로그인</button>
				<button id="registerBtn" class="btn btn-success" type="button" style="margin-top: 50px;">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님환영 합니다.</p>
				<button id="memberUpdateBtn" type="button">회원정보 수정</button>
				<button id="logoutBtn" type="button">로그아웃</button>

			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
	</div>
</body>
</html>