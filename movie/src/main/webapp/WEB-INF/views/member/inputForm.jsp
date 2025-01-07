<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='tags' uri="http://www.springframework.org/tags" %>
<%@ include file="../menu/menubar.jsp" %>
<%@ include file="../menu/footer.jsp" %>

<html>
	<head>
		<c:if test="${sessionScope.memId != null}"> 
			<script>
			   	alert("로그아웃 후 다시 시도해주세요");
				window.location=history.go(-1);
			</script>
		</c:if> 
		<title>회원가입</title>
	
	<script type="text/javascript" language="JavaScript">
	
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
	        
	        if(!userinput.id.value) {
	            alert("아이디를 입력하세요");
	            return false;
	        }  
	        
	        if(!userinput.id.value.match(reg_idpw)) { // 아이디 유효성 검사
	            alert("아이디를 형식에 맞게 입력해 주세요. (3 ~ 12글자, 영문 대소문자, 숫자 입력 가능)");
	            return false;
	        }  
	        
	        if(!userinput.pw.value) {
	            alert("비밀번호를 입력하세요");
	            return false;
	        }
	        
	        if(!userinput.pw.value.match(reg_idpw)) { // 비밀번호 유효성 검사
	            alert("비밀번호를 형식에 맞게 입력해 주세요. (3 ~ 12글자, 영문 대소문자, 숫자 입력 가능)");
	            return false;
	        }  
	        
	        if(userinput.pw.value != userinput.pw2.value) {
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
	        
	        if(!userinput.gender.value) {
	            alert("성별을 입력하세요");
	            return false;
	        }
	        
	        if(userinput.phone1.value == "base") {
	            alert("통신사를 선택해 주세요.");
	            return false;
	        }
	        
	        if(!userinput.phone2.value) {
	            alert("전화번호를 입력하세요");
	            return false;
	        }
	        
	        if(!userinput.phone2.value.match(reg_phone)) { // 전화번호 정규화 유효성검사 (숫자만)
	        	alert("전화번호를 형식에 맞게 입력하세요");	
	           	return false;
	        }
	        
	        if(!(userinput.phone2.value.length == 11)) {
	            alert("전화번호를 형식에 맞게 입력하세요");
	            return false;
	        }
	        
	        if(!userinput.birth.value) {
	            alert("생년월일을 입력하세요");
	            return false;
	        }
	        
	        if(!userinput.email1.value || !userinput.email2.value) {
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
	
	    function openConfirmid(userinput) {
	    	
	    	var userinput = eval("document.userinput");
	    	
	    	var reg_idpw = /^[a-zA-Z0-9]{3,12}$/;
	    	
	    	if(!userinput.id.value) {
	            alert("아이디를 입력하세요");
	            return false;
	        }
	    	
	    	if(!userinput.id.value.match(reg_idpw)) {
		        alert("아이디를 형식에 맞게 입력해 주세요. (3 ~ 12글자, 영문 대소문자, 숫자 입력 가능)");
		        return false;
		    }  
	    	
	        var url = "/member/confirmId?id="+userinput.id.value ;
	        option = "width=500, height=300, toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no"
	        open(url, "confirm",  option);
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
<br>

<body>

	<section class="py-0">
		<div class="container px-4 px-lg-0 mt-0">
			<div class="row-2  justify-content-center">
    		<div class="card h-0">

				<form method="post" action="/member/inputPro" name="userinput" onSubmit="return checkIt()">
					<table width="600" cellspacing="0" cellpadding="3" align="center" >
				    	<tr> 
				    		<td colspan="2" height="39" align="center">
				       			<font size="+1" ><b>회원가입</b></font>
				       		</td>
				    	</tr>
				    	<tr> 
				      		<td>
				      			<span style="color : red">*</span>아이디
				      		</td>
				      		<td> 
					        	<input type="text" id="id" name="id" size="15" maxlength="20"/>
					        	<input type="button" name="confirm_id" value="ID중복확인" 
					        						 OnClick="openConfirmid(this.form)" class="btn btn-outline-dark"/> <br>
					      	</td>
				    	</tr>
				    	<tr> 
				      		<td>
				      			<span style="color : red">*</span>비밀번호
				      		</td>
				      		<td> 
				        		<input type="password" id="pw" name="pw" size="15" maxlength="15"/>
				      		</td>
				    	<tr>  
				      		<td>
				      			<span style="color : red">*</span>비밀번호 확인
				      		</td>
				      		<td> 
				        		<input type="password" id="pw2" name="pw2" size="15" maxlength="15">
				      		</td>
				    	</tr>
				   
				   	 	<tr> 
				      		<td>
				      			<span style="color : red">*</span>이름
				      		</td>
					      	<td> 
					        	<input type="text" id="name" name="name" size="10" maxlength="10">
					      	</td>
				    	</tr>
				     	<tr> 
				      		<td>
				      			<span style="color : red">*</span>성별
				      		</td>
				      		<td> 
				        		<input type="radio" id="m" name="gender" value="남">남
				        		<input type="radio" id="w" name="gender" value="여">여
				      		</td>
				    	</tr>
				     	<tr> 
				      		<td>
				      			<span style="color : red">*</span>전화번호 (숫자만 입력)
				      		</td>
				      		<td> 
						        <select name="phone1" >
						        	<option value="base">통신사</option>
						        	<option value="SKT">SKT</option>
						        	<option value="LG">LG</option>
						        	<option value="KT">KT</option>
						        	<option value="알뜰폰">알뜰폰</option>
					        	</select>
					        	<input type="text" id="phone2" name="phone2" size="10" maxlength="11"/>
				      		</td>
				    	</tr>
				    	<tr> 
				      		<td>
				      			<span style="color : red">*</span>생년월일
				      		</td>
					      	<td> 
					        	<input type="date" name="birth"> 
					      	</td>
				    	</tr>
				    	<tr> 
				      		<td>
				      			<span style="color : red">*</span>E-Mail
				      		</td>
				      		<td> 
				        		<input type="text" name="email1" size="10" maxlength="30"/> @
				        		<input type="text" name="email2" size="10" maxlength="30"/>
					        	<select name="email" id="email" onchange="email_change()">
					        		<option value="1">직접입력</option>
					        		<option value="naver.com">naver.com</option>
					        		<option value="gmail.com">gmail.com</option>
					        		<option value="kakao.com">kakao.com</option>
					        	</select>
				    			<input type="hidden" name="point" value="0">   
				      		</td>
				    	</tr>
				    	<tr>
					    	<td colspan="2" align="center"> 
						          <input type="submit" name="confirm" value="회원 가입" class="btn btn-outline-dark"/>
						          <input type="reset" name="reset" value="다시 입력" class="btn btn-outline-dark"/>
						          <input type="button" value="취소" onclick="javascript:window.location='/menu/mainHome'" class="btn btn-outline-dark"/>
					      	</td>
				    	</tr>
				  	</table>
				</form>
			</div>
    	</div>
    	</div>
	</section>

</body>
</html>
