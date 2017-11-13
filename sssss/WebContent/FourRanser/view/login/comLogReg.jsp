<%@page import="req.CompanyVO"%>
<%@page import="req.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

CompanyVO vo = new CompanyVO();
vo.setCom_id(request.getParameter("memId"));
vo.setCom_pw(request.getParameter("memPw"));//vo에 아디비번값이들가있음

String msg = "id와 pw가 일치하지 않습니다.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */


CompanyVO res = new CompanyDAO().login(vo);//login을 취하는 CompanyVO를 res변수에 넣음

if(res!=null)
{
	session.setAttribute("mem", res);
	msg = res.getCom_name()+"님 로그인 되었습니다.";
} else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="?memId="+vo.getCom_id();
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
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
</body>
</html>