<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다원이의 JSP</title>
</head>
<body>
	<h2>회원가입</h2>
	
	<form action="wdwok.jsp" method="post">
		아이디:<input type="text" name="id"><br/>
		비밀번호:<input type="password" name="pass"><br/>
		이름:<input type="text" name="name"><br/>
		<br/>
		<input type="submit" value="가입">
		
	</form>
</body>
</html>