<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="memId1" value="" />
<c:if test="${memId!=null }" >
<c:set var="memId1" value="${memId1 }" />
</c:if> 

<form action="../../login/second/freeLogReg.jsp">
	<input type="hidden" name="goUrl1" value="${nowUrl }" />
	id:<input type="text" name="memId1" value="${memId1 }"/>
	pw:<input type="text" name="memPw1" />
		 nowUrl: ${nowUrl }<br>
		 memId1: ${memId1 }<br>
	<input type="submit" value="·Î±×ÀÎ" />
</form>