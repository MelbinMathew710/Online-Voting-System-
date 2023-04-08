

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <%@include file="adminNavbar.jsp"  %>
    <body>
        <form>  
            <h2>Welcome Admin !</h2>
            <a href="register.jsp">Register</a>
            <a href="checkResults.jsp">Check Results</a>
        </form>
    </body>
</html>
/