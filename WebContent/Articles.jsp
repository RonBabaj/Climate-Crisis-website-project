<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html>
<%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<jsp:include page="Menu.jsp"></jsp:include>
<html>
<head>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<head>
	<meta charset="windows-1255">
	<title>Articles</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="background.css">
	<!--  -->
	<link rel="stylesheet" href="article format.css">
	
	
	
</head>
	<style>
	        *{margin: 0; padding: 0;}
	        body{}
	        body {
    			text-align: center;
								}
			form {
    			display: inline-block;
				}
	        .form-wrap{ width: 320px; padding: 40px 20px; box-sizing: border-box; position: fixed; left: 50%; top: 50%; transform: translate(-50%, -50%);}
	        h1{text-align: center; color: #fff; font-weight: normal; margin-bottom: 20px;}
	        
	        input{width: 50%; background: none; border: 1px solid #fff; border-radius: 3px; padding: 6px 15px; box-sizing: border-box; margin-bottom: 20px; font-size: 16px; color: #fff;}
	        
	        input[type="button"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d;}
	        input[type="button"]:hover{ background: #a4b15c; transition: .6s;}
	        
	        input[type="submit"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d;}
	        input[type="submit"]:hover{ background: #a4b15c; transition: .6s;}
	        ::placeholder{color: #fff;}
    </style>
	<body>
	<p style="Calibri">
		<br/><br/>
		<h2 align="center"> <font color="white" size="15"><b>Articles:</b></font></h2>
		<hr color="white" width="200"><br/>
		<font color="white" size="15">
		
<%
  String [][] result = ClimateChange.select("select * from Posts");
  for(int i=0;i<result.length;i++)
  {
	  out.print("<strong style='font-size:30px'>"+result[i][0]+"</strong><br/><br/>");
    out.print("<p style='font-size:20px'> By "+result[i][2]+"</p><br/>");
     out.print("<p align='justify' style='font-size:20px'>"+result[i][1]+"</p><br/>");
     %>
     
    <hr color=white width="100%">
    
<%
  }
%>

    
</style>
</font>
 </font>
</body>
</html>