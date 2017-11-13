<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<style>

div, ul, li { margin:0; padding:0; }

#Menu {
	float:center;
}

#Menu ul li {
	float:left;
	list-style-type:none;
}

#Menu a {
	height:16px;
	font-size:18px;
	padding:0 10px 0 10px;
	text-decoration:none;
}

#Menu ul ul {
display:none;
}

#Menu ul li:hover ul {
 display: block;
}

#Menu ul ul {
display:none;
position:absolute;
/* background-color:#5c5c5c; */
}
</style>

</SPAN>


<body>
		 
 <div id="Menu">
<ul>

	<c:forEach items="${top_lower}" begin="0" end="0" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 	<!-- 1번 끝 -->
 	<c:forEach items="${top_lower}" begin="1" end="1" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
	<!-- 2번 끝 -->
	<c:forEach items="${top_lower}" begin="2" end="2" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 		<ul>
  	<c:forEach items="${submenu1}" begin="0" end="7" var="rr">
		<li><a href="../../${rr.key}/first/index.jsp" onclick="#">${rr.value}</a></li>
	</c:forEach>
 		</ul>
		</li>
	<!-- 3번 끝 -->
	<c:forEach items="${top_lower}" begin="3" end="3" var="ee">
		<li><a href="../../${ee.key}/first/index.jsp" onclick="#">${ee.value}</a>
 	</c:forEach>
 		<ul>
  	<c:forEach items="${submenu2}" begin="0" end="2" var="tt">
		<li><a href="../../${tt.key}/first/index.jsp" onclick="#">${tt.value}</a></li>
	</c:forEach>
 		</ul>
		</li>
	<!-- 4번 끝 --><!-- 
<li><a href="#">Menu 3</a>
 
<ul>
<li><a href="#">Sub Menu 1</a></li>
<li><a href="#">Sub Menu 2</a></li>
<li><a href="#">Sub Menu 3</a></li>
</ul>
 
</li>


<li><a href="#">Menu 5</a></li>
</ul> -->
</div>