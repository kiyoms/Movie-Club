<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>회원가입</title>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    function checkIt() {
        var userinput = eval("document.userinput");
        
        if(!userinput.id.value) {
            alert("아이디를 입력하세요");
            return false;
        }
        
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
        
        if(!userinput.gender.value) {
            alert("성별을 입력하세요");
            return false;
        }
        
        if(!userinput.phone1.value || !userinput.phone2.value) {
            alert("전화번호를 입력하세요");
            return false;
        }
        
        if(!userinput.birth.value) // 생년월일 6자리 ex) 991212
        {
            alert("생년월일을 입력하세요");
            return false;
        }
        
        if(!userinput.email1.value || !userinput.email2.value) {
            alert("이메일을 입력하세요");
            return false;
        }
    }

    // 아이디 중복 여부를 판단     
    function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "/member/confirmId?id="+userinput.id.value ;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirm",  "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>




<form method="post" action="/member/inputPro" name="userinput" onSubmit="return checkIt()">
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr> 
    <td colspan="2" height="39" align="center">
       <font size="+1" ><b>회원가입</b></font></td>
    </tr>

    <tr> 
      <td width="200">아이디</td>
      <td width="400"> 
        <input type="text" name="id" size="15" maxlength="20">
        <input type="button" name="confirm_id" value="ID중복확인" 
        							OnClick="openConfirmid(this.form)">
      </td>
    </tr>
    <tr> 
      <td width="200">비밀번호</td>
      <td width="400" > 
        <input type="password" name="pw" size="15" maxlength="15">
      </td>
    <tr>  
      <td width="200">비밀번호 확인</td>
      <td width="400"> 
        <input type="password" name="pw2" size="15" maxlength="15">
      </td>
    </tr>
    
   
    <tr> 
      <td width="200">이름</td>
      <td width="400"> 
        <input type="text" name="name" size="15" maxlength="10">
      </td>
    </tr>
     <tr> 
      <td width="200">성별</td>
      <td width="400"> 
        <input type="radio" id="m" name="gender" value="m">남
        <input type="radio" id="w" name="gender" value="w">여
      </td>
    </tr>
     <tr> 
      <td width="200">전화번호</td>
      <td width="400"> 
	        <select name="phone1">
	        	<option value="SKT">SKT</option>
	        	<option value="LG">LG</option>
	        	<option value="KT">KT</option>
	        	<option value="알뜰폰">알뜰폰</option>
        	</select>
        <input type="text" name="phone2" size="15" maxlength="11">
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">생년월일 (주민번호 앞 6자리)</td>
      <td width="400"> 
        <input type="text" name="birth" size="15" maxlength="6"> 
        
      </td>
    </tr>
    <tr> 
      <td width="200">E-Mail</td>
      <td width="400"> 
        <input type="text" name="email1" size="15" maxlength="30">@
        <input type="text" name="email2" size="15" maxlength="30">
       
      </td>
    </tr>
  	
  	<tr> 
      
      <td> 
        <input type="hidden" name="point">
      </td>
    </tr>
  
    <tr> 
      <td colspan="2" align="center"> 
          <input type="submit" name="confirm" value="회원 가입" >
          <input type="reset" name="reset" value="다시 입력">
          <input type="button" value="취소" onclick="window.location='main'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
