<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Cookie</title></head>
<body>
    <h2>1. 쿠키(Cookie) 설정</h2>
    <%
    Cookie cookie = new Cookie("myCookie", "쿠키맛나요");  // 쿠키 생성
    cookie.setPath(request.getContextPath());  // 경로를 컨텍스트 루트로 설정
    cookie.setMaxAge(3600);  // 유지 기간을 1시간으로 설정
    response.addCookie(cookie);  // 응답 헤더에 쿠키 추가
    %>

    <h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
    <%
    Cookie[] cookies = request.getCookies();  // 요청 헤더의 모든 쿠키 얻기
    if (cookies!=null) {
        for (Cookie c : cookies) {  // 쿠키 각각의
            String cookieName = c.getName();  // 쿠키 이름 얻기
            String cookieValue = c.getValue();  // 쿠키 값 얻기
            // 화면에 출력
            out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
        }
    }
    %>

    <h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
    <a href="CookieResult.jsp">
        다음 페이지에서 쿠키값 확인하기<br/>
    </a>
    
    <h2>쿠키</h2><br/>
    클라이언트 pc에 text로 저장<br/>
    클라이언트에 저장되므로 보안에 취약<br/>
    서버 자원을 사용하지 않으므로 세션보다 빠름<br/>
    용량의 제한이 있음.<br/>
    쿠키 생성 시 설정하고, 설정된 시간이 경과하면 무조건 삭제<br/>
    
    <h2>세션</h2><br/>
    웹 서버에 Object 타입으로 저장됨<br/>
    서버에 저장되므로 보안에 안전<br/>
    서버 자원을 사용하므로 쿠키보다 느림<br/>
    서버가 허용하는 한 제한이 없음<br/>
    서버의 web.xml에서 설정하고, 설정된 시간 내라도 동작이 있다면 삭제되지 않고 유지됨<br/>
</body>
</html>