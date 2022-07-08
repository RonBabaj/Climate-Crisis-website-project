<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Sign Out</title>
	<head>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="background.css">
	</head>
<body>
	<nav>
		<ul>
			<li><a href="Climate Crisis-home Page.jsp">Home Page</a></li>
			<li><a href="Sign Up.jsp">Sign Up</a></li>
			<li><a href="Sign In.jsp">Sign In</a></li>
		</ul>
	</nav>
	<body>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<%
   session.invalidate();
   response.sendRedirect("Climate Crisis-home Page.jsp");
   
%>
</body>
</html>