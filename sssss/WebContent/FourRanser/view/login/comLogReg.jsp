<%@page import="req.CompanyVO"%>
<%@page import="req.CompanyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

CompanyVO vo = new CompanyVO();
vo.setCom_id(request.getParameter("memId"));
vo.setCom_pw(request.getParameter("memPw"));//vo�� �Ƶ������̵鰡����

String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */


CompanyVO res = new CompanyDAO().login(vo);//login�� ���ϴ� CompanyVO�� res������ ����

if(res!=null)
{
	session.setAttribute("mem", res);
	msg = res.getCom_name()+"�� �α��� �Ǿ����ϴ�.";
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