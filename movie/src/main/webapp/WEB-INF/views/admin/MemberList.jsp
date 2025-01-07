<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.movie.model.*" %>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<a href="MemberList.do">회원 목록</a>
<a href="ScreenList.do">영화 목록</a>
<a href="BoardList.do">게시판 목록</a>

    <h1>MemberList</h1>
    
<%
	List<MemberDTO> memberList = (List<MemberDTO>)request.getAttribute("list");
%>

<style>
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800');
</style>

<h3>회원 목록</h3>



<!-- 목록 출력 -->

<table border="1">
	
	<thead class="thead-dark">
         <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>성별</th>
            <th>생년월일</th>
            <th>이메일 앞</th>
            <th>이메일 뒤</th>
            <th>가입날짜</th>
            </tr>
     </thead>
	<c:forEach var = "list" items="${ list}">
	<tr align="center" valign="middle" bordercolor="#333333" onmouseover="this.style.backgroundColor='yellowgreen'"
	onmouseout="this.style.backgroundColor=''">	
		<td><c:out value="${list.id }"/></td>
		<td><c:out value="${list.name }"/></td>
		<td><c:out value="${list.gender }"/></td>
		<td><fmt:formatDate pattern="yy-MM-dd a hh:mm" value="${list.birth}"/></td>
		<td><c:out value="${list.email1}"/></td>
		<td><c:out value="${list.email2}"/></td>
		<td><fmt:formatDate pattern="yy-MM-dd a hh:mm" value="${list.reg}"/></td>
	</tr>

</c:forEach>
</table>

