<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embededObject</title>
</head>
<body>

<%
	// javax.servlet.http.HttpServletRequest
	out.print(request + "<br>");
	// javax.servlet.http.HttpServletResponse
	out.print(response+ "<br>");
	// javax.servlet.jsp.jspWriter
	out.print(out+ "<br>");
	// javax.servlet.http.HttpSession
	out.print(session+ "<br>");
	// javax.servlet.ServletContext
	out.print(application+ "<br>");
	// javax.servlet.jsp.PageContext
	out.print(pageContext+ "<br>");
	// javax.servlet.jsp.HttpJspPage
	out.print(page+ "<br>");
	// javax.servlet.ServletConfig
	out.print(config+ "<br>");
%>

</body>
</html>