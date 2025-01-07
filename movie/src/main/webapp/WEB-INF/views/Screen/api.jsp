<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>실시간영화 순위</title>
</head>
<body>
  	<div class="container">
		    <h3 style="color: white">실시간 영화 순위</h3>
		    <div class="content">
			    <c:forEach var="api" items="${api}">
			   	 	<div class="col_2">
			   	 		<ul class="list_4">
			        		<li>${api.rnum}. ${api.movieNm}</li>
			        	</ul>
			        </div>
			    </c:forEach>
		    </div>
    </div>

</body>
</html>

