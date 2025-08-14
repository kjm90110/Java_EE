<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attributeVariable1</title>
</head>
<body>

<%
	application.setAttribute("aav", new Date());
	session.setAttribute("sav", new Date());
	request.setAttribute("rav", new Date());
	pageContext.setAttribute("pav", new Date());
	
	// redirection (request가 새롭게 생성 = 기존 request는 사라짐)
	// 웹 브라우저 주소창의 URL이 변경됨
	// 클라이언트가 attributeVariable1.jsp를 요청 => 서버에서 attributeVariable2.jsp를 요청하라고 응답
	// => 클라이언트는 attributeVariable2.jsp를 요청 => 서버에서는 응답
	//response.sendRedirect("attributeVariable2.jsp");

	// forwarding (request를 유지) 
	// 웹브라우저 주소창의 URL이 유지됨
	// 클라이언트가 attributeVariable1.jsp를 요청 => 서버에서 attributeVariable2.jsp로 요청을 전달(request 유지)
	// => 서버에서는 응답
	RequestDispatcher rd = request.getRequestDispatcher("attributeVariable2.jsp");
	rd.forward(request, response);
%>

<input type="button" value="attributeVariable2로 이동"
	onclick="javascript:location.href='attributeVariable2.jsp';"> 


</body>
</html>