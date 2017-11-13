
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
		<td>이름</td><td><%=vo.getUser_name() %></td>
	</tr>
	<tr>
		<td>email</td><td><%=vo.getUser_email() %></td>
	</tr><tr>
		<td>gender</td><td><%=vo.getGender() %></td>
	</tr><tr>
		<td>생일</td><td><%=vo.strBirth() %></td>
	</tr>
	<tr>
		<td>프로필사진</td>
		<td><img alt="" src="../Personfile/<%=vo.getPhoto()%>" width="150px" height="200px"></td>
	</tr>
	<tr>
		<td>개발</td><td><%=vo.getDevelopment() %></td>
	</tr>
	<tr>
		<td>디자인/퍼블리싱</td><td><%=vo.getDesign() %></td>
	</tr>
	<tr>
		<td>기획/컨설턴트</td><td><%=vo.getPlanning() %></td>
	</tr>
	<tr>
		<td>특수분야</td><td><%=vo.getSpecialty() %></td>
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="index.jsp">홈으로</a>
			<a href="FreedeleteForm.jsp?User_id=<%=vo.getUser_id() %>">회원탈퇴</a>
			<a href="modifyForm.jsp?User_id=<%=vo.getUser_id() %>">정보수정</a>
		</td>
	</tr>
</table>
</body>
</html>