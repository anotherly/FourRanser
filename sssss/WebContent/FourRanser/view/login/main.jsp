<%@page import="req.CompanyDAO"%>
<%@ page import="req.CompanyVO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<c:set var="voo" value="${mem }" />
${voo.com_name}�� �ȳ��ϼ���
<!-- mem.name �ᵵ ��  -->
<a href="../../login/logout.jsp?goUrl=${nowUrl }">�α׾ƿ�</a>

