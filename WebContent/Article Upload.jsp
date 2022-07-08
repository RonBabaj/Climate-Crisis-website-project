<!--<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>-->
        <!--<%@page import="db.ForDataBase.*"%>-->
<jsp:useBean id="ClimateChange" class="db.ForDataBase" scope="session"/>
<%
request.setCharacterEncoding("windows-1255");
response.setCharacterEncoding("windows-1255");
%>
<!DOCTYPE html>
<html>
<script>
function textAreaAdjust(element) {
  element.style.height = "1px";
  element.style.height = (25+element.scrollHeight)+"px";
}

</script>
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
alert("Article Uploaded Succesfuly");

return true;}
//-->
</script>



<head>
	<meta charset="windows-1255">
	<title>Article Upload</title>
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
	        textarea{width: 50%; background: none; border: 1px solid #fff; border-radius: 3px; padding: 6px 15px; box-sizing: border-box; margin-bottom: 20px; font-size: 18px; color: #fff;}
	        input[type="button"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d;}
	        input[type="button"]:hover{ background: #a4b15c; transition: .6s;}
	        
	         input[name="content"]::placeholder { padding-top:0;text-align: start;}
	        
	        
	        input[type="submit"]{ background: #bac675; border: 0; cursor: pointer; color: #3e3d3d; transition: .6s;}
	        input[type="submit"]:hover{ background: #a4b15c; transition: .6s;}
	        ::placeholder{color: #fff;}
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
			<h2 align="center"> <font color="white" size="15"><b>Upload An Article:</b></font></h2>
			<hr color="white" width="300"><br/>
		
		<form name="form" method="post" onSubmit="return validate();" action="Article Upload.jsp">

   			<input type="text" placeholder="Name Of Author" name="Name Of Author">    
            <br/>
            <input type="text" placeholder="Title" name="Title"> 
            <br/>
            <p style="Calibri">
            <font size="16">
          
          	<textarea id="a" onkeyup="textAreaAdjust(this)" style="font-family:calibri;overflow:auto;" rows="3" cols="100" placeholder="Content" name="content"></textarea>
          	
          	</font>
     		</p>
     		<input type="submit" placeholder="submit" name="submit" value="Upload Article">
       		</form>
       		
       		
       		<%
 
if(request.getMethod().equals("POST"))
{	 
      
       String Title=request.getParameter("Title");
       String content=request.getParameter("content");
       String Name=request.getParameter("Name Of Author");
       ClimateChange.insertUpdateDelete("insert into Posts values('"+Title+"' , '"+content+"' , '"+Name+"')");
       response.sendRedirect("Articles.jsp");
}
%>
<%
           }
           else
          
           if(session.getAttribute("status")!=null && session.getAttribute("status").equals("Admin"))
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
                <a href="AdminPage.jsp">Admin Page</a>
           </li>
           <li>
              	<a href="Sign%20Out.jsp">Sign Out</a>
           </li>
        </ul>
		</nav>
	<body>
	<p style="Calibri">
			<br/><br/><br/>
			<h2 align="center"> <font color="white" size="15"><b>Upload An Article:</b></font></h2>
			<hr color="white" width="300"><br/>
		
		<form name="form" method="post" onSubmit="return validate();" action="Article Upload.jsp">

   			<input type="text" placeholder="Name Of Author" name="Name Of Author">    
            <br/>
            <input type="text" placeholder="Title" name="Title"> 
            <br/>
            <p style="Calibri">
            <font size="16">
          
          	<textarea id="a" onkeyup="textAreaAdjust(this)" style="font-family:calibri;overflow:auto;" rows="3" cols="100" placeholder="Content" name="content"></textarea>
          	
          	</font>
     		</p>
     		<input type="submit" placeholder="submit" name="submit" value="Upload Article">
       		</form>
       		
       		
       		<%
 
if(request.getMethod().equals("POST"))
{	 
      
       String Title=request.getParameter("Title");
       String content=request.getParameter("content");
       String Name=request.getParameter("Name Of Author");
       ClimateChange.insertUpdateDelete("insert into Posts values('"+Title+"' , '"+content+"' , '"+Name+"')");
       response.sendRedirect("Articles.jsp");
}
%>
<%
           }
           else
           {
        %>        
	<%
	
	out.print("You must be signed in in order to access that page");
	
	%>   
  
<%}%>
	</body>
</html>