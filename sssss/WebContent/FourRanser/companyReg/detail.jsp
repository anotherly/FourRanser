<%@page import="Requestinfo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Requestinfo.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">
	<tr>
		<td>id</td><td><%=vo.getId() %></td>
	</tr><tr>
		<td>email</td><td><%=vo.getEmail() %></td>
	</tr><tr>
		<td>gender</td><td><%=vo.getGender() %></td>
	</tr><tr>
		<td>grade</td><td><%=vo.getGrade() %></td>
	</tr><tr>
		<td>생일</td><td><%=vo.strBirth() %></td>
	</tr><tr>
		<td>등록일</td><td><%=vo.strRegDate() %></td>
	</tr><tr>
		<td>hobby</td><td><%=vo.getHobby() %></td>
	</tr><tr>
		<td>content</td><td><%=vo.getContent().replaceAll("\r\n", "<br>") %></td>	
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="memList2.jsp">회원목록</a>
			<a href="deleteForm.jsp?id=<%=vo.getId() %>">회원탈퇴</a>
			<a href="modifyForm.jsp?id=<%=vo.getId() %>">정보수정</a>
		</td>
	</tr>
</table>
</body>
</html>