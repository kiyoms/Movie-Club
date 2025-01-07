<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>회원정보수정</title>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">


<script language="JavaScript">
    function checkIt() {
        var userinput = eval("document.userinput");
               
        if(!userinput.pw.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.pw.value != userinput.pw2.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
       
        if(!userinput.name.value) {
            alert("이름을 입력하세요");
            return false;
        }
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("주민등록번호를 입력하세요");
            return false;
        }
    }
</script>

<body>
<form method="post" action="/member/modifyPro" name="userinput" onsubmit="return checkIt()">

  <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center">
    <tr > 
      <td  colspan="2" height="39" align="center">
	     <font size="+1" ><b>회원 정보수정</b></font></td>
    </tr>
    <tr>
      <td colspan="2" class="normal" align="center">회원 정보 수정</td>
    </tr>
  
    <tr> 
      <td  width="200">아이디</td>
      <td  width="400">
      	${sessionScope.memId}
      	<input type="hidden" name="id" value="${sessionScope.memId}">
      </td>
    </tr>
    
    <tr> 
      <td width="200">비밀번호</td>
      <td width="400"> 
        <input type="password" name="pw" size="10" maxlength="10" value="${dto.pw}">
      </td>
    </tr>  
    
    <tr> 
      <td width="200">사용자 이름</td>
      <td width="400"> 
        <input type="text" name="name" size="15" maxlength="20" value="${dto.name}">
      </td>
    </tr>
    
    <tr> 
      <td   width="200">전화번호</td>
      <td  width="400"> 
        <input type="hidden" name="phone1" value="${dto.phone1}">
        	 <select name="phone1">
        	 	<option value="dtophone1">${dto.phone1}</option>
	        	<option value="SKT">SKT</option>
	        	<option value="LG">LG</option>
	        	<option value="KT">KT</option>
	        	<option value="알뜰폰">알뜰폰</option>
        	</select>
        <input type="text" name="phone2" size="15" maxlength="20" value="${dto.phone2}">
      </td>
    </tr>
    
    
    <tr> 
      <td width="200">생년월일</td>
      <td width="400"> 
        <input type="text" name="birth" size="15" maxlength="6" value="${dto.birth}">
      </td>
    </tr>
   <tr> 
      <td width="200">E-Mail</td>
      <td width="400">
          <input type="text" name="email1" size="15" maxlength="30" value="${dto.email1}">@
          <input type="text" name="email2" size="15" maxlength="30" value="${dto.email2}">	
      </td>
    </tr>
     
    <tr> 
      <td colspan="2" align="center"> 
       <input type="submit" name="modify" value="수   정" >
       <input type="button" value="취  소" onclick="javascript:window.location='/member/main'">      
      </td>
    </tr>
  </table>
</form>
</body>
</html>