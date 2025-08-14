<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attributeVariable2</title>
</head>
<body>

<%
	out.print("application =>" + application.getAttribute("aav") + "<br>");
	out.print("session => " + session.getAttribute("sav")+ "<br>");
	out.print("request => " + request.getAttribute("rav")+ "<br>");
	out.print("pageContext => " + pageContext.getAttribute("pav")+ "<br>");
%>

</body>
</html>