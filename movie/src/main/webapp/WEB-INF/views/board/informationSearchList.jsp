<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>자유 게시판</title>

</head>
<jsp:include page="informationBoardMenu.jsp"></jsp:include>
<body>
<div class="page-wrapper">
    <div class="container-fluid">
         <div class="col-lg-12" style="float:none;margin:auto;"><!--게시판 넓이 -->
            <!--<div class="col-lg-12">
                <h1 class="page-header">자유 게시판</h1>
            </div> 		 -->
            <div class="row">
                  <div class="col-lg-12">
                   <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='conceptList'">
                      개념글
                      </button>
                      <button type="button" class="btn btn-outline btn-primary pull-right" onclick="location.href='writeForm'">
                      게시글 작성
                      </button>
                  </div>
              </div>
            <div class="panel panel-default">
                <div class="panel-heading">게시글 </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조회수</th>
                                <th>추천수</th>
                            </tr>
                        </thead>
                        <tbody>	
                        <c:forEach items="${notice}" var="notice">
					       	     <tr>
					                <td><c:out value="${notice.bno}"/></td>
					                <td name="bno"><a href="/board/notice?bno=${notice.bno}">               
										    
									<strong><c:out value="${notice.title}"/></strong><!-- [<c:out value="${notice.comcnt}"/>]  --> </a></td>
					                 <td><strong><c:out value="${notice.writer}"/></strong></td>
					                <td><fmt:formatDate value="${notice.regdate}" pattern="yy-MM-dd a hh:mm"/></td>
					                <td><c:out value="${notice.viewcnt}"/></td>
					               <td><c:out value="${notice.recommend}"/></td>
					               
					            </tr>
					            </c:forEach>
					            
                      		 <c:forEach items="${list}" var="list">
					       	     <tr>
					                <td><c:out value="${list.bno}"/></td>
					                <td name="bno" id="thick${list.bno}"><a href="/board/content?bno=${list.bno}">
					                	<c:choose>
										    <c:when test="${list.recommend >= 10}">
										   		<strong><c:out value="${list.title}"/>  [<c:out value="${list.comcnt}"/>]</strong><!-- Result값이 있다면 실행할 로직 -->
										    </c:when>
										    <c:otherwise>
												<c:out value="${list.title}"/>  [<c:out value="${list.comcnt}"/>] <!-- 그렇지 않다면 실행할 로직 -->
										    </c:otherwise>
										</c:choose>
					                </a></td>
					                   <td><c:out value="${list.writer}"/></td>
					                <td><fmt:formatDate value="${list.regdate}" pattern="yy-MM-dd a hh:mm"/></td>
					                <td><c:out value="${list.viewcnt}"/></td>
					                <td><c:out value="${list.recommend}"/></td>
					         <c:choose>
            <c:when test="${id.name == '관리자'}">
                <td><button type="button" id="delete"  class="btn btn-outline btn-primary pull-right"  onClick="deleteIdCheck('${list.bno}')">게시글 삭제  </button></td>
          </c:when>
               <c:otherwise>
               </c:otherwise>      
                  </c:choose>
					            </tr>
					            	<input type="hidden" name="list" id="list" value="${list}"/>
					            	<input type="hidden" name="listNum" id="recommend${list.bno}" value="${list.recommend}"/>
					           </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
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
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${searchname}','${searchtext}','${pageNum }')">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging('${searchname}','${searchtext}','${pageNum }')">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" onClick="fn_paging('${searchname}','${searchtext}','${pagination.nextPage }')">[다음]</a> 
                    </c:if>
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${searchname}','${searchtext}','${pagination.pageCnt }')">[끝]</a> 
                    </c:if>
                </div>
                <div align="center">
                <form action="" name="searchOption" method="GET">
                <select name="searchname" style="height:30px;">
                <option value="title">제목</option>
                <option value="subjcont">제목+내용</option>
                <option value="writer">글쓴이</option>
                <option value="content">내용</option>
                </select>
                <input type="text" style="height:30px;" name="searchtext"><button type="submit"> <img src="${path}/resources/image/search.png" height ="30" width="30" /></button>
                </form>
                </div>
              <!--   <div>
                    총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }
                </div>
                 --> 
</div>
                <div align="center">
                <form action="" name="searchOption" method="GET">
                <select name="searchname" style="height:30px;">
                <option value="title">제목</option>
                <option value="subjcont">제목+내용</option>
                <option value="writer">글쓴이</option>
                <option value="content">내용</option>
                </select>
                <input type="text" style="height:30px;" name="searchtext"><button type="submit"> <img src="${path}/resources/image/search.png" height ="30" width="30" /></button>
                </form>
                </div>
              <!--   <div>
                    총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }
                </div>
                 --> 
<script>
function fn_paging(curPage){
	   window.location.href = '/board/list?curPage='+ curPage;
}

function deleteIdCheck(bno){
	if(confirm("정말 삭제하시겠습니까?")){
      location.href='deleteForm?bno=' + bno;
	}
}

</script>

</body>


</html>
