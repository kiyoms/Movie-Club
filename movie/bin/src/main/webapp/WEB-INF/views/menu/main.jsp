<%@ page  contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>����</title>
	</head>
	<body>
			<form method="post" action="window.location='/member/loginForm'">
  				<table width=1000 cellpadding="0" cellspacing="0"  align="center" border="1" >
	      			<tr>
	       				<td rowspan="3" width="150" height="20">
	       					�ΰ�
	       				</td>
	       				<td rowspan="3" width="550" height="20">
	       					�޴�
	       				</td>   
	       			<tr>
	          			<td colspan="3" align="center">
	            			<input type="submit" name="Submit" value="�α���">
	            			<input type="button" value="ȸ������" onclick="javascript:window.location='/member/inputForm'">      
	          			</td>
	          		</tr>
	          		<tr> 
	         			<td colspan="3" width="300" >�����Դϴ�.</td>
	         		</tr>
          		</table>
			</form>
		<c:if test="${sessionScope.memId != null}">
			<table width=1000 cellpadding="0" cellspacing="0"  align="center" border="1" >
				<tr>
					<td width="150" height="20">
					�ΰ�
					</td>
					<td width="550" height="20">
					�޴�
					</td>
           			<td align="center">
             			${sessionScope.memId} ���� <br> �湮�ϼ̽��ϴ�
             			<form  method="post" action="/member/logout">  
             				<input type="submit"  value="�α׾ƿ�">
             				<input type="button" value="����������" 
             					onclick="javascript:window.location='/member/modify'">
             			</form>
         			</td>
        		</tr>
       			<tr> 
         			<td colspan="3">�����Դϴ�.</td>
      			</tr>
     		</table>
     		<br>
		</c:if>
	</body>
</html>





