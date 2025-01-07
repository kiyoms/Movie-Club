<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>
<%@ include file="../menu/bootstrap.jsp" %>






<html>
<head>
  <title>영화 정보</title>
  
</head>
<body>
<div class="container">
	<div class="container_wrap">
	
  		<div class="content">
						
	      	<div class="box_1">
	      		<h1 class="m_2">영화</h1>
				<div class="clearfix"> </div>
			</div>
				
				<c:forEach items="${list}" var="list">
      	       			<div>
							<table>
							<tr style="background-color: white;">
								
								<td valign="middle">
									<div class="grid images_3_of_2">
										<div class="movie__images">
											<a href="detail?no=${list.snum}"><img src="${list.poster }" class="img-responsive" alt=""/ width="50%"></a>
										</div>
									</div>
									
									<div>
										<p style="font-size: 200%;"><a href="detail?no=${list.snum}"><span>${list.title }</span></a></p>
										<p style="font-size: 130%;">장르: &nbsp;${list.ganre }</p>
									   	<p style="font-size: 130%;">등급: &nbsp;${list.grade }</p>
									   	<p style="font-size: 130%;">평점: &nbsp;${list.score } / 10</p>
									   	<p style="font-size: 130%;"><span>${list.open }</span></p>
									   	<div class="clearfix"> </div>
									</div>
								</td>
								
							</tr>
								
							<tr>
								<td>
									<br>
								</td>
							</tr>
							</table>
						
						</div>
					   	<div class="clearfix"> </div>
			   	</c:forEach>
			   	
			<div align="center">
		        <c:if test="${pagination.curRange ne 1 }">
		        	<a href="#" onClick="fn_paging(1)">[처음]</a> 
		        </c:if>
		        <c:if test="${pagination.curPage ne 1}">
		            <a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a> 
		        </c:if>
		        <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
		        	<c:choose>
		        		<c:when test="${pageNum eq  pagination.curPage}">
		            		<span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
		                </c:when>
		                <c:otherwise>
		                	<a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
		                </c:otherwise>
		        	</c:choose>
		        </c:forEach>
		        <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
		        	<a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
		        </c:if>
		        <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
		        	<a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
		    	</c:if>
		    </div>
  	 	</div>
  	</div>
</div>
     
    
                
    <div>
   	 <%@ include file="../Screen/api.jsp" %>
   	 <br>
    </div>
    
    <script>
		function fn_paging(curPage){
			   window.location.href = '/Screen/list?curPage='+ curPage;
		}
	</script>
</body>
</html>
