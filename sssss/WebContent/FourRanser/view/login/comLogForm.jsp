<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="memId" value="" />
<c:if test="${memId!=null }" >
<c:set var="memId" value="${memId }" />
</c:if> 

<form action="../../login/second/comLogReg.jsp">
	<input type="hidden" name="goUrl" value="${nowUrl }" />
	id:<input type="text" name="memId" value="${memId }"/>
	pw:<input type="text" name="memPw" />
		 nowUrl: ${nowUrl }<br>
		 memId: ${memId }<br>
	<input type="submit" value="·Î±×ÀÎ" />
</form>