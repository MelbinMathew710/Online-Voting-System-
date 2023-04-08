/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class register extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("userName");
        String address = request.getParameter("address");
        String pNumber = request.getParameter("pNumber");
        String email = request.getParameter("email");
        String voterNum = request.getParameter("vNumber");
        String dob = request.getParameter("dob");

        DatabaseManager db = new DatabaseManager();
        java.sql.Connection con = db.getConnection();
        
        try{           
            String query = "select * from voters where vNumber='"+voterNum+"'";
            PreparedStatement st = con.prepareStatement(query);
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next()){
                response.sendRedirect("register.jsp");   
            }else{
                st = con.prepareStatement("insert into voters(name,address,pNumber,email,vNumber,dob) values('"+name+"','"+address+"','"+pNumber+"','"+email+"','"+voterNum+"','"+dob+"')");
                st.executeUpdate();
                response.sendRedirect("success.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
