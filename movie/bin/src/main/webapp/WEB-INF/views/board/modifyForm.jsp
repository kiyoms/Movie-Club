<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글 수정</title>
<jsp:include page="boardMenu.jsp"></jsp:include>
</head>
<body>


<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<title>글쓰기</title>

<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: 'content',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	  });
	});
</script>
</head>
<body>
<h2 style="text-align: center;">글 작성</h2><br><br><br>

<div style="width: 60%; margin: auto;">
	<form method="post" name="writeform" action="/board/modifyPro" onsubmit="return writeSave()">
		<input type="text" name="writer" style="width: 20%;" placeholder="작성자" value="${dto.writer}"/><br>
		<input type="text" name="title" style="width: 40%;" placeholder="제목" value="${dto.title}"/>
		<br><br> 
		<textarea id="summernote" name="content">${dto.content}</textarea>
		<input id="subBtn" type="button" value="작성하기" style="float: right;" onclick="goWrite(this.form)"/>
		<input id="subBtn" type="button" value="취소하기" style="float: right;" onclick="window.history.go(-1); return false;"/>
		<input type="hidden" name="bno" value="${dto.bno}"/>
		
	</form>
</div>
<a href="/board/list"></a>
</body>
<script>
function goWrite(frm) {
	var title = frm.title.value;
	var writer = frm.writer.value;
	var content = frm.content.value;
	if(title.length > 30){
		alert("글 제목은 30글자 이내로 해주세요");
		return false;
	}
	if(writer.length > 30){
		alert("작성자는 16글자 이내로 해주세요");
		return false;
	}
	if(content.length > 800){
		alert("게시글은 최대 800자까지 가능합니다.");
		return false;
	}
	if (title.trim() == ''){
		alert("제목을 입력해주세요");
		return false;
	}
	if (writer.trim() == ''){
		alert("작성자를 입력해주세요");
		return false;
	}
	if (content.trim() == ''){
		alert("내용을 입력해주세요");
		return false;
	}
	frm.submit();
}
</script>

</html>