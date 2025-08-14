<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 연산</title>
</head>
<body>
	<%
	// SimpleCalc.jsp의 모든 변수는 SimpleCalc_jsp.java/_jspService 메소드의 지역변수다.
		int i = 10;
		int j = 20;
		int sum = i + j;
		out.println("합계: " + sum); // 클라이언트 출력스트림, JSPWriter out
		System.out.println(sum); // 서버 콘솔에 출력, PrintStream out
	%>
</body>
</html>