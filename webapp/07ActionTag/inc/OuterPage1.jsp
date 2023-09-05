<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <h2>지시어 와 액션태그 비교</h2>
지시어<br/>
형식 : <@ include file ="포함할 파일의 경로">  의 형식을 사용<br/>
표현식 : 표현식 사용 불가<br/>
포함 방식 : 페이지 자체를 현재 페이지에 포함시킨 후 컴파일 진행<br/>
변수 : 포함시킨 파일에서 생성한 변수 사용가능<br/>
page영역 : 공유됨<br/>
request영역 : 공유됨<br/><br/>

액션 태그<br/>
형식 : jsp:include page = "포함할 파일의 경로" <br/>
표현식 : 표현식 사용 가능<br/>
포함 방식 : 실행의 흐름을 포함시킬 페이지로 이동시킨 후 실행한 결과를 현재 페이지에 포함시킴<br/>
변수 : 포함시킨 파일에서 생성한 변수 사용불가<br/>
page영역 : 공유되지 않음<br/>
request영역 : 공유됨<br/> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 OuterPage</title>
</head>
<body>
<h2>외부 파일</h2>
<%
String newVar1 = "고구려 세운 동명왕";
%>      
<ul>
	<li> page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
	<li> request 영역 속성 : <%= request.getAttribute("rAttr")%></li>
</ul>
</body>
</html>