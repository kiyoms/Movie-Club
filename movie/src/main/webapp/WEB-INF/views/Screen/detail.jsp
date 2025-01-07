<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>
<%@ include file="../menu/bootstrap.jsp" %>


<c:set var = "ROOT" value="${pageContext.request.contextPath }"/>


<html>
<head>
<title>영화detail</title>
</head>
<body>

<script>
	function doResize(){ 
		container.height = myframe.document.body.scrollHeight+20;
		container.width = myframe.document.body.scrollWidth;
	} 
</script>


<div class="container">
	<div class="container_wrap">
		
		<div class="content">
                	
                	<div class="grid images_3_of_2">
                       	<div class="movie_image">
                        	<img src="${dto.poster }" class="img-responsive" alt="" />
                        </div>
                    </div>
                        
                    <div class="desc1 span_3_of_2">
                       	<p class="movie_option"><strong>제목: </strong>&nbsp;${dto.title }</p>
                       	<p class="movie_option"><strong>평점: </strong>&nbsp;${dto.score } / 10</p>
                       	<p class="movie_option"><strong>등급: </strong>&nbsp;${dto.grade }</p>
                       	<p class="movie_option"><strong>개봉일: </strong>&nbsp;${dto.open}</p>
                       	<p class="movie_option"><strong>장르: </strong>&nbsp;${dto.ganre }</p>
                       	<p class="movie_option"><strong>감독: </strong>&nbsp;${dto.director }</p>
                       	<p class="movie_option"><strong>배우: </strong>&nbsp;${dto.actor }</p>
                       	<p class="movie_option"><strong>스토리 </strong></p>
	                       	<ul>
		                       	<li>
		                       		<p>${dto.story }</p>
		                       	</li>
	                       	</ul>
                       	
                       	
                    </div>
                    <div class="clearfix"> </div>
                    
			      	
			      	<div class="row">
			      	<h3 class="text-center">미리보기</h3>
			      		<table border="0" cellspacing="0" cellpadding="0">
			      			<tr align="center"">
			      				<td id="container">
						    	    <iframe src="http://youtube.com/embed/${dto.key1}" 
						    	    	name="myframe" width=100% height=250px onload="doResize()"></iframe>
						    	
						          	<iframe src="http://youtube.com/embed/${dto.key2}"
						          		name="myframe" width=100% height=250px onload="doResize()"></iframe>
						        </td>
						    	<td>
						    	    <iframe src="http://youtube.com/embed/${dto.key3}"
						    	    	name="myframe" width=100% height=250px onload="doResize()"></iframe>
						    	
						    		<iframe src="http://youtube.com/embed/${dto.key4}"
						    			name="myframe" width=100% height=250px onload="doResize()"></iframe>
					    		</td>
					    	</tr>
					    </table>
					    <br>
						<a href="list.do" class="btn btn-sm btn-primary">목록</a>
					</div>
            	</div>
                <div class="clearfix"> </div>
	</div>
</div>

  
    
    
</body>
</html>
