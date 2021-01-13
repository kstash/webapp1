<%@ page contentType="text/html; charset=UTF-8"%>

<%-- import 속성 --%>
<%@ page import="java.util.*, java.text.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/main.css">
	</head>

	<body>
		<div class="wrap">
			<%-- 공통 헤더 --%>
			<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			<div class="mainCenter">
				<%-- 공통 메뉴 --%>
				<jsp:include page="/WEB-INF/views/include/menu.jsp"/>
				<%-- 내용 --%>
				<div class="content">
					<div class="sector">
						<h5>회원가입</h5>
						<div>
							<form method="post" action="join">
								아이디: <input type="text"/><br>
								이름: <input type="text"/><br>
								비밀번호: <input type="password"/><br>
								POST 방식: <button class="btn btn-info btn-sm">회원가입</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</body>
</html>