<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Switch Account</title>
	<head>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="background.css">
	</head>
	<body>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<%
   session.invalidate();
   response.sendRedirect("Sign In.jsp");
   
%>
</body>
</html>