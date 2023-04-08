
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="styles.css?ver=1.1">
    </head>
    <%@include file="adminNavbar.jsp"  %>
    <body>
        <form action="register" method="post">    
            <h3>Please enter the details: </h3>
            <label for="userName">Name</label>
            <br>
            <input name="userName" id="userName" type="text" required="true">
            <br>
            <label for="pNumber">Phone Number</label>
            <br>
            <input name="pNumber" id="pNumber" type="number" required="true">
            <br>
            <label for="email">Email</label>
            <br>
            <input name="email" id="email" type="email" required="true">
            <br>
            <label for="address">Address</label>
            <br>
            <textarea name="address" id="address" type="text" required="true"></textarea>
            <br>
            <label for="vNumber">Voter Number</label>
            <br>
            <input name="vNumber" id="vNumber" type="text" required="true">
            <br>
            <label for="dob">Date of Birth</label>
            <br>
            <input name="dob" id="dob" type="date" required="true">
            <br>
            <button type="submit">Submit</button>
            <br>
            <br>
        </form> 
    </body>
</html>