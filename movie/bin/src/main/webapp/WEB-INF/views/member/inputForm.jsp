<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>ȸ������</title>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    function checkIt() {
        var userinput = eval("document.userinput");
        
        if(!userinput.id.value) {
            alert("���̵� �Է��ϼ���");
            return false;
        }
        
        if(!userinput.pw.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(userinput.pw.value != userinput.pw2.value)
        {
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }
       
        if(!userinput.name.value) {
            alert("�̸��� �Է��ϼ���");
            return false;
        }
        
        if(!userinput.gender.value) {
            alert("������ �Է��ϼ���");
            return false;
        }
        
        if(!userinput.phone1.value || !userinput.phone2.value) {
            alert("��ȭ��ȣ�� �Է��ϼ���");
            return false;
        }
        
        if(!userinput.birth.value) // ������� 6�ڸ� ex) 991212
        {
            alert("��������� �Է��ϼ���");
            return false;
        }
        
        if(!userinput.email1.value || !userinput.email2.value) {
            alert("�̸����� �Է��ϼ���");
            return false;
        }
    }

    // ���̵� �ߺ� ���θ� �Ǵ�     
    function openConfirmid(userinput) {
        // ���̵� �Է��ߴ��� �˻�
        if (userinput.id.value == "") {
            alert("���̵� �Է��ϼ���");
            return;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "/member/confirmId?id="+userinput.id.value ;
        
        // ���ο� �����츦 ���ϴ�.
        open(url, "confirm",  "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>




<form method="post" action="/member/inputPro" name="userinput" onSubmit="return checkIt()">
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr> 
    <td colspan="2" height="39" align="center">
       <font size="+1" ><b>ȸ������</b></font></td>
    </tr>

    <tr> 
      <td width="200">���̵�</td>
      <td width="400"> 
        <input type="text" name="id" size="15" maxlength="20">
        <input type="button" name="confirm_id" value="ID�ߺ�Ȯ��" 
        							OnClick="openConfirmid(this.form)">
      </td>
    </tr>
    <tr> 
      <td width="200">��й�ȣ</td>
      <td width="400" > 
        <input type="password" name="pw" size="15" maxlength="15">
      </td>
    <tr>  
      <td width="200">��й�ȣ Ȯ��</td>
      <td width="400"> 
        <input type="password" name="pw2" size="15" maxlength="15">
      </td>
    </tr>
    
   
    <tr> 
      <td width="200">�̸�</td>
      <td width="400"> 
        <input type="text" name="name" size="15" maxlength="10">
      </td>
    </tr>
     <tr> 
      <td width="200">����</td>
      <td width="400"> 
        <input type="radio" id="m" name="gender" value="m">��
        <input type="radio" id="w" name="gender" value="w">��
      </td>
    </tr>
     <tr> 
      <td width="200">��ȭ��ȣ</td>
      <td width="400"> 
	        <select name="phone1">
	        	<option value="SKT">SKT</option>
	        	<option value="LG">LG</option>
	        	<option value="KT">KT</option>
	        	<option value="�˶���">�˶���</option>
        	</select>
        <input type="text" name="phone2" size="15" maxlength="11">
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">������� (�ֹι�ȣ �� 6�ڸ�)</td>
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
          <input type="submit" name="confirm" value="ȸ�� ����" >
          <input type="reset" name="reset" value="�ٽ� �Է�">
          <input type="button" value="���" onclick="window.location='main'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
