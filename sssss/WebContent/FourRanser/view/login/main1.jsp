<%@ page import="kbj.PersonDAO"%>
<%@ page import="kbj.PersonVO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<c:set var="voooo" value="${memem }" />
${voooo.User_name}�� �ȳ��ϼ���
<!-- mem.name �ᵵ ��  -->
<a href="../../login/logout1.jsp?goUrl=${nowUrl }">�α׾ƿ�</a>