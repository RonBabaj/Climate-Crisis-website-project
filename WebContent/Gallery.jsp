<!--<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%> -->
<!DOCTYPE html>
 <%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<jsp:include page="Menu.jsp"></jsp:include>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<html>
    <head>
        <meta charset="windows-1255" />
        <title>Gallery</title>
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
           <p style="Calibri">
		<br/><br/><br/>
		<h1 align="center"> <font color="white" size="20"><b>Offical Site Gallery:</b></font></h1>
		<hr align="center" width="500"><br/>
<table cellpadding="20" cellspacing="30" align="center" color="white">
<tr> 
	<td> <img src="imgs\pollution2.jpg" width="350" height="380"> </td>
	<td> <img src="imgs\Califire.jpg" width="350" height="380"> </td>
	<td> <img src="imgs\power-station.jpg" width="350" height="380"> </td>
</tr>
<tr>
	<td><font size="5" color="white">Site Background</font> </td>
	<td><font size="5" color="white">The California Wildfire</font> </td>
	<td><font size="5" color="white">Pollution Caused By A Factory</font> </td>
</tr>
<tr> 
	<td> <img src="imgs\Amazon.jpg" width="350" height="380"> </td>
	<td> <img src="imgs\polar bears.jpg" width="350" height="380"> </td>
	<td> <img src="imgs\leaf.jpg" width="350" height="380"> </td>
</tr>
<tr>
	<td><font size="5" color="white">The Amazon Rainforest Fire</font> </td>
	<td><font size="5" color="white">Polar Bears Stuck On A Melting Iceberg</font> </td>
	<td><font size="5" color="white">An Artistic Representation</font> </td>
</tr>
<tr> 
	<td> <img src="imgs\kids.jpg" width="350" height="380"> </td>
	<td> <img src="imgs\fire.JPG" width="350" height="380"> </td>
	<td> <img src="imgs\ice.jpg" width="350" height="380"> </td>
</tr><tr>
	<td><font size="5" color="white">Kids Holding Onto their Items During a Flood</font> </td>
	<td><font size="5" color="white">A forest Fire</font> </td>
	<td><font size="5" color="white">An Iceberg Crushing And Melting Down</font> </td>
</tr>
</table>

    </body>
</html>