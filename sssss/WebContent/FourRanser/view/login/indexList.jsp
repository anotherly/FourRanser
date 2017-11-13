<%@page import="req.CompanyDAO"%>
<%@page import="req.CompanyVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	CompanyDAO dao = new CompanyDAO();
	ArrayList<CompanyVO> mems = dao.list();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">
	<tr>
		<td>id</td>
		<td>email</td>
	</tr>

<% for(CompanyVO vo : mems) {%>
<tr>
		<td><a href="detail.jsp?id=<%=vo.getCom_id() %>"><%=vo.getCom_id() %></a></td>
		<td><%=vo.getCom_Email() %></td>
	</tr>

<%} %>
	<tr>
		<td colspan="2" align="right">
			<a href="joinForm.jsp">회원가입</a>
		</td>
	</tr>
</table>
</body>
</html>