<%@page import="kbj.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%


String url = "../"+request.getParameter("goUrl");

PersonVO res = (PersonVO)session.getAttribute("memem");

session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("<%=res.getUser_name()%>�� �α׾ƿ��Ǿ����ϴ�.");
		location.href="<%=url%>";
	</script>
</body>
</html>