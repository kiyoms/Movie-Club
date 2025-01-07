<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

<html>
<head><title>회원탈퇴</title>

	<c:if test="${sessionScope.memId == null}"> 
	    	<script>
		    	alert("세션이 만료되었습니다. 다시 로그인 해주세요.");
				window.location="/member/loginForm";
			</script>
	</c:if> 
   	<script language="javascript">
       	function begin(){
         	document.myform.pw.focus();
       	}

       	function checkIt(){
		  	if(!document.myform.pw.value){
           		alert("비밀번호를 입력하지 않으셨습니다.");
           		document.myform.pw.focus();
           		return false;
         	}
		if(document.myform.pw.value != document.myform.pw2.value)
	        {
	            alert("비밀번호를 동일하게 입력하세요");
	            return false;
	        }
		  
	   }   
   	</script>
</head>
<body onload="begin()">

	<section class="py-5">
            <div class="container px-0 px-lg-0">
                <div class="row gx-0 gx-lg-2 row-cols-2 justify-content-center">
                    <div class="col mb-0">
                        <div class="card h-0">

							<form name="myform" action="/member/deletePro" method="post" onSubmit="return checkIt()">
								<table cellSpacing=3 cellPadding=3 width="350" align="center" >
								  	<tr height="30">
								    	<td colspan="2" align="middle">
									  		<font size="+1" ><b>회원 탈퇴</b></font>
										</td>
									</tr>
								 	<tr>
								    	<td align=center>비밀번호</td>
								    	<td align=center>
								    		<input type=password name="pw" size="15" maxlength="15">
								    	</td>
								    </tr>
								    <tr>
								    	<td align=center>비밀번호 확인</td>
								    	<td align=center>
								    		<input type=password name="pw2" size="15" maxlength="15">
								    	</td>
								    </tr>
								  	<tr>
								    	<td colspan="2" align="center">
								    		<input type=submit value="회원탈퇴" class="btn btn-outline-dark"> 
								    		<input type="button" value="취  소" onclick="javascript:window.location='/menu/mainHome'" class="btn btn-outline-dark">
								    	</td>
								    </tr>
								</table>
							</form>
		
                        </div>
                    </div>
                </div>
            </div>
        </section>
	
</body>
</html>
