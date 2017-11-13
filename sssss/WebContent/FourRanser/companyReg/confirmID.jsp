<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title></title>
<script language="JavaScript">
	function confirmID(){
		opener.document.reg_frm.g_id.value="${id}";
		self.close();
	}
</script>

</head>
<body>
<c:if test="${check==1}">
	<table border='0' align='center'>
		<tr height='30'>
			<td width='100%'>
			[${id}] 는 이미 사용중인 아이디 입니다.
			</td>
		</tr>
	</table>	
	
	<form action="/hompage/main/confirmID.do" method='post'>
	<table border='0' align='center'>
		<tr height='30'>
			<td width='100%'>
				다른아이디를 선택하세요.<p>
			<input type='text' name='g_id'>&nbsp;&nbsp;&nbsp;
			<input type='submit' value=' ID 중복확인'>
			</td>
		</tr>
	</table>
</c:if>

<c:if test="${check==-1}">
	<table border='0' align='center'>
		<tr height='30'>
			<td width='100%'>
			입력하신 ${g_id} 사용할수 있는 아이디입니다 .<p>
			<input type='button' value='닫기' onclick="confirmID()">
			</td>
		</tr>
	</table>
</c:if>
</body>
</html>