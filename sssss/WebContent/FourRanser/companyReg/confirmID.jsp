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
			[${id}] �� �̹� ������� ���̵� �Դϴ�.
			</td>
		</tr>
	</table>	
	
	<form action="/hompage/main/confirmID.do" method='post'>
	<table border='0' align='center'>
		<tr height='30'>
			<td width='100%'>
				�ٸ����̵� �����ϼ���.<p>
			<input type='text' name='g_id'>&nbsp;&nbsp;&nbsp;
			<input type='submit' value=' ID �ߺ�Ȯ��'>
			</td>
		</tr>
	</table>
</c:if>

<c:if test="${check==-1}">
	<table border='0' align='center'>
		<tr height='30'>
			<td width='100%'>
			�Է��Ͻ� ${g_id} ����Ҽ� �ִ� ���̵��Դϴ� .<p>
			<input type='button' value='�ݱ�' onclick="confirmID()">
			</td>
		</tr>
	</table>
</c:if>
</body>
</html>