<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTest</title>
</head>
<body>

<%
//	request로부터 session 객체를 획득
	HttpSession s = (HttpSession)request.getSession();

//	Tomcat에서는 따로 설정하지 않으면 기본 30분
	s.setMaxInactiveInterval(60*60*3); // 3시간 동안 세션 유효
	
	// session에 속성변수 설정
	s.setAttribute("userId", "hong");
	s.setAttribute("userPassword", "1234");
	
	// session의 속성변수 획득
	String userId = (String)s.getAttribute("userId");
	String userPassword = (String)s.getAttribute("userPassword");
	
	out.print("userId: " + userId + "<br>");
	out.print("userPassword: " + userPassword);
	
	if(s!=null) {
		// session 무효화 (세션 종료)
		s.invalidate();
	}
	
%>

</body>
</html>