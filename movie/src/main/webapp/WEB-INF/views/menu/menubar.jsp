<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>
		
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
       
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
	</head> 	
	     
	<body>
	
	 <!-- Navigation-->
     <nav class="navbar navbar-expand navbar-light bg-light">
            <div class="container px-0 px-lg-0">
                <a class="navbar-brand" href="javascript:window.location='/menu/mainHome'">
					<img src="${pageContext.request.contextPath}/resources/image/logo3.png" alt="" width="100px">
				</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-0 mb-lg-0 ms-lg-4">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">영화</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/Screen/list">영화 목록</a></li>
                    
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">게시판</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/board/list">자유 게시판</a></li>
                                <li><a class="dropdown-item" href="/board/informationList">정보 게시판</a></li>
                
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">영화 뉴스</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
        
                                <li><a class="dropdown-item" href="/movienews/popular">인기</a></li>
                                <li><a class="dropdown-item" href="/movienews/main">최신</a></li>
                            </ul>
                        </li>
                    </ul>

                    <c:if test="${sessionScope.memId == null}"> 
			        	<form method="post" action="javascript:window.location='/member/loginForm'" class="d-flex">
				            <input type="submit" name="Submit" value="로그인" class="btn btn-outline-dark">
				            <input type="button" value="회원가입" onclick="javascript:window.location='/member/inputForm'" class="btn btn-outline-dark">      
			          	</form>
					</c:if>
					<c:choose>
						<c:when test="${sessionScope.memId == 'admin'}">
					    	<table>
					        	<tr>
					        		<td align="center">
					             		${sessionScope.memId} 님이 방문하셨습니다.
					             	</td>
					             </tr>
					             <tr>
					             	<td>
						            	<form method="post" action="javascript:window.location='/member/logout'" class="d-flex">
							           		<input type="submit"  value="로그아웃" class="btn btn-outline-dark">
							             	<input type="button" value="마이페이지" 
							             		onclick="javascript:window.location='/member/modify'" class="btn btn-outline-dark">
							             	<input type="button" value="관리자" 
							             		onclick="javascript:window.location='/admin/adminMain'" class="btn btn-outline-dark">
						             	</form>
					             	</td>
					            </tr>
					        </table>
				        </c:when>

						<c:when test="${sessionScope.memId != null}">
							<table>
					        	<tr>
					        		<td align="center">
						           		${sessionScope.memId} 님이 방문하셨습니다
						           	</td>
					             </tr>

					             <tr>
					             	<td>
								        <form method="post" action="javascript:window.location='/member/logout'" class="d-flex">  
								       		<input type="submit"  value="로그아웃" class="btn btn-outline-dark">
								       		<input type="button" value="마이페이지" 
								       			onclick="javascript:window.location='/member/modify'" class="btn btn-outline-dark">
								      	</form>
						      		</td>
					        	</tr>
					      	</table>
						</c:when>
					</c:choose>
                </div>
            </div>
        </nav>
			
		<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
        <!-- Core theme JS-->
        <script src="<c:url value='/resources/js/scripts.js'/>"></script>
		</body>


