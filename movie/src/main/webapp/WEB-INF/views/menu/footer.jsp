<%@ page language="java" contentType="text/html; charset=utf-8"%>

<style style="text/css">
html,

#wrapper {
	position:relative;
    min-height:100%;
}

#footer1 {
    position:absolute;
    bottom:0;
    width:100%;
    height:0px;   
    background:#ccc;
}

</style>
<body>
	<div id="footer1" align="center">
       	<div>
       		<footer id="footer" style="background-color: black" >
	            <a href="javascript:window.location='/menu/mainHome'">
	            	<img src="${pageContext.request.contextPath}/resources/image/logo3.png" alt="" width="250px"/>
	            </a>
	            <p style="color: white">회사이름 회사주소</p>
	            <p style="color: white">대표 : 누군가 &nbsp; 사업자등록번호 : 000-00-00000</p>
	            <p style="color: white">대표 번호 : +82)10-1234-5678 &nbsp;  <a href="javascript:window.location='/menu/sitemap'">사이트맵</a></p>
	            <p style="color: white">Copyright &copy; 회사이름 All Rights Reserved.</p>
	       		<address style="color: white">주소 : 서울특별시 ~~~~~</address>
       		</footer>
       	</div>
    </div>
</body>