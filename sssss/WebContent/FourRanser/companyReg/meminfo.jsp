<%@page import="Requestinfo.RequestInfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//new RequestInfo(request);
	new  RequestInfo((HttpServletRequest)pageContext.getRequest());
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=request %>
<br><%=request.getRemoteAddr() %>
<br><%=request.getRequestURL() %>
<br><%=request.getProtocol() %>
<br><%=request.getMethod() %>
<br><%=request.getContextPath() %>
<br><%=request.getServerName() %>
<br><%=request.getRequestURI() %>
</body>
</html>
