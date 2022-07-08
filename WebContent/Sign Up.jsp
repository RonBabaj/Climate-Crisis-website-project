<!--<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>-->
        <!--<%@page import="db.ForDataBase.*"%>-->
<jsp:useBean id="ClimateChange" class="db.ForDataBase" scope="session"/>
<!DOCTYPE html>
<html>
<script language="JavaScript">

	function validate(){
		var email= document.form.mail.value ;
     	var lengthmail = email.length ;
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

//בדיקת שהוקלדה סיסמה לאימות 
if(document.form.pass2.value =="")
{alert("You must confirm your password"); document.form.pass2.focus() ;
 document.form.pass2.style.borderColor="red";
 return false;}
 
//בדיקת אימות הסיסמה
 if(document.form.pass.value != document.form.pass2.value)
 {alert("The passwords don't match"); document.form.pass2.focus() ;
  document.form.pass2.style.borderColor="red";
  return false;}
 
//בדיקה שהולקד שם פרטי
 if(document.form.Fname.value =="")
 {alert("U must include a first name"); document.form.Fname.focus() ;
   document.form.Fname.style.borderColor="red";
  return false;}

//בדיקה ששם פרטי אינו קצר מ-2 תווים
if(document.form.Fname.value.length<2)
{alert("Your first name cannot be shorter than 2 characters"); document.form.Fname.focus() ;
  document.form.Fname.style.borderColor="red";
 return false;}

//בדיקה שהולד שם משפחה
 if(document.form.Lname.value =="")
 {alert("You must include a family name"); document.form.Lname.focus() ; 
   document.form.Lname.style.borderColor="red";
 return false;}
 
//בדיקה ששם משפחה אינו קצר מ-2 תווים
if(document.form.Lname.value.length<2)
{alert("Your Family name cannot be shorter than 2 characters"); document.form.Lname.focus() ; 
  document.form.Lname.style.borderColor="red";
return false;} 
 
//בדיקה שהולקדה כתובת דואל
  if(document.form.mail.value =="")
  {alert('You must include an Email address'); document.form.mail.focus() ; 
    document.form.mail.style.borderColor="red";
  return false;}

// בדיקה שיש @ בכתובת הדואל והוא אינו בהתחלה 
 if(document.form.mail.value.indexOf("@") <1)
 {alert('The "@" sign has to be in its correct place'); document.form.mail.focus() ; 
   document.form.mail.style.borderColor="red";
 return false;}
 
//בדיקה שאין יותר מ-@ אחד בכתובת הדואל
if(document.form.mail.value.indexOf("@") != document.form.mail.value.lastIndexOf("@"))
{alert('You cannot have more than one "@" sign'); document.form.mail.focus() ; 
  document.form.mail.style.borderColor="red";
return false;}
 
//בדיקה שאין בדואל סימנים לא חוקיים
 for(i=0 ; i < chares.length ; i++)
 {var a= chares.charAt(i);
 if(document.form.mail.value.indexOf(a) > -1)
 {alert('The Email address cannot include invalid characters');
  document.form.mail.focus() ; 
    document.form.mail.style.borderColor="red";
  return false;}}
 for(i=0 ; i < hebrew.length ; i++)
 {var a= hebrew.charAt(i);
 if(document.form.mail.value.indexOf(a) > -1)
 {alert('The Email address cannot include hebrew characters');
  document.form.mail.focus() ; 
    document.form.mail.style.borderColor="red";
  return false;}}

//בדיקה שהנקודה בדואל נמצאת אחרי ה-@
 var a=document.form.mail.value.split("@");
 if((a[1]).indexOf(".")<3)
 {alert('The dot in the email address is misplaced'); document.form.mail.focus() ; 
   document.form.mail.style.borderColor="red";
 return false;}

//בדיקה שאין יותר מ-2 נקודות אחרי ה-@     
 var b=a[1].split("."); 
 if (b.length>3)
 {alert('The email address cannot include more than one dot after the "@" sign'); document.form.mail.focus() ; 
   document.form.mail.style.borderColor="red";
 return false;}

//בדיקה שנקודות אינן צמודות
 if(b.length==2 && b[1].length<2)
 {alert('The dots must not be adjacent to one another'); document.form.mail.focus() ; 
   document.form.mail.style.borderColor="red";
 return false;}   

//אם הכל תקין
alert("Registration Succesful");

return true;}
//-->
</script>
<head>
	<meta charset="windows-1255">
	<title>Sign Up Page</title>
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
	        
	        input[type="submit"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d; transition: .6s;}
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
	<p style="Calibri">
			<br/><br/><br/><br/>
			<h2 align="center"> <font color="white" size="15"><b>Sign Up:</b></font></h2>
			<hr color="white" width="100"><br/>
		
		<form name="form" method="post" onSubmit="return validate();" action="Sign Up.jsp">

   			<input type="text" placeholder="Username" name="user" >  
			<input type="password" placeholder="Password" name="pass">
     		<input type="password" placeholder="Confirm Password" name="pass2">
     		<input type="text" placeholder="Email Address" name="mail" dir="ltr">
     		<input type="text" placeholder="First Name" name="Fname">
     		<input type="text" placeholder="Family Name" name="Lname">
       		<input type="submit" placeholder="submit" name="submit" value="Sign Up">  
       		</form>
       		
       		
       		<%
 
if(request.getMethod().equals("POST"))
{	 
	   String [][] result=null;
	   String user=request.getParameter("user");
       String password=request.getParameter("pass");
       String Fname=request.getParameter("Fname");
       String Lname=request.getParameter("Lname");
       String email=request.getParameter("mail");
       ClimateChange.insertUpdateDelete("insert into ClimateChange values('"+user+"' , '"+password+"' , '"+Fname+"', '"+Lname+"', '"+email+"')");
       session.setAttribute("user",user);
	     session.setAttribute("pass",password);
       	    if(user.equals("Admin") && password.equals("Password")){
   	         session.setAttribute("status","Admin");
   	     }
   	     else{
   	    	 result= result=ClimateChange.select("select * from ClimateChange where Name='"+user+"'&& Password='"+password+"'");
   	        if (result.length>0) 
   	        {
   	           session.setAttribute("status","member");
   	        }	
   	     	response.sendRedirect("Climate Crisis-home Page.jsp");
}}
       		
      
%>
	</body>
</html>
