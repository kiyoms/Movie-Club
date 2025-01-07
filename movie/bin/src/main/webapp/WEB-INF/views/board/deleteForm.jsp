<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>	

<body onload ="add()">
<script>
function add(){
    alert("수정 완료!");
    window.location.href = '/board/list';
}
</script>
</body>
<!-- <c:redirect url="/board/list"/> -->

</html>