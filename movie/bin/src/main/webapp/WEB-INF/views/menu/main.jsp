<%@ page  contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>메인</title>
	</head>
	<body>
			<form method="post" action="window.location='/member/loginForm'">
  				<table width=1000 cellpadding="0" cellspacing="0"  align="center" border="1" >
	      			<tr>
	       				<td rowspan="3" width="150" height="20">
	       					로고
	       				</td>
	       				<td rowspan="3" width="550" height="20">
	       					메뉴
	       				</td>   
	       			<tr>
	          			<td colspan="3" align="center">
	            			<input type="submit" name="Submit" value="로그인">
	            			<input type="button" value="회원가입" onclick="javascript:window.location='/member/inputForm'">      
	          			</td>
	          		</tr>
	          		<tr> 
	         			<td colspan="3" width="300" >메인입니다.</td>
	         		</tr>
          		</table>
			</form>
		<c:if test="${sessionScope.memId != null}">
			<table width=1000 cellpadding="0" cellspacing="0"  align="center" border="1" >
				<tr>
					<td width="150" height="20">
					로고
					</td>
					<td width="550" height="20">
					메뉴
					</td>
           			<td align="center">
             			${sessionScope.memId} 님이 <br> 방문하셨습니다
             			<form  method="post" action="/member/logout">  
             				<input type="submit"  value="로그아웃">
             				<input type="button" value="마이페이지" 
             					onclick="javascript:window.location='/member/modify'">
             			</form>
         			</td>
        		</tr>
       			<tr> 
         			<td colspan="3">메인입니다.</td>
      			</tr>
     		</table>
     		<br>
		</c:if>
	</body>
</html>





