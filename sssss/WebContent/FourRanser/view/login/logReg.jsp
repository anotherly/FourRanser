<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 가입할건데 
개인이냐 기업이냐 체크 -->
<form>
	<table>
		<tr>
			<td><input type="button" value="개인" name="freelancer" onClick="location.href='../../login/second/freeLogForm.jsp';"></td>
			<td><input type="button" value="기업" name="company" onClick="location.href='../../login/second/comLogForm.jsp';"></td>
		</tr>
	</table>
</form>
</body>
</html>