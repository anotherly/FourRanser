<%@page import="Project.ProjectVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="company.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr");
	String comId = request.getParameter("comId");
	//��� ���̵�� ����� �� ������Ʈ���� �޾ƿ�--dao
	CompanyDAO dao = new CompanyDAO();
	ArrayList<ProjectVO> proList = dao.comFindPro(comId);
	 session.setAttribute("proList", proList); 
	/* int i =1; */
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
			<td>�����</td><td><%=comId %></td>
		</tr>
		<tr>
			
			<%for(int i=0;i<proList.size();i++){ %>
				<td><%=i+1%>��° ������Ʈ</td>
				<td><a href="ProJoinUserList.jsp?num=<%=i%>">
				<%=proList.get(i).getP_id() %></a></td>
				</tr><tr>
			<%} %>
		</tr>
	</table>	
</body>
</html>