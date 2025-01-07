<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>
<%@ include file="../menu/bootstrap.jsp" %>
	     
		    	  
<body>
<div class="container">
	<div class="container_wrap">
  		<div class="content">
	  		<div class="box_1">
	      		<h1 class="m_2">영화 뉴스</h1>
				<div class="clearfix"> </div>
			</div>
				
			<c:forEach var="t" items="${title}" varStatus="i">
				<table>
					<tr>
					    <td rowspan="2">
					    	<a href="https://entertain.naver.com/${link[i.index]}">
					    		<img src="${image[i.index]}" alt="Lights" style= width="200px" height="100px" class="img-rounded">
					    	</a>
					    </td>
						<td>&nbsp;&nbsp;
							<a href="https://entertain.naver.com/${link[i.index]}">${t}</a>
						</td>	
					</tr>
					
					<tr>
						<td>${content[i.index]}</td>
					</tr>
					</table>
					<br>
		    </c:forEach>
		    
	    </div>
	</div>
</div>

	
</body>


