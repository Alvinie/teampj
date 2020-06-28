<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
		ul li{	display:inline;	padding:0 10px; }
		a {text-decoration:none; color:#000000;}
	</style>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
	
		
		$("#memberUpdateBtn").on("click", function(){
			location.href="../member/memberUpdateView";
		})
		
		
		
	})
</script>
<body>
<div>
	
	<table align="center">
	<tr>
	<th><a href="../css/index" class="none"><img src="../resources/images/현대로고.png"></a></th>
	<th>
			<ul>
			<li>
					<a href="../css/model">모델</a>
			</li>
			<li></li>
			<li></li>
			<li>
				<c:if test = '${member != null}'>
					<a href="../board/list">고객센터</a>
				</c:if>
				<c:if test = '${member == null}'>
					<a href="/">고객센터</a>
				</c:if>
			</li>
			<li></li>
			<li></li>
			<li>
					<a href="../css/idea">회사소개</a>
			</li>
			<li></li>
			<li></li>
			<li>
				<c:if test = '${member != null}'>
					<a href="../prices/plist?userId=${member.userId} ">견적보기</a>
				</c:if>
				<c:if test = '${member == null}'>
					<a href="/">견적보기</a>
				</c:if>
			</li>
			<li></li>
			<li></li>
			<li>
				<c:if test = '${member != null}'>
					<a href="../member/logout">로그아웃</a>
				</c:if>
				<c:if test = '${member == null}'>
					<a href="/">로그인</a>
				</c:if>
			</li>
			
		</ul>	
	</th>
	<th style="padding-left: 100px;">
	<!-- 추가 nav -->
		<c:if test="${member != null}">
			<p>${member.userId}님 안녕하세요.</p><button id="memberUpdateBtn" type="button">회원정보 수정</button>
		</c:if>
	</th>
	</tr>
	
	</table>

		<hr style="margin-bottom: 0px;">
		</div>
</body>
</html>
