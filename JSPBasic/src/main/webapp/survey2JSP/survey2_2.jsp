<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Survey" %>


<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="survey" class="model.Survey" scope="request"></jsp:useBean>

<jsp:setProperty property="userName" name="survey"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey2.jsp</title>
</head>
<body>


<form action="survey2_3.jsp" method="post">
<input type="hidden" name="userName" value="<%=survey.getUserName()%>">
가장 존경하는 인물의 이름은?<br>
<input type="text" name="personName" placeholder="이름을 입력해 주세요.">
<input type="submit" value="다음">
</form>


</body>
</html>