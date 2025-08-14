<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieClient</title>
</head>
<body>

<%

// C:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\Network\Cookies
// 라는 파일로 저장됨 (Chrome은 SQLLite라는 데이터베이스 파일로 저장)

// 	클라이언트가 서버에 전송한 쿠키들을 배열로 저장
	Cookie[] cookies = request.getCookies();
	int cookiesLength = cookies.length;
	
	if(cookies!=null && cookiesLength>0) { // 쿠키가 있다면
		for(int i=0; i<cookiesLength; i++) {
			out.print("쿠키명: " + cookies[i].getName() + "<br>");
			out.print("쿠키값: " + URLDecoder.decode(cookies[i].getValue(), "utf-8") + "<br><br>");
			
			// 쿠키 소멸
			cookies[i].setMaxAge(0);
			
			// 쿠키 도메인 설정
			// 이 쿠키는 abc.com 도메인의 www 호스트에만 발행됨
			cookies[i].setDomain("www.abc.com");
			
			// 이 쿠키는 abc.com 도메인의 모든 호스트에 발행됨
			cookies[i].setDomain(".abc.com");
			
			// 쿠키 경로 설정
			// 이 쿠키는 /path1 경로에 발행됨
			cookies[i].setPath("/path1");
			
			// 이 쿠키는 /path1/path2 경로에 발행됨
			cookies[i].setPath("/path1/path2");
			
		}
	}
%>

</body>
</html>