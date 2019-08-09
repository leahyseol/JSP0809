<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = "";
		//쿠키값 가져오기
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("name")) {
					name = cookie.getValue();

				}
			}
		}
	%>
	<h1>cookieEx.jsp page</h1>

	<h3>
		cookie name:<%=name%></h3>

	<button type="button" onclick="location.href='cookieSet.jsp'">cookie
		save</button>
	<button type="button" onclick="location.href='cookieDel.jsp'">cookie
		delete</button>
</body>
</html>