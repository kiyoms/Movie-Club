<h1><p align="center"> 영화 커뮤니티 사이트 Movie Club </p></h1>


### 주의사항 
프로젝트 기동 시, 필요한 키 값들이 보안상의 이유로 제거 되어 있기 때문에 빌드해도 동작하지 않습니다.

### 개요
프로젝트 기간 : 2022.06 ~ 2022.07<br>
프로젝트 이름: Movie Club <br>
개발언어: JAVA11, Python, JavaScript
DBMS : ORACLE SQL12C<br>
API : Chart.js<br>
Tool : Spring Framework 
멤버: 박성빈,문기용,조성혁,이태기,박갑용<br>


### 프로젝트 설명
단편, SF 코메디 등 모든 영화에 대해
정보를 얻을 수 있고 이야기 할 수 있는 
커뮤니티 사이트 입니다.

자신이 좋아하는 영화에 대해 
리뷰 또는 평점을 작성하고 
소통 할 수 있는 기능들을 구현하였으며

상업적 문제로 영화 상영은 불가능하나 
사이트의 번성에 따라 영화사 제휴에 따른
영화 상영 확장성을 갖고 있습니다.

게시판 활동을 하면 포인트를 얻을 수 있고, 포인트를 사용해 보고싶은 영화를
시청하는등 커뮤니티 기능에 중점을 둔 프로젝트 입니다.

### 기능
박성빈 : 영화 최신, 인기 뉴스 페이지<br>
문기용 : 영화 커뮤니티 게시판<br>
조성혁 : 커뮤니티 회원 관리<br>
이태기 : 관리자 페이지<br>
박갑용 : 영화 리스트, 영화 기본 정보 페이지<br>
 

### 주요코드 (게시판)

```
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
----

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
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
                    </c:if>
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
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
list.jsp

```

```
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
	<form method="post" name="writeform" action="/board/writePro" onsubmit="return writeSave()">
		<input type="hidden" name="writer" style="width: 20%;" value="${id.id}"/>작성자 : ${id.id}<br>
		<input type="text" name="title" style="width: 40%;" placeholder="제목"/>
		<br><br> 
		<textarea id="summernote" name="content"></textarea>
		<input id="subBtn" type="button" value="작성하기" style="float: right;" onclick="goWrite(this.form)"/>
		<input id="subBtn" type="button" value="취소하기" style="float: right;" onclick="window.history.go(-1); return false;"/>
		
	</form>
</div>
<a href="/board/list"></a>
</body>

writeform
```

```
	 <select id="getArticles" resultType="org.movie.model.BoardDTO">
			<![CDATA[	select * from 
				(select board.* , rownum r from 
					(select  bno,
					title,
					writer,
					regdate,
					viewcnt,
					comcnt,
					recommend  from board where contenttype ='자유' order by bno desc) board) 
						where r > #{startIndex}  and r <= #{startIndex}+10 
			]]>
	</select>
	
		 <select id="getWriterSearch" resultType="org.movie.model.BoardDTO">
			<![CDATA[	select * from 
				(select board.* , rownum r from 
					(select  bno,
					title,
					writer,
					regdate,
					viewcnt,
					comcnt,
					recommend  from board where contenttype ='자유' AND writer LIKE '%'||#{searchtext}||'%' order by bno desc) board) 
						where r > #{startIndex}  and r <= #{startIndex}+10
			]]>
	</select>

board mapper.xml

컨텐츠 불러오는거랑 검색기능
```
```

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
      
      location.href='deleteForm?bno='+${dto.bno}
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
다른 사람의 게시글을 수정,삭제하지 못하게 게시글의 작성자와 
로그인한 작성자가 다르면 수정,삭제를 하지 못하게함
같은 방식으로 자신이 작성한 게시글은 추천하지 못하게 함
content.jsp
```




### 진행하면서 아쉬웠던 점
프로젝트를 진행하면서 크게 아쉬웠던 점은 영화 저작권문제 때문에 홈페이지에서 영화를 재생 할수없어 유튜브링크로 대체한게 많이 아쉬웠다.<br>
커뮤니티 사이트다보니 게시판이 주된 기능이였는데 추천이 높은 게시글을 불러올때 get 방식으로 데이터를 보내는 방식을 사용했는데 더 좋은 방법이 있을것 같았다.<br>
한달이라는 시간안에 프로젝트를 완성해야하다보니 시간이 촉박했고, 다른 페이지들도 미완성인 부분이 많아 게시판과 연동되는 기능들을 많이 포기해 너무 아쉬웠다.











