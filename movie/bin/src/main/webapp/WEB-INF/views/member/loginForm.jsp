<%@ page language="java" contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>로그인</title>
   <script language="javascript">
       function begin(){
         document.myform.id.focus();
       }
       function checkIt(){
         if(!document.myform.id.value){
           alert("아이디를 입력하지 않으셨습니다.");
           document.myform.id.focus();
           return false;
         }
         if(!document.myform.pw.value){
           alert("비밀번호를 입력하지 않으셨습니다.");
           document.myform.passwd.focus();
           return false;
         }
         
       }
   </script>
</head>
<BODY onload="begin()">
<form name="myform" action="/member/loginPro" method="post" onSubmit="return checkIt()">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  
  <TR height="30">
    <TD colspan="2" align="middle"><STRONG>회원로그인</STRONG></TD></TR>
  
  <TR height="30">
    <TD width="110" align=center>아이디</TD>
    <TD width="150" align=center>
       <INPUT type="text" name="id" size="15" maxlength="15"></TD></TR>
  <TR height="30">
    <TD width="110" align=center>비밀번호</TD>
    <TD width="150" align=center>
      <INPUT type=password name="pw" size="15" maxlength="15"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle">
      <INPUT type=submit value="로그인"> 
      <INPUT type=reset value="다시입력">
      <input type="button" value="회원가입" onclick="window.location='/member/inputForm'"></TD></TR>
</TABLE>
	<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
</form>

</BODY>
</HTML>







