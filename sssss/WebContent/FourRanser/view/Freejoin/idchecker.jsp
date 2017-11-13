<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String user_id="";
    request.getParameter("User_id");
    if(request.getParameter("User_id")!=null)
    	user_id = request.getParameter("user_id");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="NewFile1.jsp">
<table>
	<tr>
		<td>
		<input type="text" name="user_id" value="<%=user_id %>">
		
		</td>
		<td>
		<input type="submit" value="제출">
		</td>
	</tr>
</table>
</form>
</body>
</html>