<%@page import="Requestinfo.RequestInfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//new RequestInfo(request);
	new RequestInfo((HttpServletRequest) pageContext.getRequest());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=request%>
	<!-- 내장 객체이기떄문에 정의하지 않아도 쓸 수 있다. -->
	<br><%=request.getRemoteAddr()%>
	<br><%=request.getRequestURL()%>
	<br><%=request.getProtocol()%>
	<br><%=request.getMethod()%>
	<!-- GET이 기본 방식 -->
	<br><%=request.getContextPath()%>
	<br><%=request.getServerName()%>
	<br><%=request.getRequestURI()%>
</body>
</html>