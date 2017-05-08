<%-- 
    Document   : populate.jsp
    Created on : 8 May, 2017, 2:54:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Populate Database</h1>
        <form action="populate" method="get">
                <table>
                    	<tr>
                            <td>Enlorment No.:</td><td><input type="text" name="userid" minlength="12" maxlength="12"/></td>
			</tr>
			<tr>
                            <td>Mail id:</td><td><input type="mail" name="mail" /></td>
			</tr>
                        <tr>
                            <td>Mobile No.</td><td><input type="text" name="mobile" minlength="10" /></td>
                        </tr>
			<tr>
                            <td></td><td><button type="submit">Insert</button></td>
			</tr>
                    </table>
        </form>
    </body>
</html>
