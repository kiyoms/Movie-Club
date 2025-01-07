<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
 		<!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
       
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />



	<title>ID 중복확인</title>
</head>
<body>
	<script language="JavaScript">
		    function checkIt() {
		        var userinput = eval("document.userinput");
		 
		        var reg_idpw = /^[a-zA-Z0-9]{3,12}$/;
		    	
		    	if(!userinput.id.value.match(reg_idpw)) {
			        alert("아이디를 형식에 맞게 입력해 주세요. (3 ~ 12글자, 영문 대소문자, 숫자 입력 가능)");
			        return false;
			    }  
		    	
		        // 아이디를 입력했는지 검사
		        if (!userinput.id.value) {
		            alert("아이디를 입력하세요");
		            return false;
		        }
	    }
    </script>

	<c:if test="${result == 1}">
		<table width="270" border="0" align="center" >
  			<tr> 
    			<td height="50" > ${id} 이미 사용중인 아이디입니다.</td>
  			</tr>
		</table>
		
		<form name="userinput" method="post" action="/member/confirmId" onSubmit="return checkIt()">
			<table width="270" border="0" align="center">
  				<tr>
    				<td align="center"> 
      					 다른 아이디를 선택하세요.<p>
       					<input type="text" size="10" maxlength="12" name="id"> 
       					<input type="submit" value="ID중복확인" class="btn btn-outline-dark">
    				</td>
  				</tr>
			</table>
		</form>
	</c:if>
	
	<c:if test="${result != 1}">
		<table width="270" border="0" align="center">
  			<tr> 
    			<td align="center"> 
      				<p>입력하신 ${id} 는 사용하실 수 있는 ID입니다. </p>
      				<input type="button" value="확인" onclick="setid()" class="btn btn-outline-dark">
    			</td>
  	 		</tr>
		</table>
	</c:if>
	
	<!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
	<!-- Core theme JS-->
    <script src="<c:url value='/resources/js/scripts.js'/>"></script>
	
	
</body>
</html>
<script language="javascript">
	function setid(){		
		opener.document.userinput.id.value="${id}";
		self.close();
	}
</script>
	




