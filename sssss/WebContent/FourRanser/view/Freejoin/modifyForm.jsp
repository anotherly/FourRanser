<%@page import="kbj.PersonVO"%>
<%@page import="kbj.PersonDAO"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	PersonDAO dao = new PersonDAO();
	PersonVO vo = dao.detail(request.getParameter("User_id"));
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
	<form action="modifyReg.jsp" method="post" name="frm" enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="user_id" 
			value="<%=vo.getUser_id()%>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="user_pw" /></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="user_name" 
			value="<%=vo.getUser_name()%>" /></td>
		</tr>
		<tr>
			<td width="100px">��ȭ��ȣ</td>
			<td><input type="text" name="user_phone" 
			value="<%=vo.getUser_phone()%>"/>('-'�� ���� �� �Է����ּ���)</td>
		</tr>
		
		<tr>
			<td>����</td>
			<td><input type="text" name="birth" 
			value="<%=vo.getBirth()%>" readonly="readonly" />ex )2002-06-06</td>
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
				<input type="radio" name="gender" <%=chk %> value="<%=key%>" />
				<%=gender.get(key)%>
			<%} %>
			</td>
		</tr>
		
		
		
		<tr>
			<td>email</td>
			<td>
			<%
				String [] email = vo.getUser_email().split("@");
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
			<td>�����ʻ���</td>
		<td><img alt="" src="../Personfile/<%=vo.getPhoto()%>" width="150px" height="200px"><br>
		<%-- <input type="file" name="photo" value="<%=vo.getPhoto()%>"> --%></td>
		
		</tr>
		
		
		
		
		
		
		<table border=1>
			<tr>
