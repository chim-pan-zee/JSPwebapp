<%@page import="common.JDBConnect"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h2>회원 추가 테스트(executeUpdate() 사용)</h2>
    <%
    // DB에 연결
    JDBConnect jdbc = new JDBConnect();

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pass");
	String name = request.getParameter("name");
	
	
	// 쿼리문 생성
	String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	try{
				
		// 3. pstmt 생성
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, name);
		
		// 4. sql문 실행
		int inResult = psmt.executeUpdate(); 
   		 out.println(inResult + "행이 입력되었습니다.");
		
		if(inResult == 1){ // 성공
			response.sendRedirect("wdw_succes.jsp");
		} else{ // 실패
			response.sendRedirect("wdw_fail.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} 
%>

</body>
</html>