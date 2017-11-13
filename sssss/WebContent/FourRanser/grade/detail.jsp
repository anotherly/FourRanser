<!-- 특정 프로젝트(java팀플)에 대한 특정 회원(jdb)의 디테일 조회 jsp -->
<!-- 괄호 안은 예시입니다. -->
<%@page import="Person.PersonVO"%>
<%@page import="Person.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("euc-kr");
	String userId = request.getParameter("userId");
	String proId = (String)session.getAttribute("pro");
	System.out.println("디테일문 유저아이디 : "+userId);
	System.out.println("디테일문 프로젝트명 : "+proId);
	PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.findPerGrade(userId,proId);
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">
	<tr>
		<td>유저아이디</td><td><%=userId %></td>
	</tr><tr>
		<td>프로젝트명</td><td><%=proId %></td>
	</tr><tr>
		<td>업무능력</td><td><%=vo.getAbility() %></td>
	</tr><tr>
		<td>사회성</td><td><%=vo.getSocial() %></td>
	</tr><tr>
		<td>성실성</td><td><%=vo.getDiligent() %></td>
	</tr><tr>
		<td>창의성</td><td><%=vo.getCreativity() %></td>
	</tr><tr>
		<td>총점</td><td><%=vo.getUser_sum() %></td>
	</tr><tr>
		<td>평균</td><td><%=vo.getUser_avg() %></td>	
	</tr><tr>
		<td>등급</td><td><%=vo.getUser_grade() %></td>	
	<!-- 파일이 존재한다면 테이블을 생성 -->
	<% if(vo.getSysFile()!=null) {%>
	</tr><tr>
		<td>평가사유</td><td>
		<% if(vo.isImgChk()) {%>
		<img src="../fileUpDown/<%=vo.getSysFile() %>">
		<%} else{ %>
			<a href="download.jsp?sys=<%=vo.getSysFile() %>&ori=<%=vo.getOriFile() %>">
			<%=vo.getOriFile() %></a>
		<%} %>
		</td>
		<%} %>
	</tr>

	<tr>
		<td colspan="2" align="right">
			<a href="evaluateForm.jsp">돌아가기</a>
			<a href="personAvg.jsp">개인능력치 총조회</a>
			<a href="projectList.jsp"><%=userId%>님의 프로젝트 총조회</a>
			<%-- <a href="deleteForm.jsp?id=<%=vo.getId() %>">회원탈퇴</a>
			<a href="modifyForm.jsp?id=<%=vo.getId() %>">정보수정</a> --%>
		</td>
	</tr>
</table>
</body>
</html>