<h1><p align="center"> 영화 커뮤니티 사이트 Movie Club </p></h1>


### 주의사항 
프로젝트 기동 시, 필요한 키 값들이 보안상의 이유로 제거 되어 있기 때문에 빌드해도 동작하지 않습니다.

### 개요
프로젝트 기간 : 2022.06 ~ 2022.07<br>
프로젝트 이름: Movie Club <br>
개발언어: JAVA11, Python, JavaScript
DBMS : ORACLE SQL12C<br>
API : Chart.js<br>
Tool : Spring Framework<br>
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
 
### DB테이블 정의서(게시판)

![image](https://github.com/user-attachments/assets/054d1f72-b1e3-43ce-838c-472f202fccc9)

![image](https://github.com/user-attachments/assets/cfc69e58-19e6-4315-a471-baa656299838)




### 주요코드 (게시판)

```
    public void rangeSetting(int curPage){
        
        setCurRange(curPage);        
        this.startPage = (curRange - 1) * rangeSize + 1;
        this.endPage = startPage + rangeSize - 1;
        
        if(endPage > pageCnt){
            this.endPage = pageCnt;
        }
        
        this.prevPage = curPage - 1;
        this.nextPage = curPage + 1;
    }
    
    
    public void setCurRange(int curPage) {
        this.curRange = (int)((curPage-1)/rangeSize) + 1;
    }
    
```
```
<![CDATA[	select * from 
		(select board.* , rownum r from 
				(select  bno,
				title,
				writer,
				regdate,
				viewcnt,
				comcnt,
				recommend,
				contenttype  from board where title LIKE '%'||#{searchtext}||'%' OR content LIKE '%'||#{searchtext}||'%' order by bno desc) board where recommend >= 10 AND contenttype ='자유' ) 
				where r > #{startIndex}  and r <= #{startIndex}+10
]]>
   
```
```
if(searchname.equals("")) {
		count = service.getArticleCount();
		Pagination pagination = new Pagination(count,curPage);
		articleList = service.getArticles(pagination.getStartIndex());
	    model.addAttribute("list",articleList);
	    model.addAttribute("pagination",pagination);
		 return "board/list";
		}
  
```
```
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

```


### 느낀점

첫 프로젝트때는 API사용하는게 미숙했었는데 이번에 게시판 기능을 Summer Note API를 활용하여 게시판에서 글을 적을때 글씨체, 글자색상 변경 등 다양한 기능들을 추가할 수 있었어서 만족스러웠다.<br>
데이터를 불러올땐 GET방식을 사용해서 불러오게 했는데, 아무래도 정식 서비스와는 다르게 데이터가 적어서 그런지 문제없이 잘 실행이 됐지만, 실제로 서비스 하게 될 경우 대용량 DB를 처리해야 하는데<br>
기회가 있다면 대용량 DB에서 쿼리 성능과 튜닝을 해보는 과정을 거쳐 더 보안성 좋고 속도가 빠르게 처리하는 과정을 학습해 보고 싶다는 생각이 들었다.<br>
여러모로 부족한 점이 많은 프로젝트였지만, 이번 프로젝트로 협업의 중요성을 더욱 깨닫게 된 것 같다.














