<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myHome</title>
</head>
<body>

[<%=session.getAttribute("sess_uid")%>]님 로그인 중!
<a href="/jsp/MyLoginForm.jsp">[로그아웃]</a>

</body>
</html>