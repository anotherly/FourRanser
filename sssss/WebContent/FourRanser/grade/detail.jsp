<!-- Ư�� ������Ʈ(java����)�� ���� Ư�� ȸ��(jdb)�� ������ ��ȸ jsp -->
<!-- ��ȣ ���� �����Դϴ�. -->
<%@page import="Person.PersonVO"%>
<%@page import="Person.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("euc-kr");
	String userId = request.getParameter("userId");
	String proId = (String)session.getAttribute("pro");
	System.out.println("�����Ϲ� �������̵� : "+userId);
	System.out.println("�����Ϲ� ������Ʈ�� : "+proId);
	PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.findPerGrade(userId,proId);
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
		<td>�������̵�</td><td><%=userId %></td>
	</tr><tr>
		<td>������Ʈ��</td><td><%=proId %></td>
	</tr><tr>
		<td>�����ɷ�</td><td><%=vo.getAbility() %></td>
	</tr><tr>
		<td>��ȸ��</td><td><%=vo.getSocial() %></td>
	</tr><tr>
		<td>���Ǽ�</td><td><%=vo.getDiligent() %></td>
	</tr><tr>
		<td>â�Ǽ�</td><td><%=vo.getCreativity() %></td>
	</tr><tr>
		<td>����</td><td><%=vo.getUser_sum() %></td>
	</tr><tr>
		<td>���</td><td><%=vo.getUser_avg() %></td>	
	</tr><tr>
		<td>���</td><td><%=vo.getUser_grade() %></td>	
	<!-- ������ �����Ѵٸ� ���̺��� ���� -->
	<% if(vo.getSysFile()!=null) {%>
	</tr><tr>
		<td>�򰡻���</td><td>
		<% if(vo.isImgChk()) {%>
		<img src="../fileUpDown/<%=vo.getSysFile() %>">
		<%} else{ %>
			<a href="download.jsp?sys=<%=vo.getSysFile() %>&ori=<%=vo.getOriFile() %>">
			<%=vo.getOriFile() %></a>
		<%} %>
		</td>
		<%} %>
	</tr>

	<tr>
		<td colspan="2" align="right">
			<a href="evaluateForm.jsp">���ư���</a>
			<a href="personAvg.jsp">���δɷ�ġ ����ȸ</a>
			<a href="projectList.jsp"><%=userId%>���� ������Ʈ ����ȸ</a>
			<%-- <a href="deleteForm.jsp?id=<%=vo.getId() %>">ȸ��Ż��</a>
			<a href="modifyForm.jsp?id=<%=vo.getId() %>">��������</a> --%>
		</td>
	</tr>
</table>
</body>
</html>