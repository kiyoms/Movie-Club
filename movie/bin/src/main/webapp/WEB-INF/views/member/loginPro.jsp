<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 1}">
	<c:set var="memId" value="${memberDTO.id}" scope="session" />
	<c:redirect url="/member/main" />
</c:if>

<c:if test="${result != 1}">
	<script>
	  alert("���̵�/��й�ȣ�� ���� �ʽ��ϴ�..");
	  history.go(-1);
	</script>
</c:if>
