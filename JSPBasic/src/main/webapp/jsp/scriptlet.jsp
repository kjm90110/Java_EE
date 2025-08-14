<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet</title>
</head>
<body>
<%
	// scriptlet(스크립트릿)
	// scriptlet을 _jspService 메소드 내부에 들어가는 java 코드
	// 멤버변수, 메소드 선언이 불가능
	// 스크립트릿에서 선언한 변수는 _jspService 메소드의 지역변수
	int i = 10;
	String str = "스크립트릿";
	out.print(i+"<br>");
	out.print(str);
	out.print("<br>");
	
	// 구구단 출력
	//for(int o=2; o<=9; o++) {
		//for(int j=1; j<=9; j++) {
			//out.print(o + "X" + j + "= " + o*j + "<br>");
		//}
		//out.print("<br>");
	//}
	
%>

<table>
	<tbody>
		<% for(int o=2; o<=9; o++) { %>
		<tr>
			<% for(int j=1; j<=9; j++) { %>
			<td><%=o + "X" + j + "=" + (o*j) %></td>
			<% } %>
		</tr>
		<% } %>
	</tbody>
</table>

<%--
	이 부분은 JSP 주석이므로 서버에서 해석하지 않음
	int a = 3;
	int b = 4;
	out.print(a*b);
 --%>
 <%
 	/*
 		이 부분은 Java 주석이므로 서버에서 해석하지 않음
 		int a = 3;
 		int b = 3;
 		out.print(a+b);
 	*/
 %>
 
 <!-- 
 	이 부분은 HTML 주석이므로 해석함
 	<%
 		int a = 3;
 		int b = 9;
 		out.print(a+b);
 	 %>
 -->

<hr> 
 <%!
 	/*
 		declaration(선언식) 
 		서블릿 클래스에서 멤버 레벨,
 		멤버 변수, 멤버 메소드 생성 가능
 	*/
 	private int pi = 5;
 	private String pstr = "declaration";
 	
 	private int add(int a, int b) {
 		return a+b;
 	}
 %>
 
 <%
 	out.print(pi+"<br>");
 	out.print(add(3, 4)+"<br>");
 %>

</body>
</html>