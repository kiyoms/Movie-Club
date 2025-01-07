<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body onload ="add()">
<script>
function add(){
     alert("작성 완료!");
     window.location.href = '/board/list';
}
     </script>
<!--<c:redirect url="/board/list" /> -->
</html>
