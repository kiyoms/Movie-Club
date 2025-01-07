<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<c:forEach var="dto" items="${list}">
     ${dto.name} ${dto.gneder} ${dto.birth} ${dto.field} ${dto.exhibit} ${dto.awards} ${dto.profile}
</c:forEach>

