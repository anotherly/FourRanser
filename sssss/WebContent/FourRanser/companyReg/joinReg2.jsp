<%@page import="Requestinfo.MemberDAO"%>
<%@page import="Requestinfo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String [] hoArr =request.getParameterValues("hobby");

	String hobby ="";
	
	for(int i =0;i<hoArr.length;i++)
	{
		hobby+=hoArr[i];
		if(i<hoArr.length-1)
			hobby+=",";
	}
	
	String email = request.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	mem.setGender(request.getParameter("gender"));
	mem.setHobby(hobby);
	mem.setEmail(email);
	mem.setContent(request.getParameter("content"));
	
	MemberDAO dao = new MemberDAO();
	dao.insert(mem);
	
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border=1>
		<tr>
			<td>id</td>
			<td><%=mem.getId() %></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><%=mem.getPw() %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=mem.getGender() %></td>
		</tr>
		<tr>
			<td>취미</td>
			<td><%=mem.getHobby() %></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><%=request.getParameter("ff") %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=mem.getEmail() %></td>
		</tr>
		<tr>
			<td>남기실 말</td>
			<td><%=mem.getContent().replaceAll("\n", "<br>") %></td>
		</tr>
		
	</table>
</body>
</html>