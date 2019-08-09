<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//creating cookie
Cookie cookie1=new Cookie("name","Ddingddong");
Cookie cookie2=new Cookie("age","8");

//cookie expriation setting : sec
cookie1.setMaxAge(60*10);//10mins =600sec
cookie1.setMaxAge(60*24*60*7);

//쿠키는 자신이 생성된 url 주소와 함께 클라이언트로 전송됨
//client가 쿠키생성 url 주소를 방문할때만 해당 쿠키가 서버로 

//naver에서 생성된 쿠키는
//사용자가 naver.com/a 이하의 경로를 방문할때만 쿠키가 서버로
//naver.com/a/b 방문할때도 쿠키가 서버로 전송됨.

//naver.com을 방문하면 쿠키가 서버로 전송이 안됨. 

//쿠키경로를 최상위 경로로 강제설정.
cookie1.setPath("/");
cookie2.setPath("/");


//브라우저로 응답 보내어 브라우저가 파일로 쓰게 하기
response.addCookie(cookie1);
response.addCookie(cookie2);

%>

<script>
	alert('created cookie');
	location.href='cookieEx.jsp';
</script>