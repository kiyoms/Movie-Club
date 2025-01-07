<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>

<html>
	<head>
		<title>마이페이지</title>
	</head>
	
	<section class="py-0">
		<div class="container">
			<table>
			  	<tr>
			    	<td align="left"><br>
			    		<h2>마이페이지 > </h2>
			    	</td>
			  	</tr>
			</table>
		</div>
	</section>
	
	<body>
	<br>
            
	<section class="py-0">
		<div class="container">
    		<div class="card h-0">
				<table align="center">
					<tr>
						<td valign="top"><br>
				    		<a class="dropdown-item" href="/member/modifyForm">정보수정</a>
				    		<a class="dropdown-item" href="/member/deleteForm">탈퇴</a>
			    		</td>
			    		<td width="900" height="200" align="center">
			    			<h3>회원 정보</h3>
					    	
					    	<div class="container px-4 px-lg-5">
	    						<div class="card h-0">
					    	
							    	<table width="500" align="center">
								    	<tr align="center">
									    	<td>아이디</td>
									    	<td>${sessionScope.memId}</td>
								    	</tr>
								    	<tr align="center" >
									    	<td>이름</td>
										    <td>
										    	<input type="hidden" name="name" value="${dto.name}">${dto.name}
										    </td>
								    	</tr>
								    	<tr align="center">
									    	<td>성별</td>
										    <td>
										    	<input type="hidden" name="gender" value="${dto.gender}">${dto.gender}
										    </td>
								    	</tr>
								    	<tr align="center">
									    	<td>생년월일</td>
											<td>
												<fmt:formatDate pattern="yyyy-MM-dd" value="${dto.birth}"/>
											</td>
										</tr>
								    	<tr align="center">
									    	<td>전화번호</td>
											<td>
												[${dto.phone1}] &nbsp; ${dto.phone2}
												</td>
										</tr>
										<tr align="center">
									    	<td>이메일</td>
											<td>${dto.email1}@${dto.email2}</td>
										</tr>
										<tr align="center">
									    	<td>포인트</td>
											<td>${dto.point}</td>
										</tr>
										<tr align="center">
									    	<td>가입일</td>
											<td>
												<fmt:formatDate pattern="yyyy-MM-dd" value="${dto.reg}"/>
											</td>
										</tr>
							   		</table>
					   		
					   			</div>
							</div><br>
						</td>
					</tr>
				</table>
				</div>
		</div>
	</section>
	</body>
</html>
