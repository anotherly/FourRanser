<%@page import="Project.ProjectVO"%>
<%@page import="company.CompanyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr");
	ArrayList<ProjectVO> nameList = 
	(ArrayList<ProjectVO>)session.getAttribute("proList");
	String pId = 
	nameList.get(Integer.parseInt(request.getParameter("num"))).getP_id();
	//프로젝트명으로 프로젝트 참여 인원들을 가져옴
	CompanyDAO dao = new CompanyDAO();
	ArrayList<String> userList = dao.comCoruser(pId);
	session.setAttribute("userList", userList);
	session.setAttribute("pId", pId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>프로젝트명</td><td><%=pId %></td>
		</tr>
		<tr>
			<%for(int i=0;i<userList.size();i++){ %>
				<td><%=i+1%>번째 팀원</td>
				<td><a href="evaluateForm.jsp?num=<%=i%>">
				<%=userList.get(i) %></a></td>
				</tr><tr>
			<%} %>
		</tr>
	</table>
</body>
</html>