<%@page import="java.util.LinkedHashMap"%>
<%@page import="Requestinfo.MemberVO"%>
<%@page import="Requestinfo.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function frmGo(){
	if(confirm('�����Ͻðڽ��ϱ� ?')){
		frm.submit();
	}
	
}
</script>
<style type="text/css">
.sch {
	width: 100px;
	height: 30px;
	border-radius: 15px;
}
</style>
</head>
<body>
	<form action="modifyReg.jsp" method="post" name="frm">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="id" 
			value="<%=vo.getId() %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
			
			<%
				LinkedHashMap <String , String >gender= new LinkedHashMap();
				gender.put("m", "��");
				gender.put("f", "��");
			for(String key : gender.keySet()) {
				String chk ="";
				
				if(vo.getGender().equals(key))
					chk="checked=\"checked\"";
			%>
				<input type="radio" name="gender" <%=chk %> value="<%=key%>"/>
				<%=gender.get(key)%>
			<%} %>
			</td>
		</tr>
			<tr>
			<td>���</td>
			<td>
			
			<%
				LinkedHashMap <String , String >hobby= new LinkedHashMap();
				hobby.put("read", "����");
				hobby.put("game", "game");
				hobby.put("fish", "����");
			for(String key : hobby.keySet()){
				String chk ="";
			for(String ho : vo.getHobby().split(",")) {
				
				
				if(ho.equals(key))
					chk="checked=\"checked\"";
			}
			%>
				<input type="checkbox" name="hobby" <%=chk %> value="<%=key%>"/>
				<%=hobby.get(key)%>
			<%} %>
			</td>
		</tr>
			<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>email</td>
			<td>
			<%
				String [] email = vo.getEmail().split("@");
			%>
			
				<input type="text" name="email1" value="<%=email[0]%>">@
				<select name="email2">
				<%
				LinkedHashMap <String , String >domain= new LinkedHashMap();
				domain.put("naver.com", "���̹�");
				domain.put("gmail.com", "����");
				domain.put("daum.net", "����");
				domain.put("yahoo.co.kr", "����");
				domain.put("jum.com", "��");
			for(String key : domain.keySet()) {
				String chk ="";
				
				if(email[1].equals(key))
					chk="selected=\"selected\"";
			%>
				<option  <%=chk %> value="<%=key%>"/>
				<%=domain.get(key)%></option>
			<%} %>

				</select>
			</td>
		</tr>
		<tr>
			<td>����� ��</td>
			<td><textarea rows="5" cols="30" 
			name="content"><%=vo.getContent() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="����" onclick="frmGo()" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="detail.jsp?id=<%=vo.getId()%>">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>