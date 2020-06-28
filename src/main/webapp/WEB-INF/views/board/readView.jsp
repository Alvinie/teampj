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
<title>게시판</title>
</head>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='readForm']");

		// 수정 
		$(".update_btn").on("click", function() {
			formObj.attr("action", "/board/updateView");
			formObj.attr("method", "get");

			formObj.submit();
		})

		// 삭제
		$(".delete_btn").on("click", function() {

			var deleteYN = confirm("삭제하시겠습니까?");
			if (deleteYN == true) {

				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();

			}
		})

		// 취소
		$(".list_btn").on("click", function() {

			location.href = "/board/list";
		})

		// 댓글 달기
		$(".replyWriteBtn").on("click", function() {
			var formObj = $("form[name='replyForm']");
			formObj.attr("action", "/board/replyWrite");

			formObj.submit();
		});

		//댓글 수정 View
		$(".replyUpdateBtn").on("click", function() {
			location.href = "/board/replyUpdateView?bno=${read.bno}"

			+ "&rno=" + $(this).attr("data-rno");
		});

		
		//댓글 삭제 View
		$(".replyDeleteBtn").on("click", function() {
			location.href = "/board/replyDeleteView?bno=${read.bno}"

			+ "&rno=" + $(this).attr("data-rno");
		});

	})
</script>

<body>
	<c:import url="../default/header.jsp"/>
						
	<div class="container">
		<header>
			<h1>고 객 센 터</h1>
		</header>
		<hr />

		<div>
			<%@include file="nav.jsp"%>
		</div>
		<hr />

		<section id="container">
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="bno" name="bno" value="${read.bno}" />
			</form>
				<c:if test="${member.userId != null}">
		<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<input type="text" id="title" name="title" class="form-control" value="${read.title}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<textarea id="content" name="content" class="form-control" style="height:500px;" readonly="readonly"><c:out value="${read.content}" /></textarea>
				</div>
				<div class="form-group">
					<label for="writer" class="col-sm-2 control-label">작성자</label>
					<input type="text" id="writer" name="writer" class="form-control" value="${read.writer}"  readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
					<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />	
				</div>
				
				<c:if test="${member.userId == read.writer}">
				<div>
					<button type="button" class="update_btn btn btn-primary">수정</button>
					<button type="button" class="delete_btn btn btn-danger">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
				</c:if>
				
<br>
			<!-- 댓글 -->
			<div id="reply" >
				<ol class="replyList">
					<c:forEach items="${replyList}" var="replyList">
						<li>
							<p>
								작성자 : ${replyList.writer}<br /> 작성 날짜 :
								<fmt:formatDate value="${replyList.regdate}"
									pattern="yyyy-MM-dd" />
							</p>

							<p>내용: ${replyList.content}</p>
								
								<c:if test="${member.userId == replyList.writer}">
							<div>
									<button type="button" class="replyUpdateBtn btn btn-primary" 
									data-rno="${replyList.rno}">수정</button>
									<button type="button" class="replyDeleteBtn btn btn-danger" 
									data-rno="${replyList.rno}">삭제</button>
								</div>
								</c:if>

						</li>
						<br>
					</c:forEach>
				</ol>
			</div>

			<form name="replyForm" method="post" class="form-horizontal">
				<input type="hidden" id="bno" name="bno" value="${read.bno}" />


				<div class="form-group">
						<label for="writer" class="control-label">댓글 작성자</label>
						<div>
							<input type="text" id="writer" name="writer" class="form-control" value="${member.userId}"  readonly="readonly"/>
						</div>
					</div>
					
					<div class="form-group">
						<label for="content" class="control-label">댓글 내용</label>
						<div>
							<input type="text" id="content" name="content" class="form-control"/>
						</div>
					</div>

			</form>

			<div class="form-group">
						<div>
							<button type="button" class="replyWriteBtn btn btn-primary">작성</button>
						</div>
					</div>
		
		<hr />
	
		</c:if>
							<c:if test="${member.userId == null}">
								<p>로그인 후에 열람할 수 있습니다.</p>
							</c:if>	
							</section>
								<hr/>
								</div>
							<c:import url="../default/footer.jsp"/>
</body>
</html>