<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style typx="text/css">
.detail{
	width: 921px;
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
	height: 80px;
}
.detail button{

}
</style>
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form[name='readForm']");


	

	$(".deleteBtn").on("click", function() {
		location.href = "/board/replyDeleteView?bno=${read.bno}"

		+ "&rno=" + $(this).attr("data-rno");
	});



})
</script>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div align="center" style="height: 800px;">
	<table class="detail">
	<div><h3>견적정보</h3></div>
	<tr class="trcolor">
	<th>차종</th><th>차량색</th><th>옵션</th><th>삭제</th>
	</tr>
	<c:forEach items="${plist}" var="list">
	<tr>
	<th>${list.car}</th><th>${list.color}</th><th>
${list.option1}<br>${list.option2}<br>${list.option3}<br>${list.option4}<br>${list.option5}

	</th>
		
			<th><button type="button" class="deleteBtn btn btn-danger" 
									data-rno="${replyList.rno}">삭제</button></th>
		
	</tr>
	</c:forEach>
	</table>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>

	
