<!-- ���� ���ε� ��� �� -->
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="Person.PersonVO"%>
<%@page import="Person.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String upfile = "C:\\Users\\jdb\\webWork\\jspProj\\WebContent\\fileUpDown";
	
	MultipartRequest mpr  = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);
	/* 		request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy() */
	String sysfile= mpr.getFilesystemName("eval_file");
	String orifile= mpr.getOriginalFileName("eval_file");
	
	System.out.println(sysfile);
	System.out.println(orifile);
	
	request.setCharacterEncoding("euc-kr");
	String[] abArr = mpr.getParameterValues("person_ab");

	PersonDAO dao = new PersonDAO();
	PersonVO vo = new PersonVO();
	//�������� ���̵�޾ƿ�
	String userId = (String)session.getAttribute("userId");
	//������Ʈ�� �޾ƿ�
	String proId = (String)session.getAttribute("pId");
	
	session.setAttribute("pro", proId);//�������̳� �����κп� ������Ʈ�� ����
	
	vo.setUser_id(userId);
	vo.setP_id(proId);
	vo.setEvaluate(abArr);
	vo.setSysFile(sysfile);
	vo.setOriFile(orifile);
	
	
	dao.partGrade(vo);
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

	alert('���� �ݿ� �Ǿ����ϴ�! �����մϴ�');
	 location.href = 'detail.jsp?userId=<%=userId%>';
	 
</script>
</body>
</html>