<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="model.Member" scope="request" />

<jsp:setProperty name="member" property="*" />/
<!-- bean 속성 이름과 세팅된 속성 이름이 다를 경우 param 추가 -->
<jsp:setProperty name="member" property="memail" param="mem_email" />
<%--<jsp:setProperty name="member" property="mpass" />
<jsp:setProperty name="member" property="mname" />
<jsp:setProperty name="member" property="mage" />
<jsp:setProperty name="member" property="mcp" />
<jsp:setProperty name="member" property="memail" />
 --%>

아이디: <jsp:getProperty property="mid" name="member"/><br>
비번: <jsp:getProperty name="member" property="mpass" /><br>
이름: <jsp:getProperty name="member" property="mname" /><br>
나이: <jsp:getProperty name="member" property="mage" /><br>
번호: <jsp:getProperty name="member" property="mcp" /><br>
이메일: <jsp:getProperty name="member" property="mem_email" /><br>