<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//bring lang parameter value
String lang=request.getParameter("lang");

//create cookie
Cookie cookie=new Cookie("language", lang);

cookie.setPath("/");
cookie.setMaxAge(60*60*24);

//send client(save)
response.addCookie(cookie);

%>

<script>
alert('created language cookie');
location href='cookieForm.jsp';



</script>