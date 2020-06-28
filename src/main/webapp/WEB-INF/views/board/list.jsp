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
<title>게시판</title>
<style type="text/css">

.list1 {
	list-style: none;
	float: left;
	padding: 6px;
}
.head{
	height:50px;
}
.head th{
	padding-top: 10px;
}
.head ul{
	padding-top: 10px;
}
.container{
	margin-top:50px;
	height:750px;
}
.footer{
height: 105px;
background: #393939;
}

</style>

</head>
<body>
	<div class="head"><c:import url="../default/header.jsp" /></div>
	<div class="container">
	<br><h1>고 객 센 터</h1><br>
		<div>
			<%@include file="nav.jsp"%>
		</div>



		<section id="container">
			<form role="form" method="post" action="/write">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
					<c:set var="count" value="-1" scope="page" />
					<c:forEach items="${list}" var="list">

						<tr>
							<td><c:set var="count" value="${count+1 }" scope="page" />
								<c:out value="${count+1 }" /></td>
							<td><a href="/board/readView?bno=${list.bno}"><c:out
										value="${list.title}" /></a></td>
							<td><c:out value="${list.writer}" /></td>
							<td><fmt:formatDate value="${list.regdate}"
									pattern="MM-dd hh:mm" /></td>
						</tr>
					</c:forEach>

				</table>

				<div class="col-md-offset-3">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="list1"><a
								href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="idx">
							<li class="list1"><a href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li class="list1"><a
								href="list${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
						</c:if>
					</ul>
				</div>

			</form>
		</section>
	</div>
	<div class="footer"><c:import url="../default/footer.jsp" /></div>
</body>
</html>