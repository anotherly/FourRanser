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
	if(confirm('수정하시겠습니까 ?')){
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
			<td>이름</td>
			<td><input type="text" name="user_name" 
			value="<%=vo.getUser_name()%>" /></td>
		</tr>
		<tr>
			<td width="100px">전화번호</td>
			<td><input type="text" name="user_phone" 
			value="<%=vo.getUser_phone()%>"/>('-'는 생략 후 입력해주세요)</td>
		</tr>
		
		<tr>
			<td>생일</td>
			<td><input type="text" name="birth" 
			value="<%=vo.getBirth()%>" readonly="readonly" />ex )2002-06-06</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<%
				LinkedHashMap <String , String >gender= new LinkedHashMap();
				gender.put("m", "남");
				gender.put("f", "여");
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
				domain.put("naver.com", "네이버");
				domain.put("gmail.com", "구글");
				domain.put("daum.net", "다음");
				domain.put("yahoo.co.kr", "야후");
				domain.put("jum.com", "줌");
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
			<td>프로필사진</td>
		<td><img alt="" src="../Personfile/<%=vo.getPhoto()%>" width="150px" height="200px"><br>
		<%-- <input type="file" name="photo" value="<%=vo.getPhoto()%>"> --%></td>
		
		</tr>
		
		
		
		
		
		
		<table border=1>
			<tr>
<td width="150px"> <font><strong>개발 분야</strong></font>
</td>
</tr>
			
			<td rowspan=7 >개발</td>
			
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
			<td rowspan=4 >디자인/퍼블리싱</td>
			
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
			<td rowspan=3 >기획/컨설턴트</td>
			
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
			
			
			<td rowspan=11 >전문분야</td>
			
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
			<td rowspan=5 >업무가능지역</td>
			<td>무관</td>
			<%
			LinkedHashMap <String , String >location= new LinkedHashMap();
			location.put("무관", "무관");
			LinkedHashMap <String , String >Seoul= new LinkedHashMap();
			/* 서울 */
			Seoul.put("서울무관", "서울무관");
			Seoul.put("강북", "강북");
			Seoul.put("강동", "강동");
			Seoul.put("강남", "강남");
			Seoul.put("강서", "강서");		
			
			LinkedHashMap <String , String >gyeonggi= new LinkedHashMap();
		/* 	경기 */
			gyeonggi.put("경기무관", "경기무관");
			gyeonggi.put("용인", "용인");
			gyeonggi.put("화성", "화성");			
			gyeonggi.put("일산", "일산");
			gyeonggi.put("의정부", "의정부");
			gyeonggi.put("성남", "성남");
			gyeonggi.put("수원", "수원");
	/* 		그외 */
			LinkedHashMap <String , String >localetc= new LinkedHashMap();
			localetc.put("충북", "충북");
			localetc.put("충남", "충남");
			localetc.put("대전", "대전");
			localetc.put("강원", "강원");			
			localetc.put("경북", "경북");
			localetc.put("경남", "경남");
			localetc.put("대구", "대구");
			localetc.put("전북", "전북");
			localetc.put("전남", "전남");
			localetc.put("광주", "광주");			
			localetc.put("부산", "부산");
			localetc.put("울산", "울산");
			localetc.put("제주", "제주");			
			localetc.put("일본", "일본");
			localetc.put("홍콩", "홍콩");
			localetc.put("중국", "중국");			
			localetc.put("미국", "미국");
			localetc.put("유럽", "유럽");
			

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
			
			<td>서울</td>
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
			<td>경기</td>
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
			<td rowspan=2>그외</td>
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
			<input type="button" value="수정" onclick="frmGo()" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="Freedetail.jsp?User_id=<%=vo.getUser_id()%>">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>