<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
.sch{
width:100px;
height:30px;
border-radius:15px;
}
</style>
</head>
<body>
<form action="joinReg.jsp" method="post">
	<table border=1 style="render">
		<tr>
			<td>id</td>
			<td>
			<input type="text" name="id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="ID�ߺ�Ȯ��" />
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="radio" name="gender" checked="checked" value="male"/>��
			    <input type="radio" name="gender" value="female" />��
			    </td>
		</tr>
		<tr>
			<td>���</td>
			<td>
				<input type="checkbox" name="hobby" value="read" checked="checked"/>����
				<input type="checkbox" name="hobby" value="game" checked="checked"/>����
				<input type="checkbox" name="hobby" value="fish"/>����
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>email</td>
			<td>
			<input type="text" name="email1" />@
			<select name="email2">
			<option value="naver.com">���̹�</option>
			<option value="daum.net">����</option>
			<option value="nate.com">����Ʈ</option>
			<option value="gmail.com" selected="selected">������</option>
						
			
			</select>
			
			
			</td>
		</tr>
		
		<tr>
			<td>����� ��</td>
			<td><textarea rows="5" cols="30" name="content">�������� �Ϳ�����</textarea></td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
			<input type="submit" value="����" class="sch"/>
			<input type="reset" value="�ʱ�ȭ "  class="sch" />
			</td>
		</tr>
		
		
	</table>
</form>
</body>
</html>