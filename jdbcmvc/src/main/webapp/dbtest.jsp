<%@page import="jdbcmvc.constant.PersonConstant"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	Class.forName(PersonConstant.JDBC_DRIVER);
	
	Connection conn = DriverManager.getConnection(
		PersonConstant.JDBC_URL,
		PersonConstant.JDBC_USER,
		PersonConstant.JDBC_PASSWORD
	);
	
	if(conn!=null) {
		out.print("db 연결 성공");
	} else {
		out.print("db 연결 실패");
	}
	
%>