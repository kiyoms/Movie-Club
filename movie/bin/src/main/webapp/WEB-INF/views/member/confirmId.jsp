<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>ID �ߺ�Ȯ��</title>
</head>
<body>
	<c:if test="${result == 1}">
		<table width="270" border="0" cellspacing="0" cellpadding="5">
  			<tr> 
    			<td height="39" > ${id} �̹� ������� ���̵��Դϴ�.</td>
  			</tr>
		</table>
		<form name="checkForm" method="post" action="confirmId.jsp">
			<table width="270" border="0" cellspacing="0" cellpadding="5">
  				<tr>
    				<td align="center"> 
      					 �ٸ� ���̵� �����ϼ���.<p>
       					<input type="text" size="10" maxlength="12" name="id"> 
       					<input type="submit" value="ID�ߺ�Ȯ��">
    				</td>
  				</tr>
			</table>
		</form>
	</c:if>
	<c:if test="${result != 1}">
		<table width="270" border="0" cellspacing="0" cellpadding="5">
  			<tr> 
    			<td align="center"> 
      				<p>�Է��Ͻ� ${id} �� ����Ͻ� �� �ִ� ID�Դϴ�. </p>
      				<input type="button" value="Ȯ��" onclick="setid()">
    			</td>
  			</tr>
		</table>
	</c:if>
</body>
</html>
<script language="javascript">
	function setid(){		
		opener.document.userinput.id.value="${id}";
		self.close();
	}
</script>





