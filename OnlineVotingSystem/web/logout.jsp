<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%
            HttpSession ssn = request.getSession();
            ssn.removeAttribute("adminName");
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
