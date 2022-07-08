<!--<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>-->
        <%@page import="db.ForDataBase.*"%>
<jsp:useBean id="ClimateChange" class = "db.ForDataBase"/>
<!DOCTYPE html>
<html>
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
alert("Sign In succefully completed");

return true;}
//-->
</script>
<head>
	<meta charset="windows-1255">
	<title>Sign In Page</title>
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
		</nav>
	<body>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<%
session.setAttribute("status","guest");
String [][] result=null;
if(request.getMethod().equals("POST"))
{	  
	
	     String user=request.getParameter("user");
	     String password=request.getParameter("pass");
	     session.setAttribute("user",user);
	     session.setAttribute("pass",password);
	    
	     if(user.equals("Admin") && password.equals("Password")){
	         session.setAttribute("status","Admin");
	         response.sendRedirect("Climate Crisis-home Page.jsp");
	     }
	     else{
	    	 result= result=ClimateChange.select("select * from ClimateChange where Name='"+user+"'&& Password='"+password+"'");
	        if (result.length>0) 
	        {
	           session.setAttribute("status","member");
	           response.sendRedirect("Climate Crisis-home Page.jsp");
	        }
	        
	
	     
         }
}
%>		
	<p style="Calibri">
		<br/><br/><br/><br/>
		<h2 align="center"> <font color="white" size="15"><b>Sign In:</b></font></h2>
		<hr color="white" width="100"><br/>
		
<form action="Sign In.jsp" action="Profile.jsp" method="post">

	<input type="text" placeholder="Username" name="user" >  
	<input type="password" placeholder="Password" name="pass">
    <input type="submit" placeholder="submit" name="submit" value="Sign In">  
       
  
</form>

<%


{	  

%>
<%
}
%>


</body>
</html>
