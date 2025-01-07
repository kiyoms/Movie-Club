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
      <h3 class="text-center">${api.rnum }상세보기</h3>
	      <table class="table">
	        <tr>
	          <td width=20% class="text-right">감독</td>
	          <td width=50% class="text-left">${MovieAPI.director }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">출연</td>
	          <td width=50% class="text-left">${MovieAPI.actor }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">장르</td>
	          <td width=50% class="text-left">${MovieAPI.genre }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">등급</td>
	          <td width=50% class="text-left">${MovieAPI.grade }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">평점</td>
	          <td width=50% class="text-left">${MovieAPI.score }</td>
	        </tr>
	        <tr>
	          <td width=20% class="text-right">개봉일</td>
	          <td width=50% class="text-left">${MovieAPI.regdate }</td>
	        </tr>
	        <tr>
	          <td colspan="3">${ScreenDTO.story }</td>
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
