
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kbj.PersonDAO"%>
<%@page import="kbj.PersonVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MultipartRequest mm = new MultipartRequest(
	request,
	"C:\\Users\\user\\Documents\\ggg\\miniProj\\WebContent\\kbj\\Personfile",
	10*1024*1024,
	"euc-kr",
	new DefaultFileRenamePolicy()
	);

	System.out.println(mm.getParameter("photo"));
	request.setCharacterEncoding("euc-kr");
	
	String email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	PersonVO mem = new PersonVO();
	
	mem.setUser_id(mm.getParameter("user_id"));
	mem.setUser_pw(mm.getParameter("user_pw"));
	mem.setGender(mm.getParameter("gender"));
	mem.setUser_email(email);
	/* 
	if(mm.getFilesystemName("photo")==null){
	mem.setPhoto(mm.getParameter("photo"));		
	}else{
		mem.setPhoto(mm.getFilesystemName("photo"));
	}
	 */
	
	mem.setUser_name(mm.getParameter("user_name"));
	mem.setUser_phone(mm.getParameter("user_phone"));
	
	String [] deveArr =mm.getParameterValues("development");
	String [] deArr =mm.getParameterValues("design");
	String [] plannArr =mm.getParameterValues("planning");
	String [] specialArr =mm.getParameterValues("specialty");
	String [] locationArr =mm.getParameterValues("location");

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
	

	mem.setDevelopment(development);
	mem.setDesign(design);
	mem.setPlanning(planning);
	mem.setSpecialty(specialty);
	mem.setLocation(location);
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "modifyForm.jsp?User_id="+mem.getUser_id();
	
	
	if(new PersonDAO().modify(mem))
	{
		msg = "수정 되었습니다";
		url = "Freedetail.jsp?User_id="+mem.getUser_id();
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
	alert('<%=msg%>');
	location.href ='<%=url%>';
</script>
</body>
</html>