<%@page import="company.CompanyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr");
	ArrayList<String> nameList = 
	(ArrayList<String>)session.getAttribute("userList");
	String pId = (String)session.getAttribute("pId");
	System.out.println(pId);
	String userId = 
	nameList.get(Integer.parseInt(request.getParameter("num")));
	System.out.println(userId);
	session.setAttribute("userId", userId);
	//������Ʈ������ ������Ʈ ���� �ο����� ������
	CompanyDAO dao = new CompanyDAO();
	ArrayList<String> userList = dao.comCoruser(pId);
%>
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
<!-- enctype="multipart/form-data" �̰� ��� �ȵȰſ���...-->
<form action="evaluateReg.jsp" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2">����� ������ �����ּ���!</td>
		</tr>
		<tr>
			<td>������Ʈ��</td>
			<td><%=pId %></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><%=userId %></td>
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
			<td>�򰡻���</td>
			<td><input type="file" name="eval_file" /></td>
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