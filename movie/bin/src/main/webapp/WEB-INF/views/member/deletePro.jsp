<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>ȸ��Ż��</title>
</head>
<c:if test="${result == 1}">
	<c:remove var="memId" scope="session" />
	<body>
	<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
	  <tr bgcolor="${title_c}"> 
	    <td height="39" align="center">
		  <font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font></td>
	  </tr>
	  <tr>
	    <td align="center"> 
	      <p>Ż�� �Ϸ�Ǿ����ϴ�.</p>
	      <meta http-equiv="Refresh" content="5;url=/member/main" >
	    </td>
	  </tr>
	  <tr>
	    <td align="center"> 
	      <input type="button" value="Ȯ��" onclick="window.location='/member/main'">
	    </td>
	  </tr>
	</table>
</c:if>
<c:if test="${result != 1}">
	<script> 
	  alert("��й�ȣ�� ���� �ʽ��ϴ�.");
      history.go(-1);
	</script>
</c:if>
</body>
</html>





