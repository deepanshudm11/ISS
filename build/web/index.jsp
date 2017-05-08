<%-- 
    Document   : index
    Created on : 20 Apr, 2017, 10:22:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>ISS</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
	<h2 id="name">Information Sharing System </h2>
	<ul id="nav">
		<li><a href="#home">Home</a></li>
		<li><a href="Register.jsp">Register</a></li>
		<li><a href="#contact">Contact us</a></li>
		<li><a href="#Developers">Developers</a></li>
	</ul>
	</header>
	<section id="login">
		 <p>
                 <form id="student" action="StudentLogin" method="post">
                    <h1>Student Login:</h1>
                    <table>
                    	<tr>
                            <td><span class="inner">UserId:</span></td><td><input type="text" name="userid" minlength="12" maxlength="12"/></td>
			</tr>
			<tr>
                            <td><span class="inner">Password:</span></td><td><input type="password" name="pass" minlength="8" /></td>
			</tr>
			<tr>
                            <td></td><td><button type="submit">LogIn</button></td>
			</tr>
                    </table>
		</form>
                 <form id="faculty" action="FacultyLogin" method="post">
                    <h1>Faculty Login:</h1>
                    <table>
                    	<tr>
                            <td><span class="inner">UserId:</span></td><td><input type="text" name="userid" minlength="12" maxlength="12"/></td>
			</tr>
			<tr>
                            <td><span class="inner">Password:</span></td><td><input type="password" name="pass" minlength="8" /></td>
			</tr>
			<tr>
                            <td></td><td><button type="submit">LogIn</button></td>
			</tr>
                    </table>
		</form>
		<form id="admin" action="AdminLogin" method="post">
                    <h1>Admin Login:</h1>
                    <table>
                        
         		<tr>
                            <td><span class="inner">UserId:</span></td><td><input type="text" name="userid"/></td>
			</tr>
			<tr>
                            <td><span class="inner">Password:</span></td><td><input type="password" name="pass" minlength="8" /></td>
			</tr>
			<tr>
                            <td></td><td><button type="submit">LogIn</button></td>
			</tr>
                    </table>
		</form>
		</p>
	</section>
        <footer id="Developers">
		<h3><b>	Developers : Deepanshu and Deepak
		</b></h3>	
	</footer>
</body>
</html>