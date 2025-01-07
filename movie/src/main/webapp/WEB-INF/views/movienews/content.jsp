<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>


<c:forEach var="dto" items="${list}">
     <table border="1" class="type09" align="center" >
        <br>
        <br>
        <br>
		<tr>
			<td>
				<img src="/resources/image/movienews/${dto.profile}"  width="250" height="300">
			</td>
			<td>
				<table border="1" class="type09" width="250" height="300">
				    
					<tr >
						<td>이름</td>
						<td>${dto.name}</td>
					</tr>
					<tr >
						<td>성별</td>
						<td>${dto.gneder}</td>
					</tr>
					<tr >
						<td>출생</td>
						<td>${dto.birth}</td>
					</tr>
					<tr >
						<td>분야</td>
						<td>${dto.field}</td>
					</tr>
					<tr >
						<td>출품작</td>
						<td>${dto.exhibit}</td>
					</tr>
					<tr >
						<td>수상내역</td>
						<td>${dto.awards}</td>
					</tr>
				</table>
	   </table>
	</c:forEach>