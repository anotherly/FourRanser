<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String loginPage1 = "login/loginForm.jsp";

	if(session.getAttribute("memem")!=null)
	{
		loginPage1="login/main1.jsp";
	}
	request.setAttribute("loginPage1", loginPage1);
	
%>