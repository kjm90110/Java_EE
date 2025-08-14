<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--@ page errorPage="errorPage.jsp" --%>
<%
	// NullpointerException
	//String name = request.getParameter("name").toUpperCase();

//	ArrayIndexOutOfBoundsException
	//int[] intArr = new int[3];
	//int i = intArr[3];
	
	// ClassCastException
	//Object obj = new ArrayList();
	//String str = (String)obj;
	
	//float f = 10.0f / 0;
	
	//int j = 10 / 0;
	
	try {
		int j = 10/0;
	} catch(ArithmeticException ae) {
		ae.printStackTrace();
	}
%>