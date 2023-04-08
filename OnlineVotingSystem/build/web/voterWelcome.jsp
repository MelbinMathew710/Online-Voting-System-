<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Voting System</title>
        <link rel="stylesheet" href="styles.css?ver=1.1">
    </head>
    
    <%@include file="navbar.jsp"  %>
    
    <body>        
        <form action="vote" method="post">    
            <h3>Please provide the required details</h3>
            <label for="vNumber">Voter Id</label>
            <br>
            <input name="vNumber" id="vNumber" type="number" required="true"> 
            <br>
            <label for="parties">Choose a party</label>
            <br>
            <select name="parties" id="parties" required="true">
                <option value="aap">AAP</option>
                <option value="bjp">BJP</option>
                <option value="bsp">BSP</option>
                <option value="cong">Congress</option>
                <option value="cpi">CPI</option>
            </select> 
            <br>
            <button type="submit">Vote</button>
            <br>
        </form>   
    </body>
</html>