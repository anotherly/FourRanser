<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Q&A</title>
<link rel="stylesheet" type="text/css" href="css/notice.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
	<h1>Q&A</h1>
	<form name="frm" method="post" action="BoardServlet">
	<input type="hidden" name="command" value="board_write">
	<table>
	<tr>
	  <th>id</th>
	  <td><input type="text" name="id">*�ʼ�</td>
	  </tr>
	  <th>��й�ȣ</th>
	  <td><input type="pass" name="pass">*�ʼ�(���� ������ �ʿ��մϴ�.)</td>
	  </tr>
	  <th>�̸���</th>
	  <td><input type="text" size="70" name="title">*�ʼ�</td>
	  </tr>
	   <th>����</th>
	  <td><textarea cols="70" rows="15" name="content"></textarea></td>
	  </tr>
	</table>
	<br></br>
	<input type="button" value="���">
	<input type="button" value="�ٽ��ۼ�">
	<input type="button" value="���">
	</form>
</div>
</body>
</html>