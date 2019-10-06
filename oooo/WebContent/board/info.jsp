<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화가즈아</title>
<script src="../script/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$("#btnList").click(function(){
			location.href = "${path}/list.do";
		});
	});
</script>
</head>
<body>
<h1>게시판 내용</h1>
<hr />
<table border="1">
	<tr>
		<td>제목</td>
		<td>${dto.title }</td>
	</tr>
	<tr>
		<td>장르</td>
		<td>${dto.genre }</td>
	</tr>
	<tr>
		<td>포스터</td>
		<td>${dto.postfname }</td>
	</tr>
	<tr>
		<td>포토</td>
		<td>${dto.photofname }</td>
	</tr>
	<tr>
		<td>감독</td>
		<td>${dto.director }</td>
	</tr>
	<tr>
		<td>배우</td>
		<td>${dto.actor }</td>
	</tr>
	<tr>
		<td>명대사</td>
		<td>${dto.lines }</td>
	</tr>
	<tr>
		<td>평점</td>
		<td>${dto.mark }</td>
	</tr>
	<tr>
		<td>리뷰</td>
		<td>${dto.review }</td>
	</tr>
</table>
<br />
<button id="btnList">목록</button>
</body>
</html>