<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>

<%@page import="java.util.Date"%>
<%@page import="kbj.PersonDAO"%>
<%@page import="kbj.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

	MultipartRequest mm = new MultipartRequest(
		request,
		"C:\\Users\\user\\eclipse-workspace\\jspProj\\WebContent\\kbj\\Personfile",
		10*1024*1024,
		"euc-kr",
		new DefaultFileRenamePolicy()
		);
/* 
 response.sendRedirect("Freedetail.jsp?="+mm.getFilesystemName("photo")+
		"&portfoliofile="+mm.getFilesystemName("portfoliofile")
		); */
	request.setCharacterEncoding("euc-kr");

	//개발분야 목록들 받아서 입력.
	String [] deveArr =mm.getParameterValues("development");
	String [] deArr =mm.getParameterValues("design");
	String [] plannArr =mm.getParameterValues("planning");
	String [] specialArr =mm.getParameterValues("specialty");
	String [] locationArr =mm.getParameterValues("location");
/* 	String [] deArr =request.getParameterValues("development");
	String [] deArr =request.getParameterValues("development"); */
	
	String development ="";
	String design ="";
	String planning ="";
	String specialty ="";
	String location ="";

	
	for(int i =0;i<deveArr.length;i++)
	{
		development+=deveArr[i];
		if(i<deveArr.length-1)
			development+=",";
	}
	
	
	for(int i =0;i<deArr.length;i++)
	{
		design+=deArr[i];
		if(i<deArr.length-1)
			design+=",";
	}
	
	
	for(int i =0;i<plannArr.length;i++)
	{
		planning+=plannArr[i];
		if(i<plannArr.length-1)
			planning+=",";
	}
	
	
	for(int i =0;i<specialArr.length;i++)
	{
		specialty+=specialArr[i];
		if(i<specialArr.length-1)
			specialty+=",";
	}
	
	
	for(int i =0;i<locationArr.length;i++)
	{
		location+=locationArr[i];
		if(i<locationArr.length-1)
			location+=",";
	}
	
	
	String user_email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	PersonVO mem = new PersonVO();
	
	mem.setUser_id(mm.getParameter("user_id"));
	mem.setUser_pw(mm.getParameter("user_pw"));
	mem.setGender(mm.getParameter("gender"));
	mem.setUser_name(mm.getParameter("user_name"));
	mem.setUser_phone(mm.getParameter("user_phone"));
	mem.setPhoto(mm.getFilesystemName("photo"));
	mem.setPortfoliofile(mm.getFilesystemName("portfoliofile"));

	
	mem.parseBirth(mm.getParameter("birth"));
	
	
	mem.setDevelopment(development);
	mem.setDesign(design);
	mem.setPlanning(planning);
	mem.setSpecialty(specialty);
	mem.setLocation(location);
	mem.setUser_email(user_email);
	
	
	PersonDAO dao = new PersonDAO();
	
	dao.insert(mem);
	session.setAttribute("user_id", mem);
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
	location.href = 'Freedetail.jsp?User_id=<%=mem.getUser_id()%>';
</script>
</body>
</html>