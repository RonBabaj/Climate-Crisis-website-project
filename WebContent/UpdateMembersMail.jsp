<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="db.ForDataBase"%>

<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<!-- equals to  "JDBC.ForDataBase db=new JDBC.ForDataBase()" -->
<%  
  if (   session.getAttribute("status") != null  && 
        session.getAttribute("status").equals("member"))
    {
%>
<html dir="rtl">
<head>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">

<title>עדכן מייל למשתמש</title>
</head>


<body>
<center><font size="5" face="ANS broken glass" color="#AC1515"><b>עדכן מייל לחבר</b></font></center>
<table> <tr> <td> </td>
<td ></td></tr></table>



<h3>הכנס מייל לעדכון</h3>
<form action="UpdateMembersMail.jsp" method="post">
 
  מייל: <input type="text" id="mail" name="mail"><br/>
  
 
  <input type="submit" value="עדכן"><input type="reset" value="נקה">
</form>
<%


  if(request.getMethod().equals("POST"))
  {	  
	         
	
	     String mail=request.getParameter("mail");
	    
	     System.out.println("update ClimateChange set Email= '"+mail+"' where Name='"+session.getAttribute("user")+"'");
	     ClimateChange.insertUpdateDelete("update ClimateChange set Email= '"+mail+"' where Name='"+session.getAttribute("user")+"'");
  }
%>
<table class="transbox">
  <tr>
    
    <th>שם משתמש</th>
    <th>סיסמא</th>
    <th>מייל</th>
  </tr>
<%
 
  String [][] result = ClimateChange.select("select * from ClimateChange where Name='"+session.getAttribute("user")+"' and Password='"+session.getAttribute("password")+"'");
  int j,i;
  for(i=0;i<result.length;i++)
  {

     out.println("<tr>");
     for(j=0;j<result[i].length;j++)
     {

		  out.println("<td>"+result[i][j]+"</td>");
     } 
     out.println("</tr>");
  }
%>  
</table>
</body>
</html>
<%
   }
   else
   {
         out.print( "<h1>גישה חסומה</h1>" );
    }
%>