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
	<title>Account</title>
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
	<p style="Calibri">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Account Page</b></font></h1>
		<hr color=white width="300" align="center"><br/>
		<p align="center">
		<button onclick="location.href = 'Account Details.jsp';" id="Account Details" class="float-left submit-button" >Account Details</button>
		<br/>
		<button onclick="location.href = 'Switch Account.jsp';" id="Switch Account" class="float-left submit-button" >Switch Account</button>
		<br/>
		<button onclick="location.href = 'Update Password.jsp';" id="Change Password" class="float-left submit-button" >Change Password</button>
		<br/>
		<button onclick="location.href = 'Update Email.jsp';" id="Change Email" class="float-left submit-button" >Change Email</button>
		<br/>
		<button onclick="location.href = 'Update Username.jsp';" id="Change Username" class="float-left submit-button" >Change Username</button>
		<br/><br/><br/>
		</font>
		
		<%
           }
           else
          
           if(session.getAttribute("status")!=null && session.getAttribute("status").equals("Admin"))
        		   {
        %>
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
		<%
           }
           else
           {
        %>        
	<%
	
	out.print("You must be signed in or an admin in order to access this page");
	
	%>   
  
<%}%>
</body>
</html>