<td width="150px"> <font><strong>���� �о�</strong></font>
</td>
</tr>
			
			<td rowspan=7 >����</td>
			
			<%
			LinkedHashMap <String , String >development= new LinkedHashMap();
			development.put(".NET", ".NET");
			development.put("ABAP", "ABAP");
			development.put("Android", "Android");
			development.put("ASP", "ASP");
			development.put("ABAP", "ABAP");
			development.put("ASP.NET", "ASP.NET");			
			development.put("C", "C");
			development.put("C#", "C#");
			development.put("C++", "C++");			
			development.put("COBOL", "COBOL");
			development.put("CSS", "CSS");
			development.put("DB", "DB");			
			development.put("Delphi", "Delphi");
			development.put("Html", "Html");
			development.put("IOS", "IOS");			
			development.put("Swift", "Swift");
			development.put("Java", "Java");
			development.put("JS", "JS");
			development.put("Jsp", "Jsp");			
			development.put("Linux", "Linux");
			development.put("Network", "Network");
			development.put("PHP", "PHP");			
			development.put("PowerBuilder", "PowerBuilder");
			development.put("Python", "Python");
			development.put("QA", "QA");
			development.put("Ruby", "Ruby");
			development.put("ServerDevelopment", "ServerDevelopment");			
			development.put("VB", "VB");
			development.put("VC++", "VC++");
			development.put("Windows", "Windows");			
			development.put("Embedded", "Embedded");
			int dlt=-1;
			for(String key : development.keySet()){
				dlt++;
				String chk ="";
			for(String dmt : vo.getDevelopment().split(",")) {
				if(dmt.equals(key))
					chk="checked=\"checked\"";
				
			}
			if(dlt%5==0){
			%></tr><tr><%} %>
			<td>
				<input type="checkbox" name="development" <%=chk %> value="<%=key%>"/>
				<%=development.get(key)%>
				</td>
			<%} %>
			
			</tr><tr>
			<td rowspan=4 >������/�ۺ���</td>
			
			<%
			LinkedHashMap <String , String >design= new LinkedHashMap();
			design.put("HTML5", "HTML5");
			design.put("GraphicDesign", "GraphicDesign");
			design.put("Mobile", "Mobile");
			design.put("ActionScript", "ActionScript");
			design.put("WebDesign", "WebDesign");
			design.put("WebStandard", "WebStandard");			
			design.put("Powerpoint", "Powerpoint");
			design.put("Publishing", "Publishing");
			design.put("PhotoshopEditor", "PhotoshopEditor");			
			design.put("Flash", "Flash");
			design.put("3D", "3D");
			
			int des=-1;
			for(String key : design.keySet()){
				des++;
				String chk ="";
			for(String desi : vo.getDesign().split(",")) {
				if(desi.equals(key))
					chk="checked=\"checked\"";
				
			}
			if(des%5==0){
			%></tr><tr><%} %>
			<td>
				<input type="checkbox" name="design" <%=chk %> value="<%=key%>"/>
				<%=design.get(key)%>
				</td>
			<%} %>
			
			
			</tr><tr>
			<td rowspan=3 >��ȹ/������Ʈ</td>
			
			<%
			LinkedHashMap <String , String >planning= new LinkedHashMap();
			planning.put("OracleConsultant", "OracleConsultant");
			planning.put("PM", "PM");
			planning.put("PMO", "PMO");
			planning.put("SAPConsultant", "SAPConsultant");
			planning.put("Plan", "Plan");
			planning.put("MobilePlan", "MobilePlan");			
			planning.put("WebPlan", "WebPlan");

			
			int plan=-1;
			for(String key : planning.keySet()){
				plan++;
				String chk ="";
			for(String plann : vo.getPlanning().split(",")) {
				if(plann.equals(key))
					chk="checked=\"checked\"";
			
			}
			if(plan%5==0){
			%></tr><tr><%} %>
			<td>
				<input type="checkbox" name="planning" <%=chk %> value="<%=key%>"/>
				<%=planning.get(key)%>
				</td>
			<%} %>
			
			</tr><tr>
			
			
			<td rowspan=11 >�����о�</td>
			
			<%
			LinkedHashMap <String , String >specialty= new LinkedHashMap();
			specialty.put("Ajax", "Ajax");
			specialty.put("BI", "BI");
			specialty.put("BPM", "BPM");
			specialty.put("BUILDER", "BUILDER");
			specialty.put("Codeigniter", "Codeigniter");
			specialty.put("DDK", "DDK");			
			specialty.put("DJANGO", "DJANGO");
			specialty.put("DW", "DW");
			specialty.put("EJB", "EJB");			
			specialty.put("ERP", "ERP");
			specialty.put("GAUCE", "GAUCE");
			specialty.put("Git", "Git");			
			specialty.put("Hadoop", "Hadoop");
			specialty.put("IBSHEET", "IBSHEET");
			specialty.put("JEUS", "JEUS");			
			specialty.put("JSTL", "JSTL");
			specialty.put("LabVIEW", "LabVIEW");
			specialty.put("LAFJ", "LAFJ");
			specialty.put("MFC", "MFC");			
			specialty.put("MIPLATFORM", "MIPLATFORM");
			specialty.put("MSTR", "MSTR");
			specialty.put("MVC", "MVC");			
			specialty.put("OPENGL", "OPENGL");
			specialty.put("OZReport", "OZReport");
			specialty.put("PLM", "PLM");
			specialty.put("SCM", "SCM");
			specialty.put("SITEMESH", "SITEMESH");			
			specialty.put("SOAP", "SOAP");
			specialty.put("STRUTS", "STRUTS");
			specialty.put("SWING", "SWING");			
			specialty.put("TRUSTFORM", "TRUSTFORM");
			specialty.put("TUXEDO", "TUXEDO");			
			specialty.put("UNITY3D", "UNITY3D");
			specialty.put("WDK", "WDK");
			specialty.put("WEBLOGIC", "WEBLOGIC");			
			specialty.put("WEBSPHERE", "WEBSPHERE");
			specialty.put("WEBSQURE", "WEBSQURE");
			specialty.put("XPLATFORM", "XPLATFORM");
			specialty.put("ResponsiveWeb", "ResponsiveWeb");
			specialty.put("SecurityDiagnosis", "SecurityDiagnosis");			
			specialty.put("BigData", "BigData");
			specialty.put("Receive", "Receive");
			specialty.put("Loan", "Loan");			
			specialty.put("ForeignExchange", "ForeignExchange");	
			specialty.put("WordPress", "WordPress");
			specialty.put("WebAccessibility", "WebAccessibility");
			specialty.put("e-GovFrame", "e-GovFrame");			
			specialty.put("CreaditCard", "CreaditCard");
			specialty.put("HybridApp", "HybridApp");
			specialty.put("Presentation", "Presentation");			

			int sct=-1;
			
			for(String key : specialty.keySet()){
				String chk ="";
				sct++;
			for(String spe : vo.getSpecialty().split(",")) {
				if(spe.equals(key))
					chk="checked=\"checked\"";
				
			}
			if(sct%5==0){
			%></tr><tr><%} %>
			<td>
				<input type="checkbox" name="specialty" <%=chk %> value="<%=key%>"/>
				<%=specialty.get(key)%>
				</td>
			<%} %>
			
			
			</tr><tr>
			<td rowspan=5 >������������</td>
			<td>����</td>
			<%
			LinkedHashMap <String , String >location= new LinkedHashMap();
			location.put("����", "����");
			LinkedHashMap <String , String >Seoul= new LinkedHashMap();
			/* ���� */
			Seoul.put("���﹫��", "���﹫��");
			Seoul.put("����", "����");
			Seoul.put("����", "����");
			Seoul.put("����", "����");
			Seoul.put("����", "����");		
			
			LinkedHashMap <String , String >gyeonggi= new LinkedHashMap();
		/* 	��� */
			gyeonggi.put("��⹫��", "��⹫��");
			gyeonggi.put("����", "����");
			gyeonggi.put("ȭ��", "ȭ��");			
			gyeonggi.put("�ϻ�", "�ϻ�");
			gyeonggi.put("������", "������");
			gyeonggi.put("����", "����");
			gyeonggi.put("����", "����");
	/* 		�׿� */
			LinkedHashMap <String , String >localetc= new LinkedHashMap();
			localetc.put("���", "���");
			localetc.put("�泲", "�泲");
			localetc.put("����", "����");
			localetc.put("����", "����");			
			localetc.put("���", "���");
			localetc.put("�泲", "�泲");
			localetc.put("�뱸", "�뱸");
			localetc.put("����", "����");
			localetc.put("����", "����");
			localetc.put("����", "����");			
			localetc.put("�λ�", "�λ�");
			localetc.put("���", "���");
			localetc.put("����", "����");			
			localetc.put("�Ϻ�", "�Ϻ�");
			localetc.put("ȫ��", "ȫ��");
			localetc.put("�߱�", "�߱�");			
			localetc.put("�̱�", "�̱�");
			localetc.put("����", "����");
			

			for(String key : location.keySet()){

				String chk ="";
			for(String loc : vo.getLocation().split(",")) {
				if(loc.equals(key))
					chk="checked=\"checked\"";
				
			}
			 %>
			<td>
				<input type="checkbox" name="location" <%=chk %> value="<%=key%>"/>
				<%=location.get(key)%>
				</td>
			<%} %>
			</tr><tr>
			
			<td>����</td>
			<%
			for(String key : Seoul.keySet()){

				String chk ="";
			for(String loc : vo.getLocation().split(",")) {
				if(loc.equals(key))
					chk="checked=\"checked\"";
				
			}
			 %>
			<td>
				<input type="checkbox" name="location" <%=chk %> value="<%=key%>"/>
				<%=Seoul.get(key)%>
				</td>
			<%} %>
			
			</tr><tr>
			<td>���</td>
			<%

		
			for(String key : gyeonggi.keySet()){
				String chk ="";
			for(String loc : vo.getLocation().split(",")) {
				if(loc.equals(key))
					chk="checked=\"checked\"";
				
			}
			 %>
			<td>
				<input type="checkbox" name="location" <%=chk %> value="<%=key%>"/>
				<%=gyeonggi.get(key)%>
				</td>
			<%} %>
			
			</tr><tr>
			<td rowspan=2>�׿�</td>
			<%

			int loc4=0;
			for(String key : localetc.keySet()){
				loc4++;
				String chk ="";
			for(String loc : vo.getLocation().split(",")) {
				if(loc.equals(key))
					chk="checked=\"checked\"";
				
			}if(loc4%11==0){
				%></tr><tr><%} %>
			<td>
				<input type="checkbox" name="location" <%=chk %> value="<%=key%>"/>
				<%=localetc.get(key)%>
				</td>
			<%} %>
		
		
		</table>
			
	
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="����" onclick="frmGo()" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="Freedetail.jsp?User_id=<%=vo.getUser_id()%>">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>