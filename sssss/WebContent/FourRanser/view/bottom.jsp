<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

 <table width="100%">

	<tr align="center">
		<c:forEach var="ee" items="${bottom}">
		<td><a href="../../${ee.key}/first/index.jsp">${ee.value}</a></td>
		</c:forEach>
	</tr>
</table>