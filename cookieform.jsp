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
String language="Korean";
//bring cookie
Cookie[] cookies=request.getCookies();
if(cookies !=null){
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("language")){
			language=cookie.getValue();
			
		}
	}
}

%>
<%=language %>
<%
if(language.equals("Korean")){
	%><h2>Hello~ This is a cookie example</h2><% 
}else{
	%><h2>Hello~ This is a cookie example</h2><%
	
	
}

%>
<form action="">
	<input type="radio" name="lang" value="korean" 
	<% if (language.equals("korean")) { %>checked<% } %> /> 한국어 페이지 보기
	<input type="radio" name="lang" value="english" 
	<% if (language.equals("english")) { %>checked<% } %> /> English page
	<br>
<button type="submit">language setting</button>

</form>
</body>
</html>