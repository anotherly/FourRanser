<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
소개회사

<%-- <table border="">
	<tr>
		<td>번호</td>
		
		<td>제목</td>
		<td>작성일</td>
	</tr>


<c:forEach items="${data }" var="vo" varStatus="no">
<tr>
		<td>${no.index+1 }</td>
		
		
		<td><a href="detail.jsp?id=${vo.id }">${vo.title }</a></td>
		<td><fmt:formatDate value="${vo.regDate }" pattern="yyyy-MM-dd" /> </td>
	</tr>
</c:forEach>

	<tr>
		<td colspan="4" align="right">
			<a href="joinForm.jsp">글쓰기</a>
		</td>
	</tr>
</table>
 --%>