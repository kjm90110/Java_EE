<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = "홍길동";
%>

<!-- 
	include action tag (결과만 가져옴)
	- page에 지정한 리소스를 현재 페이지에 컴파일 해서 포함
	- 두 페이지에 동일한 변수를 선언하는 것이 가능
	-일반적으로 다른 리소스의 수행 결과를 현재 페이지에 포함 할 때 사용
 -->

<jsp:include page="inner1.jsp">
	<jsp:param value="60" name="age"/>
</jsp:include>

<!-- 
	include directive (결과가 나오기까지의 과정 가져옴)
	- file에 지정한 리소스의 코드를 현재 페이지에 포함시키고 한꺼번에 컴파일
	- 두 페이지에 동일한 변수를 선언하는 것이 불가능(코드를 가지고 오기 때문에 변수가 겹치면 안됨)
	- 일반적으로 다른 리소스의 코드를 현재 페이지에 포함 할 때 사용
 -->

<%--@ include file="inner2.jsp" --%>