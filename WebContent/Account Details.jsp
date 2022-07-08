<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Account Details</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="background.css">
	</head>
			<style>
			button {background-color: #a4b15c;}
	        button{background: #bac675; border: 0; cursor: pointer; color: #3e3d3d;}
	        button:hover{ background: #a4b15c; transition: .6s;}
	        button{width: 20%; background: none; border: 1px solid #fff; border-radius: 3px; padding: 6px 15px; box-sizing: border-box; margin-bottom: 20px; font-size: 16px; color: #fff;}

    </style>
    <%
          if(session.getAttribute("status")!=null && session.getAttribute("status").equals("member"))
            {
        %>
        <br/>
	<nav>
		    <ul>
            <li>
                <a href="Climate%20Crisis-home%20Page.jsp">Home Page</a>
           </li>
           <li>
                <a href="Articles.jsp">Articles</a>
           </li>
           <li>
                <a href="Article Upload.jsp">Article Upload</a>
           </li>
           <li>
                <a href="Gallery.jsp">Gallery</a>
           </li>
           <li>
                <a href="Climate Change Information.jsp">Information</a>
           </li>
            <li>
                <a href="Account.jsp">Account</a>
           </li>
           <li>
              	<a href="Sign%20Out.jsp">Sign Out</a>
           </li>
        </ul>
	</nav>
	<body>
	<p style="Calibri" align="center">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Account Details:</b></font></h1>
		<hr color=white width="300" align="center"><br/>
		 <h2 align="center"> <font color="white" size="5"><b>Name:</b></font></h2>
		<hr color=white width="70" align="center"><br/>
		 <p align="center">
		 <font color="white" size="5">
		<%
	     out.println(session.getAttribute("user"));
	     
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Password:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		out.println(session.getAttribute("pass"));
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Email:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		String Email = ClimateChange.select("select Email from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		String FirstName = ClimateChange.select("select First_Name from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		String LastName = ClimateChange.select("select Family_Name from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		out.println(Email);
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">First Name:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<% 
		out.println(FirstName);
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Last Name:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		out.println(LastName);
		%>
		<br/><br/>
<%
           }
           else
          
           if(session.getAttribute("status")!=null && session.getAttribute("status").equals("Admin"))
        		   {
        %>
        	<nav>
		    <ul>
            <li>
                <a href="Climate%20Crisis-home%20Page.jsp">Home Page</a>
           </li>
           <li>
                <a href="Articles.jsp">Articles</a>
           </li>
           <li>
                <a href="Article Upload.jsp">Article Upload</a>
           </li>
           <li>
                <a href="Gallery.jsp">Gallery</a>
           </li>
           <li>
                <a href="Climate Change Information.jsp">Information</a>
           </li>
            <li>
                <a href="AdminPage.jsp">Admin Page</a>
           </li>
           <li>
              	<a href="Sign%20Out.jsp">Sign Out</a>
           </li>
        </ul>
	</nav>
	<body>
	<p style="Calibri" align="center">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Account Details:</b></font></h1>
		<hr color=white width="300" align="center"><br/>
		 <h2 align="center"> <font color="white" size="5"><b>Name:</b></font></h2>
		<hr color=white width="70" align="center"><br/>
		 <p align="center">
		 <font color="white" size="5">
		<%
	     out.println(session.getAttribute("user"));
	     
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Password:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		out.println(session.getAttribute("pass"));
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Email:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		String Email = ClimateChange.select("select Email from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		String FirstName = ClimateChange.select("select First_Name from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		String LastName = ClimateChange.select("select Family_Name from ClimateChange where Name='"+session.getAttribute("user")+"'")[0][0];
		out.println(Email);
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">First Name:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<% 
		out.println(FirstName);
		%>
		<br/>
		<br/><h3 align="center"> <font color="white" size="5">Last Name:</font></h3>
		<hr color=white width="100" align="center"><br/>
		<p align="center">
		<%
		out.println(LastName);
		%>
		<br/><br/>
		<%
           }
           else
           {
        %>        
	<%
	
	out.print("You must be signed in in order to access that page");
	
	%>   
  
<%}%>
		</font>
		</p>
</body>
</html>