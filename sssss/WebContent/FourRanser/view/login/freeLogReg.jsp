<%@page import="kbj.PersonDAO"%>
<%@page import="kbj.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

PersonVO vo = new PersonVO();
vo.setUser_id(request.getParameter("memId1"));
vo.setUser_pw(request.getParameter("memPw1"));//vo�� ���� �Ƶ��������޾ƿ�

String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../../center/first/index.jsp";/* "+request.getParameter("goUrl"); */


PersonVO res = new PersonDAO().login(vo);//login�� ���ϴ� CompanyVO�� res������ ����

if(res!=null)
{
	session.setAttribute("memem", res);
	msg = res.getUser_name()+"�� �α��� �Ǿ����ϴ�.";
} else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="?memId1="+vo.getUser_id();
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