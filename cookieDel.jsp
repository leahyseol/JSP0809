<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//bring cookie
	Cookie[] cookies = request.getCookies();
	//삭제할 쿠키를 찾기
	//해당 쿠키의 유효시간을 0으로 설정
	//해당 쿠키정보를 클라이언트로 보내기
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("name")) {
				cookie.setMaxAge(0);
				cookie.setPath("/");//cookie 생성시 /경로였으면 삭제할때도 /로 지정한다. 
				response.addCookie(cookie);

			}
		}
	}
%>
<script>
	alert('쿠키값 name 삭제됨');
	location.href='cookieEx.jsp';
</script>