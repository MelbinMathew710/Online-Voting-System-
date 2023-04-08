

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <%@include file="navbar.jsp"  %>
    <body>
        <form action="adminLogin" method="post"> 
            <h3>Please fill the required details: </h3>
            <label for="adminName">Name</label>
            <br>
            <input name="adminName" id="adminName" type="text" required="true">
            <br>
            <label for="password">Password</label>
            <br>
            <input name="password" id="password" type="password" required="true">     <!-- type="password will show input as * -->
            <br>
            <button type="submit">Login</button>
            <br>
            <br>
        </form>  
    </body>
</html>
