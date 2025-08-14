<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%

	// POST 요청에 대해서 한글 인코딩
	request.setCharacterEncoding("utf-8");
	System.out.println("page1 request object: " + request);
	
	// request 속성 변수 설정
	request.setAttribute("name", "홍길동");
	request.setAttribute("now", new Date());
%>
<!-- 
	forward action tag: request를 유지하면서 페이지를 이동 
	- page: 포워딩할 페이지
	- name: 포워딩 할 때 전달할 파라미터 이름
	- value: 포워딩 할 때 전달할 파라미터 값
 --> 

<!-- jsp forward action tag를 사용한 포워딩 -->
<%--
<jsp:forward page="page2.jsp">
	<jsp:param name="name" value="홍길동" />
	<jsp:param name="age" value="60" />
</jsp:forward>
 --%>

<!-- RequseDispatcher를 사용한 포워딩 -->
<%
	RequestDispatcher rd = request.getRequestDispatcher("page2.jap?name=홍길동&age=60");
	rd.forward(request, response);
%>
