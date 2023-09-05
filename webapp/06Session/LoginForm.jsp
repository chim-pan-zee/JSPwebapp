<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login Form</title>
</head>
<body>
	<jsp:include page="../Common/Link.jsp" />
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;">
	<!-- request내장객체 내에 LoginErrMsg속성이 있는지 확인 후 내용 출력해줌 -->
		<%= request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg") %>
	</span>
	<%
	if (session.getAttribute("UserId") == null) {			//로그인 상태 확인
		//로그인 상태확인 후 로그아웃상태라면 20~29번줄 실행
		//로그인 상태라면 38~번 라인실행
	%>
	<script>
		function validateForm(form) {		//validateForm()은 자바스크립트 유효성 검사 함수 빈값입력시 경고창 출력
			if (!form.user_id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if (form.user_pw.value == "") {
				alert("패스워드를 입력하세요.");
			}	
		}
	</script>
	<form action="LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit="retrun validateForm(this);">	<!-- onsubmit에서 유효성검사 통과시 LoginProcess.jsp이동 -->
		아이디 : <input type="text" name="user_id" /><br />
		패스워드 : <input type="text" name="user_pw" /><br />
		<input type="submit" value="로그인하기" />	
	</form>
	<%
	} else {			// 로그인 된 상태
	%>
		<%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다. <br />
		<a href="Logout.jsp">[로그아웃]</a>
	<%
	}
	%>
</body>
</html>