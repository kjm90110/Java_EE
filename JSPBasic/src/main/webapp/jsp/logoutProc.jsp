<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// 직접 URL을 입력해서 페이지에 접근하는 것을 방지
   if(session==null || session.getAttribute("sess_uid")==null) {
   		response.sendRedirect("loginForm.jsp");
   }
%>
    
<%
	if(session!=null) {
		// 세션 종료
		session.invalidate();
	}
	response.sendRedirect("loginForm.jsp");
%>
