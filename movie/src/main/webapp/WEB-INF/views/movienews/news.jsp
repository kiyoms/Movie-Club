<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

    <br>
    <style>
      div.a {font-size: 200%;}
    </style>
	     
	    <head>
	       <div class="a">최신뉴스</div>
		</head>  
		 
		<body>
		  <table border="1">
		<br>
		<br>
	    <tr>
		  <td>자료화면</td>
		  <td>제목</td> 
		  <td>요약</td>
    	</tr>
	 <c:forEach var="t" items="${title}" varStatus="i">
		<tr>
		    <td><a href="https://entertain.naver.com/${link[i.index]}"><img src="${image[i.index]}" alt="Lights" style= width="200px" height="100px" class="img-rounded"></a></td>
			<td>${t}</td>
			<td>${content[i.index]}</td>
		
		</tr>
     </c:forEach>

    
</body>
