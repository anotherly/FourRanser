<%@page import="kbj.PersonVO"%>
<%@page import="kbj.PersonDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.detail(request.getParameter("User_id"));
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"></script>
</head>
<body>
<table border="">
	<tr>
		<td>id</td><td><%=vo.getUser_id() %></td>
	</tr><tr>
		<td>�̸�</td><td><%=vo.getUser_name() %></td>
	</tr>
	<tr>
		<td>email</td><td><%=vo.getUser_email() %></td>
	</tr><tr>
		<td>gender</td><td><%=vo.getGender() %></td>
	</tr><tr>
		<td>����</td><td><%=vo.strBirth() %></td>
	</tr>
	<tr>
		<td>�����ʻ���</td>
		<td><img alt="���Ͷ�" src="personfile/<%=vo.getPhoto()%>" width="150px" height="200px"></td>
	</tr>
	<tr>
		<td>����</td><td><%=vo.getDevelopment() %></td>
	</tr>
	<tr>
		<td>������/�ۺ���</td><td><%=vo.getDesign() %></td>
	</tr>
	<tr>
		<td>��ȹ/������Ʈ</td><td><%=vo.getPlanning() %></td>
	</tr>
	<tr>
		<td>Ư���о�</td><td><%=vo.getSpecialty() %></td>
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="../../center/first/index.jsp">Ȩ����</a>
			<a href="FreedeleteForm.jsp?User_id=<%=vo.getUser_id() %>">ȸ��Ż��</a>
			<a href="modifyForm.jsp?User_id=<%=vo.getUser_id() %>">��������</a>
		</td>
	</tr>
</table>
</body>
</html>