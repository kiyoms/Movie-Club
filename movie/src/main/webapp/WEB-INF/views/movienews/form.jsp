<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h1>관리자 모드 영화인 등록</h1>


<form action="/movienews/insert" method="post">
                    <input type="hidden" name="num" value="${fnum}" />
	영화인이름 : 	    <input type="text" 	name="name" /> 	    <br />
	성별 :        	<input type="text" 	name="gneder" /> 	<br />
	출생 : 	        <input type="text" 	name="birth" /> 	<br />
	분야(배우/감독) : 	<input type="text" 	name="field" /> 	<br />
	출품작 : 	        <input type="text" 	name="exhibit" /> 	<br />
	수상내역 : 	    <input type="text" 	name="awards" /> 	<br />
	프로필사진 : 	    <input type="file" 	name="profile" /> 	<br />
			        <input type="submit" 	value="등록" /> 
</form>







