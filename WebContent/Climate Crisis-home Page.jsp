<!--<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%> -->
<!DOCTYPE html>
 <%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<html>
    <head>
        <meta charset="windows-1255" />
        <title>Home Page</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="background.css" type="text/css" />
        <style type="text/css">
 h3.c4 {text-align: center}
 h2.c3 {text-align: center}
 h1.c2 {text-align: center}
 p.c1 {Calibri}
</style>
    </head>
    <body>
    	<p style="Calibri">
    	<font color="white">
    	
    		
        <%
          if(session.getAttribute("status")!=null && session.getAttribute("status").equals("member"))
            {
        %>
        <br/>
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
       <p style="Calibri">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Welcome Back <%out.println(session.getAttribute("user"));%>!</b></font></h1>
		<hr color=white width="450"><br/>
		<h2 align="center"> <font color="white" size="15"><b>Feel free To view posts or upload Some yourself! via the articles and article upload pages</b></font></h2>
		<br/><br/>
		
		<%
           }
           else
          
           if(session.getAttribute("status")!=null && session.getAttribute("status").equals("Admin"))
        		   {
        %>
        <br/>
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
       <p style="Calibri">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Hello There Admin!</b></font></h1>
		<hr color=white width="325"><br/>
		<h2 align="center"> <font color="white" size="15"><b>Manage members' accounts by going to the admin page.</b></font></h2>
		<br/><br/>
        
        <%
           }
           else
           {
        %>
        <br/>
              <ul>
            <li>
                <a href="Climate%20Crisis-home%20Page.jsp">Home Page</a>
           </li>
           <li>
                <a href="Articles.jsp">Articles</a>
           </li>
              <li>
                <a href="Gallery.jsp">Gallery</a>
           </li>
           <li>
                <a href="Climate Change Information.jsp">Information</a>
           </li>
            <li>
                <a href="Sign%20In.jsp">Sign In</a>
           </li>
            <li>
                <a href="Sign%20Up.jsp">Sign Up</a>
           </li>
        </ul>
    <p style="Calibri">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Welcome!</b></font></h1>
		<hr color=white width="100"><br/>
		<h2 align="center"> <font color="white" size="15"><b>This website was made in order to raise awareness about climate change and the dangers of air pollution.<br/>
		Everyone member here is welcome to post different articles containing content related to ClimateChange and pollution</b>
		<br/><br/>
		U can view different Articles made by different people, learn about Climate Change via our Information section,and check our gallery. <br/>
		Be sure to sign up so you will be able to upload some articles of your own!
		<br/></font></h2>
		<%
           }
      	%>
    </body>
</html>