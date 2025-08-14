<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String fruit = request.getParameter("fruit");
%>
    
<jsp:useBean id="survey" class="model.Survey" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="survey"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey1.jsp</title>
</head>
<body>



--결과--<br>
[<%=survey.getUserName()%>]님의 설문 결과는 다음과 같습니다.<br>
1. 가장 존경하는 인물은 <%=survey.getPersonName()%><br>
2. 좋아하는 과일은 <%=fruit%>

</body>
</html>

<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="survey" class="model.Survey" scope="request" />
<jsp:setProperty name="survey" property="name" />
<jsp:setProperty name="survey" property="favoriteName" />
<jsp:setProperty name="survey" property="fruit" />

<%
   String fruit = survey.getFruit();
   if (fruit.equals("apple")) fruit = "사과";
   else if (fruit.equals("peach")) fruit = "복숭아";
   else if (fruit.equals("orange")) fruit = "오렌지";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>survey2_Result</title>
</head>
<body>
<%=survey.getName()%>님의 설문 결과는 다음과 같습니다.<br>
1. 가장 존경하는 인물은 <%=survey.getFavoriteName()%><br>
2. 좋아하는 과일은 <%=fruit%>
</body>
</html>
--%>








