<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieExer</title>
</head>
<body>

<%

   // 쿠키 실습
   // jsp 실행시마다 아래 사용자명과 방문회수, 최종 방문시간을 표시
   
   String userName = null;
   String visitCount = "0";
   String lastVisitTime = null;
   
   Cookie[] cookies = request.getCookies();
   
   if (cookies!=null && cookies.length>0) {
      for (Cookie cookie : cookies) {
         if (cookie.getName().equals("userName")) {
            userName = URLDecoder.decode(cookie.getValue(), "utf-8"); 
         } else if (cookie.getName().equals("visitCount")) {
            visitCount = cookie.getValue();
         } else if (cookie.getName().equals("lastVisitTime")) {
            lastVisitTime = URLDecoder.decode(cookie.getValue(), "utf-8");
         }
      }   
   }
   
   List<Cookie> cookieList = new ArrayList<Cookie>();
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");   
   
   cookieList.add(new Cookie("userName", URLEncoder.encode("리얼쵸키", "utf-8")));
   cookieList.add(new Cookie("visitCount", String.valueOf(Integer.parseInt(visitCount)+1)));
   cookieList.add(new Cookie("lastVisitTime", 
          URLEncoder.encode(sdf.format(new Date()), "utf-8")));
   
   for (Cookie cookie : cookieList) {
      response.addCookie(cookie);
   }   
   
%>

<%=userName%>님 <%=visitCount%>번째 방문이시군요!<br>
최종 방문시간은 <%=lastVisitTime%>입니다.

</body>
</html>









