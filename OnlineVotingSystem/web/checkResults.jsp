<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Results</title>
        <link rel="stylesheet" href="styles.css">
        
        <%
            Integer numberOfVotes[] = new Integer[100];
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingDbMarch","root","melbin123");
            
            String query = "select party,count(party) as cnt from vote group by party" ;
            PreparedStatement st = con.prepareStatement(query);
            ResultSet rs = st.executeQuery(query);
            
            int i = 0;
            while(rs.next()){
                int temp = Integer.valueOf(rs.getString("cnt"));
                numberOfVotes[i] = temp-1;
                i++;
            }
            
        %>
        
    </head>
    <%@include file="adminNavbar.jsp"  %>
    <body>
        <table>
            <tr>
                <th>Parties</th>
                <th>Names</th>
                <th>Votes</th>
            </tr>
            <tr>
                <td>
                    <img src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71Ng4IC65-L._SL1500_.jpg" alt="AAP">
                </td>
                <td>Aam Aadmi Party</td>
                <td><%=numberOfVotes[0]%></td>
            </tr>
            <tr>
                <td>
                    <img src="https://cdn.shopify.com/s/files/1/1284/2827/products/BJP_1024x1024.jpg?v=1614601842" alt="BJP">
                </td>
                <td>BJP</td>
                <td><%=numberOfVotes[1]%></td>
            </tr>
            <tr>
                <td>
                    <img src="https://www.india.com/wp-content/uploads/2014/03/congress-symbol.jpg" alt="Congress">
                </td>
                <td>Congress</td>
                <td><%=numberOfVotes[3]%></td>
            </tr>
            <tr>
                <td>
                    <img src="https://cdn.shopify.com/s/files/1/1284/2827/products/P_8_1024x1024.png?v=1553158440" alt="BSP">
                </td>
                <td>Bahujan Samaj Party</td>
                <td><%=numberOfVotes[2]%></td>
            </tr>
            <tr>
                <td>
                    <img src="https://cdn.shopify.com/s/files/1/1284/2827/products/CPIMAX_1024x1024.jpg?v=1614750714" alt="CPI">
                </td>
                <td>CPI</td>
                <td><%=numberOfVotes[4]%></td>
            </tr>
        </table>
    </body>
</html>
