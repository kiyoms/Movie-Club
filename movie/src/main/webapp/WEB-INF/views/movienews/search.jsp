<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

<h1>영화인 검색</h1>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
  }
</style>

<div class="container">
   <table class="table" width="500" cellpadding="0" cellspacing="0" align="center">
      <thead class="thead-dark">
         <tr>
            <th>이름</th><th>성별</th><th>출생</th>
      </thead>
    <c:if test= "${list.size() > 0}" >
         <c:forEach var="dto" items="${list}">
            <tr>                
              <td><a href="/movienews/content?fnum=${dto.fnum}">${dto.name}</a></td>
           	  <td>${dto.gneder}</td>
              <td>${dto.birth}</td>         
            </tr>
         </c:forEach>   
     </c:if>
   </table>
</div>