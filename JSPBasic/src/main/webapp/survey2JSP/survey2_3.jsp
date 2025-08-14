<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Survey" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="survey" class="model.Survey"></jsp:useBean>

<jsp:setProperty property="userName" name="survey"/>    
<jsp:setProperty property="personName" name="survey"/>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey3.jsp</title>
</head>
<body>

<form action="survey2_Result.jsp" method="post">
<input type="hidden" name="userName" value="<%=survey.getUserName()%>">
<input type="hidden" name="personName" value="<%=survey.getPersonName()%>">
다음 중 좋아하는 과일은?<br>
복숭아 <input type="checkbox" name="fruit" value="복숭아">
사과 <input type="checkbox" name="fruit" value="사과">
오렌지 <input type="checkbox" name="fruit" value="오렌지">

<input type="submit" value="다음">

</form>

</body>
</html>