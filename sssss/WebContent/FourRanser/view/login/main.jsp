<%@page import="req.CompanyDAO"%>
<%@ page import="req.CompanyVO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<c:set var="voo" value="${mem }" />
${voo.com_name}´Ô ¾È³çÇÏ¼¼¿ä
<!-- mem.name ½áµµ µÊ  -->
<a href="../../login/logout.jsp?goUrl=${nowUrl }">·Î±×¾Æ¿ô</a>

