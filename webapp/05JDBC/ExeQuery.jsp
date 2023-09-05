<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8"%>  
<html>
<head><title>JDBC</title></head>
<body>
    <h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
    <%
    // DB에 연결
    JDBConnect jdbc = new JDBConnect();

    // 쿼리문 생성   
    String sql = "SELECT id, pass, name, regidate FROM member";  
    Statement stmt = jdbc.con.createStatement();  
    
    /* prepareStatemnet() sql문의 재사용이 용이하며, 자원이 낭비가 거의없다. [무겁다]
       createStatement() sql문 사용시 입력된 값이 다를 경우 재사용불가, 자원낭비발생가능성 [가볍다] */

    // 쿼리 수행
    ResultSet rs = stmt.executeQuery(sql);  

    // 결과 확인(웹 페이지에 출력)
    while (rs.next()) { 
        String id = rs.getString(1);
        String pw = rs.getString(2);
        String name = rs.getString("name");
        java.sql.Date regidate = rs.getDate("regidate");
        
        out.println(String.format("%s %s %s %s", id, pw, name, regidate) + "<br/>"); 
    }

    // 연결 닫기
    jdbc.close();
    %>
</body>
</html>