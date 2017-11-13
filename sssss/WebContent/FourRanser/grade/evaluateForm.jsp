<%@page import="company.CompanyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr");
	ArrayList<String> nameList = 
	(ArrayList<String>)session.getAttribute("userList");
	String pId = (String)session.getAttribute("pId");
	System.out.println(pId);
	String userId = 
	nameList.get(Integer.parseInt(request.getParameter("num")));
	System.out.println(userId);
	session.setAttribute("userId", userId);
	//프로젝트명으로 프로젝트 참여 인원들을 가져옴
	CompanyDAO dao = new CompanyDAO();
	ArrayList<String> userList = dao.comCoruser(pId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.sch{
	width:70px;
	height:30px;
	border-radius:15px; 
}

</style>
</head>
<body>
<!-- enctype="multipart/form-data" 이게 없어서 안된거엿군...-->
<form action="evaluateReg.jsp" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2">사원의 실적을 평가해주세요!</td>
		</tr>
		<tr>
			<td>프로젝트명</td>
			<td><%=pId %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=userId %></td>
		</tr>
		<tr>
			<td>업무능력</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>사교성</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>성실성</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>창의력</td>
			<td><input type="number" name="person_ab" /></td>
		</tr>
		<tr>
			<td>평가사유</td>
			<td><input type="file" name="eval_file" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="확인" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="memList.jsp">취소</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>