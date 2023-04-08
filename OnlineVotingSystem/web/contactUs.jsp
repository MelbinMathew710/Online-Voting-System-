

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <link rel="stylesheet" href="styles.css?ver=1.1">
    </head>
    <%@include file="navbar.jsp"  %>
    <body>
        <form action="contact" method="post">    
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
            <label for="comment">Comment</label>
            <br>
            <textarea name="comment" id="comment" type="text" required="true"></textarea>
            <br>
            <button type="submit">Submit</button>
            <br>
            <br>
        </form> 
    </body>
</html>
