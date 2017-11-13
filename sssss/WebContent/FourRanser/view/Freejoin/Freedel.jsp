
<%@page import="kbj.PersonDAO"%>
<%@page import="kbj.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	
	
	PersonVO mem = new PersonVO();
	
	mem.setUser_id(request.getParameter("user_id"));
	mem.setUser_pw(request.getParameter("user_pw"));
	
	PersonDAO dao = new PersonDAO();

	String msg = "pw가 일치하지 않습니다.";
	String url = "Freedetail.jsp?User_id="+mem.getUser_id();
	
	
	if(new PersonDAO().delete(mem))
	{
		msg = "탈퇴 되었습니다";
		url = "FreejoinForm.jsp";
	}
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('<%=msg%>');
	location.href = '<%=url%>';
</script>
</body>
</html>