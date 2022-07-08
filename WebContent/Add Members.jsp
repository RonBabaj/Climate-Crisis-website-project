
<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html>
<%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<html>
<head>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<script language="JavaScript">

	function validate(){
	var hebrew = "אבגדהוזחטיכךלמםנןסעפףצץקרשת";
	var number = "0123456789";
	var english ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var chares = "`;:?,'~!#$%^&*(){}<>|\/ ";


//בדיקת שהוקלד שם משתמש
	  if(document.form.user.value =="")
	  {alert("You must enter a Username"); document.form.user.focus() ; 
	  document.form.user.style.borderColor="red";
 return false;}
 
//בדיקת אורך שם משתמש
  if(document.form.user.value.length < 3)
  {alert("The Username has to be at least 3 characters long" ); document.form.user.focus() ; 
   document.form.user.style.borderColor="red";
  return false; } 

//בדיקה שלא הוקלדו סימנים מיוחדים
 for(i=0 ; i < chares.length ; i++)
 {var t= chares.charAt(i);
 if(document.form.user.value.indexOf(t) > -1)
 {alert("Special characters aren't allowed"); document.form.user.focus()
  document.form.user.style.borderColor="red";
  return false;}}
 
//בדיקה שהוקלדה סיסמה
  if(document.form.pass.value =="")
  {alert("You must include a password"); document.form.pass.focus() ;
   document.form.pass.style.borderColor="red";
   return false;}

//בדיקה שאורך הסיסמה לא קצר מ-6 תווים
if(document.form.pass.value.length <6)
{alert("The password cannot be shorter than 6 characters"); document.form.pass.focus() ;
 document.form.pass.style.borderColor="red";
 return false;}

//אם הכל תקין
alert("Member added succefully");

return true;}
//-->
</script>
<head>
	<meta charset="windows-1255">
	<title>Add Members</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="background.css">
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
     <%
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
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
	<p style="Calibri">
		<br/><br/><br/><br/><br/><br/>
		<h2 align="center"> <font color="white" size="15"><b>Add Members:</b></font></h2>
		<hr color="white" width="200"><br/>
<p align="center">		
		<form name="form" method="post" onSubmit="return validate();" action="Add Members.jsp">

   			<input type="text" placeholder="Username" name="user" >  
			<input type="password" placeholder="Password" name="pass">
     		<input type="password" placeholder="Confirm Password" name="pass2">
     		<input type="text" placeholder="Email Address" name="mail" dir="ltr">
     		<input type="text" placeholder="First Name" name="Fname">
     		<input type="text" placeholder="Family Name" name="Lname">
       		<input type="submit" placeholder="submit" name="submit" value="Add Member">  
       		</form>
</p>
<%
 
if(request.getMethod().equals("POST"))
{	 
      
	   String user=request.getParameter("user");
       String password=request.getParameter("pass");
       String Fname=request.getParameter("Fname");
       String Lname=request.getParameter("Lname");
       String email=request.getParameter("mail");
       ClimateChange.insertUpdateDelete("insert into ClimateChange values('"+user+"' , '"+password+"' , '"+Fname+"', '"+Lname+"', '"+email+"')");
}
%>
<font color="white">
<table class="transbox">
  <tr>
    
    <th>Name</th>
    <th>Password</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
  </tr>
<%
 
  String [][] result = ClimateChange.select("select * from ClimateChange");
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

<%
		 }
           else
           {
        %>        
	<%
	
	out.print("You must be an admin in order to access the page");
	
	%>   
  
<%}%>
</font>
</table>
</body>
</html>

