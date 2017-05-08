<%-- 
    Document   : Register
    Created on : 6 May, 2017, 9:56:07 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    	<link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <header>
            <h1 id="name">Registration</h1>
        </header>
        <form id="newuser" action="Register">
            <table>
                <tr>
                    <td>Enlorment No.</td><td><input type="text" name="userid" minlength="12" maxlength="12"/></td>
                </tr>
                <tr>
                    <td>Password</td><td><input type="password" name="password" minlength="8"/></td>
                </tr>
                <tr>
                    <td>UserType:</td><td><select name="usertype"><option>Student</option><option>Faculty</option></select></td>
                </tr>
                <tr>
                    <td></td><td><button type="submit" >Register</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
