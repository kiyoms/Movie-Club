<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

	 <br>
	 <style>
      div.a {font-size: 200%;}
     </style>
	     
	 <head>
	     <div class="a">인기뉴스</div>
	 </head>    
	
	 <body>     
		<table border="1">
		<br>
		<br>
		

     <tr>
		  <td>순위</td> 
		  <td>요약</td>
    </tr>
     
	<c:forEach var="t" items="${title}" varStatus="i">
		<tr>
		    <td>${num[i.index]}</td>
		    <td><a href="https://entertain.naver.com/${link[i.index]}">${t}</a></td>
		</tr>
    </c:forEach>
    
    </table>
  	
</body>


