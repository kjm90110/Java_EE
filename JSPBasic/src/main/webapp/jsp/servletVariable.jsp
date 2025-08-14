<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servletVariable</title>
</head>
<body>

<%!
	// servlet 클래스의 static 멤버 변수
	private static int psmv = 1;

	// servlet 클래스의 non-static 멤버 변수
	int pnsmv = 1;
%>

<%
	// _jspService 메소드의 지역 변수
	int lv = 3;		
%>

<%
	// rpv는 _jspService의 지역 변수
	// name은 request parameter 변수의 이름
	String rpv = request.getParameter("name");
%>

<%
	// application 초기화 파라미터 변수
	// 웹 어플리케이션이 메모리에 로딩 될 때 메모리에 등록되는 변수
	// 웹 어플리케이션에서 처음부터 끝까지 전체적으로 사용할 값을 저장
	// web.xml에 설정해서 사용
	//<context-param>
  		//<param-name>aip</param-name>
		//<param-value>어플리케이션초기화파라미터값</param-value>
  	//</context-param>
	String aipv = application.getInitParameter("aip");
%>

<%
	//servlet 초기화 파라미터
	// web.xml에 설정해서 사용
	// <servlet>
	// 	 <servlet-name>NameServlet</servlet-name>
	// 	 <servlet-class>myServlet.NameServlet</servlet-class>
	//	 <init-param>
	//	   <param-name>sip</param-name>
	//	   <param-value>서블릿초기화파라미터값</param-value>
	// 	 </init-param>
	// </servlet>
	String sipv = pageContext.getServletConfig().getInitParameter("sip");
%>

<%
	//filter 초기화 파라미터
	// web.xml에 설정해서 사용
	// <filter>
	// 	 <filter-name>EncodingFilter</filter-name>
	// 	 <filter-class>myFilter.EncodingFilter</filter-class>
	//	 <init-param>
	//	   <param-name>sip</param-name>
	//	   <param-value>필터초기화파라미터값</param-value>
	// 	 </init-param>
	// </filter>

	// Filter 인터페이스를 구현한 Filter 클래스의 init 메소드의 FilterConfig 파라미터를 통해서 접근 가능
	// String fip = FilterConfig.getInitParameter("fip");
%>

<%
	// 속성 변수 (attribute variable)
	// application, session, request, pageContext 내장객체에 설정해서 사용하는 변수
	
	// 참조 범위 (session이 항상 request보다 큰 건 아님)
	// application > session > request > pageContext
	
	// 속성 변수 설정
	application.setAttribute("aav", "application속성변수의값");
	session.setAttribute("sav", "session속성변수의값");
	request.setAttribute("rav", "request속성변수의값");
	application.setAttribute("pcav", "pageContext속성변수의값");
	
	// 속성 변수값 획득 (getAttribute의 반환 타입은 Object임)
	String aav = (String)application.getAttribute("aav"); 
	String sav = (String)application.getAttribute("sav");
	String rav = (String)application.getAttribute("rav");
	String pcav = (String)application.getAttribute("pcav");
%>






















</body>
</html>