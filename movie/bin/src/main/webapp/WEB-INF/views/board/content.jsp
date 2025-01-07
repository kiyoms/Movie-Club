<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${dto.title} - 우리 사이트 이름</title>
</head>
<jsp:include page="boardMenu.jsp"></jsp:include>
<body>	
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="col-lg-8"><!--게시판 넓이 -->
    
            <div class="row">
              
              </div>
           
            <div class="panel panel-default">
                <div class="panel-heading">제목 : ${dto.title}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자 : ${dto.writer}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일 : <fmt:formatDate value="${dto.regdate}" pattern="yyyy년MM월dd일 a hh:mm"/>    추천 수 : ${dto.recommend} </div>
                
                <div class="panel-body">
                    <table class="table table-hover" >
                        <thead style="width: 90%;"> 
                       		  ${dto.content}
               			<input type="button" value="추천하기" onclick="location.href='recommendPro?bno='+${dto.bno}"/>
                        </thead>
                      <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='list'">
                      	목 록
                      </button>
                 	  <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='modifyForm?bno='+${dto.bno}">
                      게시글 수정
                      </button>
                      <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='deleteForm?bno='+${dto.bno}">
                      게시글 삭제
                      </button>
                      
                      
                    </table>
                </div>
            </div>
        </div>
    </div>
      <div class="panel-footer">
      	<div class="col-lg-12"><h3 style="width: 20%;" align="center">전체 댓글 ${dto.comcnt}개</h3></div>
      	  <table class="table table-hover" style="width: 100%;">
			 		<c:forEach items="${dto2}" var="dto2">
				<tr>
					<td style="width: 20%;" align="center"><b><c:out value="${dto2.comwriter}"/></b></td>
					<td style="width: 50%;"><c:out value="${dto2.comcontent}"/></td>
					<td style="width: 30%;" align="right"><fmt:formatDate value="${dto2.regdate}" pattern="yyyy년MM월dd일 a hh:mm"/></td>

				</tr>
		
			</c:forEach>
			</table>
	  	 <form method="post" name="commentform" action="/board/commentPro" onsubmit="return writeSave()">
	  		<div class="col-lg-12"> <input type="text" name="comwriter" placeholder="닉네임"/> </div>
	  		<div class="col-lg-12"> <textarea name="comcontent" rows="3" cols="100" placeholder="댓글 내용을 입력해주세요"></textarea></div>
	  		<div class="col-lg-12"> <input type="button" value="작성하기" onclick="goWrite(this.form)"/> </div>
	  		<input type="hidden" name="bno" value="${dto.bno}"/>
	  		
			</tr>
	  	</form>
		</div>
	<script>
function goWrite(frm) {
	var comwriter = frm.comwriter.value
	var comcontent = frm.comcontent.value;
	
	if (comwriter.length > 8){
		alert("닉네임은 8글자 이내로 해주세요.")
		return false;
	}
	if (comcontent.length > 500){
		alert("댓글 내용은 500글자 이내로 작성해주세요.");
		return false;
		}
	if (comwriter.trim() == ''){
		alert("작성자를 입력해주세요");
		return false;
	}
	if (comcontent.trim() == ''){
		alert("내용을 입력해주세요");
		return false;
	}
	frm.submit();
}
</script>
</body>
</html>
