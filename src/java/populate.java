/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class populate extends HttpServlet {

    Connection con;
    PreparedStatement ps;
    
    @Override
    public void init(){
        try{
        String qr="insert into studentinfo values(?,?,?)";
        Class.forName("com.mysql.jdbc.Driver");
        con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ISS","root","root");
        ps=(PreparedStatement) con.prepareStatement(qr);
        }
        catch(Exception e){}
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String userid=request.getParameter("userid");
        String mail=request.getParameter("mail");
        String mobile=request.getParameter("mobile");
        try {
            ps.setString(1,userid);
            ps.setString(2, mail);
            ps.setString(3, mobile);
            ps.executeUpdate();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet populate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Record Inserted Successfully</h1>");
            out.println("<h1><a href=\"populate.jsp\">Insert More Record</a></h1>");
            out.println("<h1><a href=\"AdminHomePage.jsp\">Admin Home</a></h1>");
            out.println("<h1><a href=\"ShowRecord\">Show All Records</a></h1>");
            out.println("</body>");
            out.println("</html>");
            } catch (SQLException e) {
                out.println(e);
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
