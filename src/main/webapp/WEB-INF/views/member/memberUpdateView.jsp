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

.container {
	margin-top: 50px;
	height: 750px;
}

.footer {
	height: 105px;
	background: #393939;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cancel").on("click", function() {

			location.href = "../css/index";

		})

		$("#submit").on("click", function() {
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}

		});

		$("#memberDeleteBtn").on("click", function() {
			location.href = "../member/memberDeleteView";
		})

	})
</script>
<body>
	<div class="head">
		<c:import url="../default/header.jsp" />
	</div>
	<div align="center" style="height: 750px;">
		<section id="container">
			<form action="/member/memberUpdate" method="post">
				<div class="form-group has-feedback" style="margin-top: 50px;">
					<label class="control-label" for="userId" style="margin-top: 50px;">
						아이디 </label> <input class="form-control" type="text" id="userId"
						name="userId" value="${member.userId}" readonly="readonly"
						style="width: 400px;" />
				</div>

				<div class="form-group has-feedback">
					<label class="control-label" for="userPass"
						style="margin-top: 30px;"> 비밀번호 </label> <input
						class="form-control" type="password" id="userPass" name="userPass"
						style="width: 400px;" />
				</div>

				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit"
						style="margin-top: 50px;">회원정보수정</button>
					<button id="memberDeleteBtn" class="cancel btn btn-danger"
						type="button" style="margin-top: 50px;">회원탈퇴</button>

					<button class="cancel btn btn-primary" type="button"
						style="margin-top: 50px;">취소</button>
				</div>
			</form>
		</section>
	</div>
	<div class="footer">
		<c:import url="../default/footer.jsp" />
	</div>
</body>

</html>