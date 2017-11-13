<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sys = request.getParameter("sys");
	String ori = request.getParameter("ori");
	
	String upfile = request.getRealPath("fileUpDown");
			
	upfile = "C:\\Users\\jdb\\webWork\\jspProj\\WebContent\\fileUpDown";
	//url주소에 한글 깨져서 나오는걸 utf8로 한글로 받아옴
	String en = URLEncoder.encode(ori, "utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+en);
	
	out.clear();
	out = pageContext.pushBody();
	
	FileInputStream fis = new FileInputStream(upfile+"\\"+sys);
	ServletOutputStream sos = response.getOutputStream();
	
	byte [] buf = new byte[1024];
	
	while(fis.available()>0){
		int len = fis.read(buf);
		sos.write(buf, 0, len);
	}
	
	sos.close();
	fis.close();
%>