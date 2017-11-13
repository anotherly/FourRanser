<%@page import="req.CompanyDAO"%>
<%@page import="req.CompanyVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%


String url = "../"+request.getParameter("goUrl");

CompanyVO res = (CompanyVO)session.getAttribute("mem");

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
		alert("<%=res.getCom_name()%>님 로그아웃되었습니다.");
		location.href="<%=url%>";
	</script>
</body>
</html>