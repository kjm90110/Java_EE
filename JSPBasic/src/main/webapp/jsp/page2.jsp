<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<%
	request.setCharacterEncoding("utf-8");
	System.out.println("page2 request object: " + request);
	
	// page1.jsp에서 보낸 파라미터
	String paramName = request.getParameter("name")==null ? "" : request.getParameter("name");
	String paramAge = request.getParameter("age")==null ? "" : request.getParameter("age");
	
	System.out.println("paramName: " + paramName + ", paramAge: " + paramAge + "<br>");
	
	// page1.jsp에서 설정한 속성 변수
	String attrName = (String)request.getAttribute("name");
	Date attrNow = (Date)request.getAttribute("now");
	System.out.println("attrName= "+ attrName + "attrNow= " + attrNow);
	
	// 실습: page3.jsp에 name 속성변수의 값, now 속성변수의 값을 파라미터로 전달   	
%>  

<jsp:forward page="page3.jsp">
	<jsp:param value=<%=attrName%> name="name"/>
	<jsp:param value=<%=attrNow.toString()%> name="now"/>
</jsp:forward>
