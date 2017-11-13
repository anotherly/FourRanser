<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Requestinfo.MemberDAO"%>
<%@page import="Requestinfo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String [] hoArr =request.getParameterValues("hobby");

	String hobby ="";
	
	for(int i =0;i<hoArr.length;i++)
	{
		hobby+=hoArr[i];
		if(i<hoArr.length-1)
			hobby+=",";
	}
	
	String email = request.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	mem.setGender(request.getParameter("gender"));
	mem.setGrade(Integer.parseInt(request.getParameter("grade")));

	
	mem.parseBirth(request.getParameter("birth"));
	
	mem.setHobby(hobby);
	mem.setEmail(email);
	mem.setContent(request.getParameter("content"));
	
	
	MemberDAO dao = new MemberDAO();
	dao.insert(mem);
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('회원가입 되었습니다');
	location.href = 'detail.jsp?id=<%=mem.getId()%>';
</script>
</body>
</html>