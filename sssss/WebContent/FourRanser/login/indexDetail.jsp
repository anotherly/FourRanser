<%@page import="req.CompanyVO"%>
<%@page import="req.CompanyDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	CompanyDAO dao = new CompanyDAO();
	CompanyVO vo = dao.detail(request.getParameter("com_id"));
	request.setCharacterEncoding("EUC-KR");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- <script type="text/javascript" src='../js/member.js'></script> -->
</head>
<body>
<table border="">
	<tr><%System.out.print("������� ����?"); %>
		<td>id</td><td><%=vo.getCom_id()%></td>
	</tr><tr><%System.out.print("�ϰ��ȿ��°���??"); %>
		<td>�����</td><td><%=vo.getCom_name()%></td>
	</tr><tr>
		<td>â����</td><td><%=vo.getFound_Day()%></td>
	</tr><tr>
		<td>��ǥ��</td><td><%=vo.getRepresent() %></td>
	</tr><tr>
		<td>����ڵ�Ϲ�ȣ</td><td><%=vo.getEnroll_Num()%></td>
	</tr><tr>
		<td>�ֿ�������</td><td><%=vo.getInfo()%></td>
	</tr><tr>
		<td>������̸�</td><td><%=vo.getCharger() %></td>
	</tr><tr>
		<td>����ڹ�ȣ</td><td><%=vo.getChar_Phone() %></td>
	</tr><tr>
		<td>��ǥ��ȭ</td><td><%=vo.getCom_Phone()%></td>
	</tr><tr>
		<td>�ּ�</td><td><%=vo.getCom_Address()%></td>
	</tr><tr>
		<td>�̸���</td><td><%=vo.getCom_Email() %></td>
	</tr><tr>
		<td>Ȩ������</td><td><%=vo.getHomepage()%></td>
	</tr><tr>
		<td>���� ������Ʈ</td><td><%=vo.getCom_Proj()%></td>
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="memList.jsp">ȸ�����</a>
			<a href="deleteForm.jsp?id=<%=vo.getCom_id() %>">ȸ��Ż��</a>
			<a href="modifyForm.jsp?id=<%=vo.getCom_id() %>">��������</a>
		</td>
	</tr>
</table>
</body>
</html>