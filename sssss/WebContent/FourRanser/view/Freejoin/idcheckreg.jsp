<%@page import="kbj.PersonVO"%>
<%@page import="kbj.PersonDAO"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    boolean ch=false;
    request.setCharacterEncoding("euc-kr");
    
	PersonDAO dao = new PersonDAO();
	PersonVO vo=new PersonVO();
	
	vo.setUser_id((request.getParameter("user_id")));
	
	ch = dao.IDChecker(vo.getUser_id());
  
	String msg="";
	
	String url = "NewFile.jsp?User_id="+vo.getUser_id();
  if(ch==true){
		msg="존재하는아이디입니다.";
	}else{
		msg ="사용 가능한 아이디입니다.";
		
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
	location.href = '<%=url%>';
</script>


</body>
</html>