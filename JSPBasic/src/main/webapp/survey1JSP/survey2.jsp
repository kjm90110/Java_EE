<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey2.jsp</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("userName");
%>

<form action="survey3.jsp" method="post">
<input type="hidden" name="userName" value="<%=userName%>">
가장 존경하는 인물의 이름은?<br>
<input type="text" name="personName" placeholder="이름을 입력해 주세요.">
<input type="submit" value="다음">
</form>


</body>
</html>