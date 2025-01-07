<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 1}">
	<c:set var="memId" value="${memberDTO.id}" scope="session" />
	<c:redirect url="/menu/mainHome" />
</c:if>

<c:if test="${result != 1}">
	<script>
	  alert("아이디/비밀번호가 맞지 않습니다.");
	  history.go(-1);
	</script>
</c:if>
