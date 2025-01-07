<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap2.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/resources/css/style2.css" rel="stylesheet" type="text/css" media="all" />
	
	<!-- start plugins -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
	
	<script src="<c:url value='/resources/js/responsiveslides.min.js'/>"></script>
	
	<script>
	    $(function () {
	      $("#slider").responsiveSlides({
	      	auto: true,
	      	nav: true,
	      	speed: 500,
	        namespace: "callbacks",
	        pager: true,
	      });
	    });
	</script>
	
</head>

<body>
	<div class="container">
		<div class="container_wrap">
		    <div class="slider">
		   	<div class="callbacks_container">
		      	<ul class="rslides" id="slider">
		        	<li><img src="${pageContext.request.contextPath}/resources/image/poster/bn1.png" class="img-responsive" alt=""/>
		        		<div class="button">
				      		<a href="detail?no=21" class="hvr-shutter-out-horizontal">상세정보</a>
				    	</div>
					</li>
			        <li><img src="${pageContext.request.contextPath}/resources/image/poster/bn2.png" class="img-responsive" alt=""/>
			        	<div class="button">
					      <a href="detail?no=30" class="hvr-shutter-out-horizontal">상세정보</a>
					    </div>
					</li>
			        <li><img src="${pageContext.request.contextPath}/resources/image/poster/bn3.png" class="img-responsive" alt=""/>
			        	<div class="button">
						    <a href="detail?no=31" class="hvr-shutter-out-horizontal">상세정보</a>
					    </div>
					</li>
				</ul>
	    	</div>
 			</div>
      
      
			<div class="content">
	      	
	      	<div class="box_1">
	      	<h1 class="m_2">메인</h1>
				<div class="clearfix"> </div>
			</div>
			
			<div class="box_2" align="center">
				
				<table>
					<tr align="center">
						<td> 
							<div class="col-9">
							<div class="m_5"><a href="detail?no=9"><img src="${pageContext.request.contextPath}/resources/image/poster/no9.jpg" class="img-responsive" alt=""/></a></div>
							<div class="col_2">
								<ul class="list_4">
						  			<li><a href="detail?no=9">극장판 포켓몬스터 뮤츠의 역습</a></li>
							 		<li>평점 &nbsp;<span class="m_4">8 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2020 .09.30</span> </li>
						    	</ul>
						    	<div class="clearfix"> </div>
							</div>
							</div>
						</td>
				
						<td> 
							<div class="col-9">
							<div class="m_5"><a href="detail?no=10"><img src="${pageContext.request.contextPath}/resources/image/poster/no10.jpg" class="img-responsive" alt=""/></a></div>
							<div class="col_2">
								<ul class="list_4">
						  			<li><a href="detail?no=10">조조 래빗</a></li>
							 		<li>평점 &nbsp;<span class="m_4">9 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2020 .02.05</span> </li>
						    	</ul>
						    	<div class="clearfix"> </div>
							</div>
							</div>
						</td>
						
						<td>
							<div class="col-9">
						   	<div class="m_5"><a href="detail?no=18"><img src="${pageContext.request.contextPath}/resources/image/poster/no18.jpg" class="img-responsive" alt=""/></a></div>
						   	<div class="col_2">
						   		<ul class="list_4">
						   			<li><a href="detail?no=18">씽2게더</a></li>
							 		<li>평점 &nbsp;<span class="m_4">9 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2022 .01.05</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
						
						<td>
							<div class="col-9">
						   	<div class="m_5"><a href="detail?no=21"><img src="${pageContext.request.contextPath}/resources/image/poster/no21.jpg" class="img-responsive" alt=""/></a></div>
						   	<div class="col_2">
						   		<ul class="list_4">
						   			<li><a href="detail?no=21">베놈 2: 렛 데어 비 카니지</a></li>
							 		<li>평점 &nbsp;<span class="m_4">6 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2021 .10.13</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
					</tr>
					
					<tr>
					<td>
					<br>
					</td>
					</tr>
					
					
					<tr align="center">
						<td>
							<div class="col-9">
					   		<div class="m_5"><a href="detail?no=22"><img src="${pageContext.request.contextPath}/resources/image/poster/no22.jpg" class="img-responsive" alt=""/></a></div>
					   		<div class="col_2">
					   			<ul class="list_4">
						   			<li><a href="detail?no=22"><span>극장판 원피스 스탬피드</span></a></li>
							 		<li>평점 &nbsp;<span class="m_4">8 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2020 .02.13</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
				
						<td> 
							<div class="col-9">
							<div class="m_5"><a href="detail?no=29"><img src="${pageContext.request.contextPath}/resources/image/poster/no29.jpg" class="img-responsive" alt=""/></a></div>
							<div class="col_2">
								<ul class="list_4">
						   			<li><a href="detail?no=29"> 토르: 러브 앤 썬더</a></li>
							 		<li>평점 &nbsp;<span class="m_4">6 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2022 .07.06</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
						
						<td>
							<div class="col-9">
						   	<div class="m_5"><a href="detail?no=30"><img src="${pageContext.request.contextPath}/resources/image/poster/no30.jpg" class="img-responsive" alt=""/></a></div>
						   	<div class="col_2">
						   		<ul class="list_4">
						   			<li><a href="detail?no=30">한산: 용의 출현</a></li>
							 		<li>평점 &nbsp;<span class="m_4">8 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2022 .07.27</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
						
						<td>
							<div class="col-9">
						   	<div class="m_5"><a href="detail?no=31"><img src="${pageContext.request.contextPath}/resources/image/poster/no31.jpg" class="img-responsive" alt=""/></a></div>
						   	<div class="col_2">
						   		<ul class="list_4">
						   			<li><a href="detail?no=29">미니언즈2</a></li>
							 		<li>평점 &nbsp;<span class="m_4">7 / 10</span></li>
						    		<li>개봉일 &nbsp;<span class="m_4">2022 .07.20</span> </li>
						    	</ul>
					    		<div class="clearfix"> </div>
						   	</div>
						   	</div>
						</td>
					</tr>
					
				</table>
				
			<div class="clearfix"> </div>			    
			</div>
      	</div>
   	</div>
</div>
 
 
<div class="container">
	<div class="content">
	<div class="col_2">
	<table>
		
		<tr valign="top">
			<td rowspan="2">
			    <h3>실시간 영화뉴스 순위</h3>
				<c:forEach var="t" items="${title}" varStatus="i" >
					<ul class="list_4">
					    <li>${num[i.index]}. <a href="https://entertain.naver.com/${link[i.index]}">${t}</a></li>
					</ul>
			    </c:forEach>
			</td>
		</tr>
		<tr valign="top">
			<td>
				<h3>실시간 영화 순위</h3>
			    <c:forEach var="api" items="${api}">
			   	 	<ul class="list_4">
			        	<li>${api.rnum}. ${api.movieNm}</li>
			        </ul>
			    </c:forEach>
			</td>
		</tr>
	</table>    
	</div>
	</div>
</div>
 
 
</body>
