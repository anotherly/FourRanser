<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
	LinkedHashMap<String, String>top=
	(LinkedHashMap<String, String>)request.getAttribute("top");

	String loginPage = (String)request.getAttribute("loginPage");
%> --%>

<table width="100%">
	<tr>
		<td colspan="${top.size}" align="right">
			<jsp:include page="${loginPage}"/>
		</td>
	</tr>
	<tr>
		<td colspan="${top.size}" align="right">
			<jsp:include page="${loginPage1}"/>
		</td>
	</tr>
	<%--
	 <tr align="center">
		<c:forEach var = "ea" items = "top_lower">
			<td><a href="../../${ea.key}/first/index.jsp">${ea.value}</a></td>
		</c:forEach>
		
		<% for(String key : top.keySet()) {%>
		<td><a href="../../<%=key%>/first/index.jsp"><%=top.get(key) %></a></td>
		<%} %>
	</tr> --%>
</table>