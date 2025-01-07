<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.util.*" %>
<%@ page import = "org.movie.model.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String contentsPage = request.getParameter("contentsPage");
	if(contentsPage == null){
		contentsPage = "list";
	}
		contentsPage += ".jsp";
%>


<a href="MemberList.do">회원 목록</a>
<a href="ScreenList.do">영화 목록</a>
<a href="BoardList.do">게시판 목록</a>

    <h1>screenList</h1>


    
<%
	List<ScreenDTO> screenList = (List<ScreenDTO>)request.getAttribute("list");
%>

<style>
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800');
</style>

<h3>영화 목록</h3>
<!-- 목록 출력 -->

<table border="1" class="screen_list" >
<thead class="thead-dark">
         <tr>
     
            <th>제목</th>
           
            <th>상영등급</th>
            <th>출연배우</th>
            <th>평점</th>
            <th>감독</th>
   
            <th>상영시간</th>
     </thead>
<c:forEach var = "list" items="${ list}" varStatus="status">

	<tr align="center" valign="middle" bordercolor="#333333" onmouseover="this.style.backgroundColor='yellowgreen'"
	onmouseout="this.style.backgroundColor=''">	
		<!-- <td class="page-item"><img src="${list.poster}"/></td> -->
		<td class="page-item"><c:out value="${list.title }"/></td>
		<td class="page-item"><c:out value="${list.grade}"/></td>
		<td class="page-item"><c:out value="${list.actor}"/></td>
		<td class="page-item"><c:out value="${list.score}"/></td>
		<td class="page-item"><c:out value="${list.director}"/></td>
		<td class="page-item"><c:out value="${list.runtime}"/></td>
	</tr>

</c:forEach>
	

</table>

