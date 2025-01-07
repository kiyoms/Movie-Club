<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>회원탈퇴</title>
</head>
<c:if test="${result == 1}">
	<c:remove var="memId" scope="session" />
	<body>
	<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
	  <tr bgcolor="${title_c}"> 
	    <td height="39" align="center">
		  <font size="+1" ><b>회원정보가 삭제되었습니다.</b></font></td>
	  </tr>
	  <tr>
	    <td align="center"> 
	      <p>탈퇴가 완료되었습니다.</p>
	      <meta http-equiv="Refresh" content="5;url=/member/main" >
	    </td>
	  </tr>
	  <tr>
	    <td align="center"> 
	      <input type="button" value="확인" onclick="window.location='/member/main'">
	    </td>
	  </tr>
	</table>
</c:if>
<c:if test="${result != 1}">
	<script> 
	  alert("비밀번호가 맞지 않습니다.");
      history.go(-1);
	</script>
</c:if>
</body>
</html>





