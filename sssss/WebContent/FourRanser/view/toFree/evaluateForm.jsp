<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.sch{
	width:70px;
	height:30px;
	border-radius:15px; 
}

</style>
</head>
<body>
<form action="evaluateReg.jsp" method="post">
	<table border="1">
		<tr>
			<td colspan="2">����� ������ �����ּ���!</td>
		</tr>
		<tr>
			<td>������Ʈ��</td>
			<td><input type="text" name="p_id" /></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><input type="text" name="user_id" /></td>
		</tr>
		<tr>
			<td>�����ɷ�</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>�米��</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>���Ǽ�</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>â�Ƿ�</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="Ȯ��" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="memList.jsp">���</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>