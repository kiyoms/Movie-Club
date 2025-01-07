<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>
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
    <div class="container-fluid">
        <div class="col-lg-8" style="float:none;margin:auto;"><!--게시판 넓이 -->
            <div class="panel panel-default">
                <div class="panel-heading">제목 : ${dto.title}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자 : <strong>${dto.writer}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일 : <fmt:formatDate value="${dto.regdate}" pattern="yyyy년MM월dd일 a hh:mm"/> 조회 수  : ${dto.viewcnt } 추천 수 : ${dto.recommend}  </div>
                
                <div class="panel-body" style="height:500px">
                    <table class="table table-hover" >
                        <thead style="width: 90%;"> 
                       		  ${dto.content}
                      <div style="position: absolute;  left: 45%; bottom: 30px;">  <img src="${path}/resources/image/recommend1.png" height ="100" width="100"  onclick="recommendCheck()" onmouseover="this.src='${path}/resources/image/recommend2.png'" onmouseout="this.src='${path}/resources/image/recommend1.png'"/></div>     <div style="position: absolute; right: 30px; bottom: 30px;">
                             <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='list'">
		                      	목 록
        		             </button>
        		         </div>
                     
                 </table>
                </div>
            </div>
        </div>
    </div>
</script>
</body>
</html>
