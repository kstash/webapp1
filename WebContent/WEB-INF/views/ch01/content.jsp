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
						<h5>스크립트릿/표현식</h5>
						<div>
							<%-- Scriptlet(스크립트릿) --%>
							<%
							Date now = new Date();
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
							String strNow = sdf.format(now);
							%>
							
							<%-- Expressions(표현식) --%>
							오늘 날짜: <%=strNow%>
						</div>
					</div>
					
					<div class="sector">
						<h5>스크립트릿/표현식</h5>
						<div>
							<%for(int i=1; i<=6; i++) {%>
								<h<%=i%>>Hello JSP</h<%=i%>>
							<%}%>							
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</body>
</html>