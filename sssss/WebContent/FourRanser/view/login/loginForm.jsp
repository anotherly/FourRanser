<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
	String memId="";
	if(request.getParameter("memId")!=null)
		memId=request.getParameter("memId");
%>
 --%>
<c:set var="memId" value="" />
<c:if test="${memId!=null }" >
<c:set var="memId" value="${memId }" />
</c:if> 

<form action="../../login/first/loginReg.jsp">

	<%-- <input type="hidden" name="goUrl" value="${nowUrl }" />
	id:<input type="text" name="memId" value="${memId }"/> --%>
	<input type="button" value="�α���" onClick="location.href='../../login/first/logReg.jsp';">
	<input type="button" value="ȸ������" onClick="location.href='../../login/first/loginReg.jsp';">
	
</form>