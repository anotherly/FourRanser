<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>



</head>
<body>
<form action="../../login/second/indexReg.jsp" method="post" enctype="multipart/form-data"><!-- ../../login/third/index2.jsp -->
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="com_id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="id�ߺ�Ȯ��"/>
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="com_pw" />pwȮ��
			<input type="password" name="pwConfirm" /></td>
		</tr>
		<tr>
			<td>ȸ���</td>
			<td><input type="text" name="com_Name" /></td>
		</tr>
		<tr>
			<td>â����</td>
				<td><input type="text" name="found_Day" />
			</td>
		</tr>
		<tr>
			<td>��ǥ�ڸ�</td>
			<td><input type="text" name="represent" /></td>
			</tr>
		<tr>
			<td>����ڵ�Ϲ�ȣ</td>
			<td><input type="text" name="enroll_num1" />-
			<input type="text" name="enroll_num2" />-
			<input type="text" name="enroll_num3" /></td>
		</tr>
		<tr>
			<td>ȸ�� �ΰ�</td>
			<td><input type="file" name="logo" /></td>
		</tr>
		<tr>
			<td>�ֿ�������</td>
			<td><textarea rows="5" cols="60" name="info">300�� �̳��� �� �ּ���</textarea></td>
		</tr>
		<tr>
			<td>����ڸ�</td>
			<td><input type="text" name="charger" /></td>
			<!-- <td>
			<input type="checkbox" name="hobby" value="read"/>����
			<input type="checkbox" name="hobby" value="game" checked="checked"/>����
			<input type="checkbox" name="hobby" value="fish" checked="checked"/>����
			</td> -->
		</tr>
		<tr>
			<td>����� ����ó</td>
			<td><select name="char_phone1">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>-
			<input type="text" name="char_phone2" />-
			<input type="text" name="char_phone3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>����ó(��ǥ��ȭ)</td>
			<td><input type="text" name="com_phone1" />-
			<input type="text" name="com_phone2" />-
			<input type="text" name="com_phone3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>ȸ���ּ�</td>
			<td>
				<select name="com_address1">
					<option value="����">����</option>
					<option value="��õ">��õ</option>
					<option value="�λ�">�λ�</option>
					<option value="�뱸">�뱸</option>
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="���">���</option>
					<option value="�泲">�泲</option>
					<option value="���">���</option>
					<option value="����">����</option>
					<option value="���">���</option>
					<option value="�泲">�泲</option>
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="����">����</option>
				</select><input type="text" name="com_address2">
			</td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td><input type="text" name="com_email1">@
				<select name="com_email2">
					<option value="naver.com">���̹�</option>
					<option value="gmail.com" selected="selected">����</option>
					<option value="daum.net" >����</option>
					<option value="yahoo.co.kr">����</option>
				</select></td>
		</tr>
		<tr>
			<td>ȸ�� Ȩ������</td>
			<td>http://<input type="text" name="homepage"></td>
		</tr>
		<tr>
			<td>���� ������Ʈ</td>
			<td><input type="file" name="com_proj"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����"/> <!-- class="sch"  -->
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>