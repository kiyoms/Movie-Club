<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="org.movie.model.*"%>

<a href="MemberList.do">회원 목록</a>
<a href="ScreenList.do">영화 목록</a>
<a href="BoardList.do">게시판 목록</a>


<h1>boardList</h1>

<%
List<BoardDTO> list = (List<BoardDTO>) request.getAttribute("list");
%>

<style>
@import
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800')
	;
</style>

<h3>게시판 목록</h3>
<!-- 목록 출력 -->

<table border="1" class="board_list">
	<thead class="thead-dark">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>댓글수</th>
			<th>추천수</th>
			<th>글속성</th>
	</thead>
	<c:forEach var="list" items="${list}">
		<tr align="center" valign="middle" bordercolor="#333333" 
		onmouseover="this.style.backgroundColor='yellowgreen'"
		onmouseout="this.style.backgroundColor=''">
			<td><c:out value="${list.bno}" /></td>
			<td><c:out value="${list.title}" /></td>
			<td><c:out value="${list.writer}" /></td>
			<td><fmt:formatDate value="${list.regdate}" pattern="yy-MM-dd a hh:mm"/></td>	
			<td><c:out value="${list.viewcnt}" /></td>
			<td><c:out value="${list.comcnt}" /></td>
			<td><c:out value="${list.recommend}" /></td>
			<td><c:out value="${list.contenttype}" /></td>
		</tr>
	</c:forEach>
</table>


