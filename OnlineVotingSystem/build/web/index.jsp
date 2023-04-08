<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
        <link rel="stylesheet" href="styles.css?ver=1.4">
    </head>
    
    <%@include file="navbar.jsp"  %>
    
    <body>        
        <form action="VoterLogin" method="post">    <!-- forms- will send request to a particular server, action- which servlet we want to call, method- what we want to do like post data or update,etc. -->
            <h3>Enter your Voter Id: </h3>
            <label for="vNumber">Voter Id</label>
            <br>
            <input name="vNumber" id="vNumber" type="number" required="true">   <!-- required="true" is used so that its compulsory to put details -->
            <br>
            <button type="submit">Login</button>
            <br>
            <br>
            <a href="adminLogin.jsp">Admin</a>
        </form>   
    </body>
</html>