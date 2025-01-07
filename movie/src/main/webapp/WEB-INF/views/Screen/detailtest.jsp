<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>영화detail</title>
</head>
<body>
  <div style="height: 30px"></div>
  <div class="container">



      <div class="row">
      <h3 class="text-center">미리보기</h3>
	      <table class="table">
	        <td>
	          <iframe src="http://youtube.com/embed/${dto.title }" width=750 height=350></iframe>
	        </td>
		  </table>
	  </div>
    
    <div class="row">
      <h3 class="text-center">주요정보</h3>
	      <table class="table">
	        <tr>
	         <td width=30% class="text-center" rowspan="7">
	           <img src="${dto.poster }" width=100%>
	         </td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">감독</td>
	          <td width=50% class="text-left">${dto.director }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">출연</td>
	          <td width=50% class="text-left">${dto.actor }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">장르</td>
	          <td width=50% class="text-left">${dto.ganre }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">등급</td>
	          <td width=50% class="text-left">${dto.grade }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">평점</td>
	          <td width=50% class="text-left">${dto.score }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">개봉일</td>
	          <td width=50% class="text-left">${dto.open}</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">줄거리</td>
	          <td colspan="3">${dto.story }</td>
	        </tr>
	        <tr>
	          <td colspan="3" class="text-right">
	            <a href="list.do" class="btn btn-sm btn-primary">목록</a>
	          </td>
	        </tr>
	      </table>
    </div>
  </div>
</body>
</html>
