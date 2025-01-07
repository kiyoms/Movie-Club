<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>

<!DOCTYPE html>
<html>
<title>${dto.title} - 우리 사이트 이름</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<jsp:include page="informationBoardMenu.jsp"></jsp:include>
<body>   
    <div class="container-fluid">
           <div class="col-lg-8" style="float:none;margin:auto; "><!--게시판 넓이 -->
    
            <div class="row">
              
              </div>
      
            <div class="panel panel-default">
                   <div class="panel-heading">제목 : ${dto.title}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자 : ${dto.writer}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일 : <fmt:formatDate value="${dto.regdate}" pattern="yy-MM-dd a hh:mm"/>    조회 수  : ${dto.viewcnt }   추천 수 : ${dto.recommend} </div>
                   
                <div class="panel-body">
                    <table class="table table-hover"style="height:500px">
                        <thead style="width: 90%;"> 
                               ${dto.content}
                              
                    
                        </thead>
                       <div style="position: absolute; right: 30px; bottom: 30px;">
                      <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='list'">
                         목 록
                      </button>
                      <button type="button" id="modify" class="btn btn-outline btn-primary pull-right" onclick="modifyIdCheck()">
                      게시글 수정
                      </button>
                      <button type="button" id="delete" class="btn btn-outline btn-primary pull-right" onclick="deleteIdCheck()">
                      게시글 삭제
                      </button>
                       </div>
                      <div style="position: absolute;  left: 45%; bottom: 30px;">  <img src="${path}/resources/image/recommend1.png" height ="100" width="100"  onclick="recommendCheck()" onmouseover="this.src='${path}/resources/image/recommend2.png'" onmouseout="this.src='${path}/resources/image/recommend1.png'"/></div>
                      
                      
                    </table>
                </div>
            </div>
        </div>
    </div>
         <div class="col-lg-8" style="float:none;margin:auto; ">
              <div class="panel-footer">
              
              <h3 style="width: 20%;" align="center">전체 댓글 ${dto.comcnt}개</h3>
           <table class="table table-hover" style="width: 100%;">
                <c:forEach items="${dto2}" var="dto2">
               
            <tr>
               <td style="width: 20%;" align="center"><b><c:out value="${dto2.comwriter}"/></b></td>
               <td style="width: 30%;"><c:out value="${dto2.comcontent}"/></td>
               <td style="width: 10%;"><fmt:formatDate value="${dto2.regdate}" pattern="MM-dd a hh:mm"/></td>
                 <c:choose>
            <c:when test="${dto2.comwriter == id.id}">
               <td style="width: 20%;"><input type="button" value="삭제하기" name="${dto2.comno}" onclick="location.href='commentDeleteForm?comno=${dto2.comno}&bno=${dto.bno}'"/>
            </c:when>
               <c:otherwise>
           
               </c:otherwise>      
                  </c:choose>
            </tr>
            </div>
          </div>
         </c:forEach>
         </table>
         <form method="post" name="commentform" action="/board/commentPro" onsubmit="return writeSave()">
           <div class="col-lg-12"> <input type="hidden" name="comwriter" value="${id.id}"/> </div>
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
	   
	   /*if (comwriter.length > 8){
	      alert("닉네임은 8글자 이내로 해주세요.")
	      return false;
	   }*/
	   if (comcontent.length > 500){
	      alert("댓글 내용은 500글자 이내로 작성해주세요.");
	      return false;
	      }
	   /*if (comwriter.trim() == ''){
	      alert("작성자를 입력해주세요");
	      return false;
	   }*/
	   if (comcontent.trim() == ''){
	      alert("내용을 입력해주세요");
	      return false;
	   }
	   frm.submit();
	}

	function modifyIdCheck(){
	   if('${dto.writer}' == '${id.id}'){
	   location.href='informationModifyForm?bno='+${dto.bno};
	   }
	   else{
	      alert("다른사람의 게시글은 수정할 수 없습니다.")
	      return false;
	   }
	   
	}

	function deleteIdCheck(){
		if(confirm("정말 삭제하시겠습니까?")){
	   if("${dto.writer}" == "${id.id}"){
	      
	      location.href='informationDeleteForm?bno='+${dto.bno}
	      }	
	      else{
	         alert("다른사람의 게시글은 삭제할 수 없습니다.");
	         return false;
	      }
		}
	}

	function recommendCheck(){
	   if('${dto.writer}' == '${id.id}'){
	      alert("자기 글은 추천할 수 없습니다!");
	   }
	   else{
	      location.href='recommendPro?bno='+${dto.bno};
	   }
	}
/*
function commentCheck(cno,bno){
	
console.log(cno);
console.log(bno);
location.href='commentDeleteForm?bno='+bno+'&cno='+cno;
	}
	*/



/*
function canConcept(bno,recommend){
   
   if(recommend > 10){
      location.href='conceptPro?bno='+${dto.bno}
   }
   else{
      location.href='recommendPro?bno='+${dto.bno}
   }
}*/
</script>
</body>
</html>