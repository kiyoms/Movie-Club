<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../menu/menubar.jsp" %>
<%@include file="../menu/footer.jsp" %>

<html>
<head>
<br>
	
<script language="JavaScript">
    function checkIt() {
        var userinput = eval("document.userinput");
               
      	//id, pw 정규화 변수
        var reg_idpw = /^[a-zA-Z0-9]{3,12}$/;
     	// 이름 정규화 변수
        var reg_name = /^[가-힣]{2,}$/
        // 이메일 정규화 변수
	    var reg_email1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z]){2,}$/;
	    var reg_email2 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		//전화번호 정규화 변수
	    var reg_phone= /^[0-9]{11,}$/;
        
	    
	    
        if(!userinput.pw.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        
        if(!userinput.pw.value.match(reg_idpw)) { // 비밀번호 유효성 검사
            alert("비밀번호를 형식에 맞게 입력해 주세요. (3 ~ 12글자, 영문 대소문자, 숫자 입력 가능)");
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
        
        if(!userinput.name.value.match(reg_name)) { // 이름 유효성 검사
            alert("이름을 형식에 맞게 입력해 주세요.");
            return false;
        }
        
        if(!userinput.phone1.value || !userinput.phone2.value )
        {
            alert("통신사/전화번호를 입력하세요");
            return false;
        }
        
        if(!userinput.phone2.value.match(reg_phone)) { // 전화번호 정규화 유효성검사 (숫자만)
        	alert("전화번호를 형식에 맞게 입력하세요");	
           	return false;
        }
        
        if(!(userinput.phone2.value.length == 11))
        {
            alert("전화번호를 형식에 맞게 입력하세요");
            return false;
        }
        
        if(!userinput.email1.value  || !userinput.email2.value )
        {
            alert("이메일을 입력하세요");
            return false;
        }
        
        if(!userinput.email1.value.match(reg_email1)) {
            alert("이메일을 형식에 맞게 입력하세요");
            return false;
        }
        
        if(userinput.email2.value == null) {
            alert("이메일을 입력하세요");
            return false;
        }
        if(!userinput.email2.value.match(reg_email2)) {
            alert("이메일을 형식에 맞게 입력하세요");
            return false;
        }
        
    }
    function email_change(){ // 이메일 도메인 select 선택창
    	var userinput = eval("document.userinput");
    	var selectEmail = document.getElementById('email');
    	
    	if(selectEmail.options[selectEmail.selectedIndex].value == "1"){
    		userinput.email2.disabled = false;
    		userinput.email2.value = "";
    	} else{
    		userinput.email2.disavled = true;
    		userinput.email2.value = selectEmail.options[selectEmail.selectedIndex].value;
    	}
    }
</script>
</head>
	<section class="py-0">
		<div class="container">
			<table>
			  	<tr>
			    	<td align="left">
			    		<h2>마이페이지 > 정보 수정 </h2>
			    	</td>
			  	</tr>
			</table>
		</div>
	</section> <br>

<body>
	<form method="post" action="/member/modifyPro" name="userinput"
				enctype="multipart/form-data" onsubmit="return checkIt()">
				
		<section class="py-0">
			<div class="container px-0 px-lg-0 mt-0">
	    		<div class="card h-0">
	    		
					<table width="720" cellspacing="0" cellpadding="3"  align="center">
						<tr> 
					      	<td colspan="2" height="39" align="center">
						     	<font size="+1" ><b>회원 정보 수정</b></font>
						   	</td>
					    </tr>
				    	<tr> 
				      		<td align="center">아이디</td>
				      		<td>
				      			${sessionScope.memId}
				      			<input type="hidden" name="id" value="${sessionScope.memId}">
					      	</td>
				    	</tr>
				    
				    	<tr> 
						    <td align="center">비밀번호</td>
						    <td> 
				        		<input type="password" name="pw" size="10" maxlength="10">
				      		</td>
				    	<tr>  
				      		<td align="center">비밀번호 확인</td>
				      		<td> 
				        		<input type="password" name="pw2" size="10" maxlength="10">
				      		</td>
				    	</tr>
				    
				    	<tr> 
				      		<td align="center">사용자 이름</td>
				      		<td> 
				        		<input type="text" name="name" size="15" maxlength="20" value="${dto.name}">
				      		</td>
				    	</tr>
				    
				    	<tr> 
				      		<td align="center">전화번호 (숫자만 입력)</td>
				      		<td> 
					        	<select name="phone1">
					        	 	<option value="${dto.phone1}">${dto.phone1}</option>
						        	<option value="SKT">SKT</option>
						        	<option value="LG">LG</option>
						        	<option value="KT">KT</option>
						        	<option value="알뜰폰">알뜰폰</option>
					        	</select>
				      		  	<input type="text" name="phone2" size="10" maxlength="11" value="${dto.phone2}">
				      		</td>
				    	</tr>
				    
				   		<tr> 
				      		<td align="center">E-Mail</td>
				      		<td>
				          		<input type="text" name="email1" size="10" maxlength="30" value="${dto.email1}">@
				          		<input type="text" name="email2" size="10" maxlength="30" value="${dto.email2}">	
				          		<select name="email" id="email" onchange="email_change()">
					        		<option value="1" selected="selected">직접입력</option>
					        		<option value="naver.com">naver.com</option>
					        		<option value="gmail.com">gmail.com</option>
					        		<option value="kakao.com">kakao.com</option>
				        		</select>
				      		</td>	
				   		</tr>
				     
				   		<tr> 
				      		<td colspan="3" align="center"> 
				       			<input type="submit" name="modify" value="수정" class="btn btn-outline-dark"/>
				       			<input type="button" value="취소" onclick="javascript:window.location='/member/modify'" class="btn btn-outline-dark"/>      
				      		</td>
				   		</tr>
				  	</table>
				</div>
			</div>
		</section>
	</form>

</body>
</html>