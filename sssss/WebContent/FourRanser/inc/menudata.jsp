<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="loginPage.jsp" %>
<%
	request.setCharacterEncoding("EUC-KR");

	LinkedHashMap<String, String>top_lower = new LinkedHashMap();

	String nowUri = request.getRequestURI().substring(
			(request.getContextPath()+"/fourRancer/").length(),
			request.getRequestURI().length()-4
			);
	String [] cate=nowUri.split("/");
	
	String nowUrl = nowUri+".jsp";
	
	if(request.getParameter("id")!=null)
	{
		nowUrl+="?id="+request.getParameter("id");
	}
	
	System.out.println("uri:"+nowUri);
	System.out.println("url:"+nowUrl);

	String menuParam = cate[0];
	String main = cate[1];
	String service = cate[2];
	
	String serviceUrl = menuParam+"/"+service+".jsp";
	
	/* if(menuParam.equals("info"))
	{
		serviceUrl = menuParam+"/"+main+".jsp";
	} */
	
	request.setAttribute("nowUrl", nowUrl);
	request.setAttribute("cate", main);
	request.setAttribute("serviceUrl", serviceUrl);
	
	System.out.print("현재 serviceUrl:"+serviceUrl);
	
	top_lower.put("projectSearch","프로젝트검색");
	top_lower.put("freelancerSearch","프리랜서검색");
	top_lower.put("mypage","마이페이지");
	top_lower.put("cs","고객센터");
	
	LinkedHashMap<String, String>bottom = new LinkedHashMap();
	
	bottom.put("introduce","회사소개");
	bottom.put("access","오시는길");
	bottom.put("recruit","채용공고");
	
	LinkedHashMap<String, String>submenu2 = new LinkedHashMap();
	
	submenu2.put("gongji","공지사항");
	submenu2.put("qna","QnA");
	submenu2.put("fnq","FnQ");
	
	HashMap<String,LinkedHashMap<String, String>>menu = new HashMap();
	
	LinkedHashMap<String, String>submenu1 = new LinkedHashMap();
	
	submenu1.put("resumeManager","이력서관리");
	submenu1.put("projectInform","프로젝트정보");
	submenu1.put("privateManager","개인정보관리");
	submenu1.put("toCom","기업평가");
	submenu1.put("projectManager","프로젝트관리");
	submenu1.put("comInformManager","기업정보관리");
	submenu1.put("toFree","프리랜서평가");
	submenu1.put("levelSearch","등급조회");

	
	menu.put("gallery",new LinkedHashMap());
	menu.get("gallery").put("first","소녀시대");
	menu.get("gallery").put("boy","소년시대");
	
	menu.put("product",new LinkedHashMap());
	menu.get("product").put("first","tv");
	menu.get("product").put("aircon","에어콘");
	menu.get("product").put("handphone","핸드폰");
	
	
	menu.put("center",new LinkedHashMap());
	menu.get("center").put("first","공지사항");
	menu.get("center").put("fnq","즐겨찾는질문");
	menu.get("center").put("qna","질문및답변");
	
	
		
	LinkedHashMap<String, String> menuList = menu.get(menuParam); 
	
	request.setAttribute("submenu2", submenu2);
	request.setAttribute("submenu1", submenu1);
	request.setAttribute("top_lower", top_lower);
	request.setAttribute("bottom", bottom);
/* 	request.setAttribute("menuList", menuList); */
	
	
%>





<%-- <%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	LinkedHashMap<String, String>top_lower = new LinkedHashMap();

	String nowUri = request.getRequestURI().substring(
			(request.getContextPath()+"/fourRancer/").length(),
			request.getRequestURI().length()-4
			);
	String [] cate=nowUri.split("/");
	
	String nowUrl = nowUri+".jsp";
	
	if(request.getParameter("id")!=null)
	{
		nowUrl+="?id="+request.getParameter("id");
	}
	
	System.out.println("uri:"+nowUri);
	System.out.println("url:"+nowUrl);

	String menuParam = cate[0];
	String main = cate[1];
	String service = cate[2];
	
	String serviceUrl = menuParam+"/"+service+".jsp";
	
	if(menuParam.equals("info"))
	{
		serviceUrl = menuParam+"/"+main+".jsp";
	}
	
	request.setAttribute("nowUrl", nowUrl);
	request.setAttribute("cate", main);
	request.setAttribute("serviceUrl", serviceUrl);
	
	System.out.print("serviceUrl:"+serviceUrl);
	
	top_lower.put("projectSearch","프로젝트검색");
	top_lower.put("freelancerSearch","프리랜서검색");
	top_lower.put("mypage","마이페이지");
	top_lower.put("cs","고객센터");
	
	LinkedHashMap<String, String>bottom = new LinkedHashMap();
	
	bottom.put("introduce","회사소개");
	bottom.put("access","오시는길");
	bottom.put("recruit","채용공고");
	
	HashMap<String,LinkedHashMap<String, String>>menu = new HashMap();
	
	menu.put("info",new LinkedHashMap());
	menu.get("info").put("first","인사말");
	menu.get("info").put("history","연혁");
	menu.get("info").put("location","오시는길");
	
	menu.put("gallery",new LinkedHashMap());
	menu.get("gallery").put("first","소녀시대");
	menu.get("gallery").put("boy","소년시대");
	
	menu.put("product",new LinkedHashMap());
	menu.get("product").put("first","tv");
	menu.get("product").put("aircon","에어콘");
	menu.get("product").put("handphone","핸드폰");
	
	
	menu.put("center",new LinkedHashMap());
	menu.get("center").put("first","공지사항");
	menu.get("center").put("fnq","즐겨찾는질문");
	menu.get("center").put("qna","질문및답변");
	
	
		
	LinkedHashMap<String, String> menuList = menu.get(menuParam); 
	System.out.print("메뉴리스트"+menuList);
	
	
	request.setAttribute("top_lower", top_lower);
	request.setAttribute("bottom", bottom);
	request.setAttribute("menuList", menuList);
	
	
%>
<%@ include file="loginPage.jsp" %>


 --%>