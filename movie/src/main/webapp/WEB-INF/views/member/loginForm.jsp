<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

<!DOCTYPE html>
<html lang="en">

	<c:if test="${sessionScope.memId != null}"> 
		<script>
		  	alert("이미 로그인되어있습니다. 로그아웃 후 다시 시도해주세요");
			window.location=history.go(-1);
		</script>
	</c:if> 

	<head>
		
		<title>로그인</title>
	   	
	   	<script language="javascript">
	       	function begin(){
	         	document.myform.id.focus();
	       	}
	       	function checkIt(){
	         	if(!document.myform.id.value){
	           		alert("아이디를 입력하세요.");
	           		document.myform.id.focus();
	           		return false;
	         	}
	         	if(!document.myform.pw.value){
	           		alert("비밀번호를 입력하세요.");
	           		document.myform.pw.focus();
	           		return false;
	         	}
	       	}
	   	</script>
	</head>
	
	<body onload="begin()">
		<nav class="navbar-expand">
            <div class="container px-0 px-lg-0">
            
            <form name="myform" action="/member/loginPro" method="post" onSubmit="return checkIt()">
			<section class="py-0">
            <div class="container px-0 px-lg-0 mt-5">
                <div class="row gx-6 gx-lg-5 row-cols-2 row-cols-md-10 row-cols-xl-3 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img class="card-img-top" src="${pageContext.request.contextPath}/resources/image/logo2.png" alt="..." />
                            <div class="card-body p-4">
                                <div class="text-center">
				    				<h3 class="fw-bolder">로그인</h3>
							       	<input type="text" name="id" size="26" maxlength="15" placeholder="아이디"/><br>
							      	<input type="password" name="pw" size="26" maxlength="15" placeholder="비밀번호"/>
						    	</div>	
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                               	<div class="text-center">
                               	<table align="center">
                               		<tr>
                               			<td>
									      	<input type=submit value="로그인" class="btn btn-outline-dark"> 
									      	<input type=reset value="다시입력" class="btn btn-outline-dark">
									    	<input type="button" value="회원가입" onclick="window.location='/member/inputForm'" class="btn btn-outline-dark">
								    	</td>
							    	</tr>
							    </table>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
       		</section>
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	</form>
        	
        </div>
        </nav>
	</body>
</html>
