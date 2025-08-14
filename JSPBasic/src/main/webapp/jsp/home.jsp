<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>

[<%=session.getAttribute("sess_uid")%>]님 로그인 중!<br><br>
<a href="logoutProc.jsp">[로그아웃]</a>

</body>
</html>