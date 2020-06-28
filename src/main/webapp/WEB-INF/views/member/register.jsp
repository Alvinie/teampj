<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancel").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				
			});
			
		
			
		})
		
		

		
	//https://melonpeach.tistory.com/45?category=806570
		
		
		
	</script>
<body>
<c:import url="../default/header.jsp"/>
	<section id="container">
		<form action="/member/register" method="post" id="regForm">

			<c:if test="${reg == null}">
				<div class="form-group has-feedback">
					<label class="control-label" for="userId" style="margin-left: 900px; 
							margin-top: 50px;">
						아이디
					</label>
					
					<input
						class="form-control" type="text" id="userId" name="userId" 
						style="width:400px; margin-left: 730px;"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass"
					 style="margin-left: 895px; margin-top: 30px;">
						비밀번호
					</label> 
					<input
						class="form-control" type="password" id="userPass" name="userPass" 
						style="width:400px; margin-left: 730px;"/>
				</div>

				<div class="form-group has-feedback">
					<button class="btn btn-primary" type="submit" id="submit"
							style="margin-left: 850px; margin-top: 50px;">
						회원가입
					</button>
					<button class="cancel btn btn-danger" type="button"
							style="margin-top: 50px;">
						취소
					</button>
				</div>
			</c:if>
			<c:if test="${reg != null }">
				<div>
					<p>${reg.userId}님환영 합니다.</p>


				</div>
			</c:if>
			<c:if test="${alert == false}">
				<p style="color: red;">회원가입 실패! 중복된 아이디 입니다.</p>
			</c:if>
		</form>

	</section>

</body>

</html>