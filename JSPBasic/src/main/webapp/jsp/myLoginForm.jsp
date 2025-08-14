<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myLoginFrom</title>
</head>
<body>

<form action="/MyLoginProc" method="post">
아이디: <input type="text" name="uid" placeholder="아이디를 입력하세요"><br>
비밀번호: <input type="password" name="upass" placeholder="비밀번호를 입력하세요"><br><br>
<input type="submit" value="로그인">
</form>

<%
	String status = (String)session.getAttribute("status");
	String loginErrorCount = (String)session.getAttribute("loginErrorCount");
%>

<script>
if(<%=status%>!=null) {
	
	if(<%=status%>.equals("uidError") && Integer.parseInt(<%=loginErrorCount%>)<5) {
		console.log(<%=status%>);
		alert("아이디가 맞지 않습니다.");
	} else if(<%=status%>.equals("upassError") && Integer.parseInt(<%=loginErrorCount%>)<5) {
		console.log(<%=status%>);
		alert("비밀번호가 맞지 않습니다.");
	} else if (Integer.parseInt(<%=loginErrorCount%>)==5) {
		alert("로그인 5회 실패하셨습니다. 10분 후 다시 로그인 해주세요.");
	}
	
}
</script>

</body>
</html>