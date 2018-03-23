/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SUSHMA
 */
@WebServlet(urlPatterns = {"/contact"})
public class contact extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String iname=request.getParameter("iname");
             String desc=request.getParameter("desc");
              String exp=request.getParameter("exp");
              HttpSession session = request.getSession(true);	    
                
              String url="jdbc:derby://localhost:1527/ecommerce";
            String username="root";
            String password="root";
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt = con.createStatement();
             String query = " insert into message values('"+session.getAttribute("currentSessionUser")+"','"+iname+"','"+desc+"','"+exp+"')";
             int rs=stmt.executeUpdate(query);
              if(rs==1)    
             {
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Feedback is submitted!!');");
                 out.println("location='home_d.jsp';");
                 //response.sendRedirect("home_d.jsp");
                 out.println("</script>");
                // response.sendRedirect("home_d.jsp");
             }
            else
             {
                  out.println("<script type=\"text/javascript\">");
                 out.println("alert('Failed to submit feedback!!');");
                 out.println("location='message.jsp';");
                 //response.sendRedirect("home_d.jsp");
                 out.println("</script>");
                //response.sendRedirect("message.jsp");
             }
        } catch (SQLException ex) {
            Logger.getLogger(contact.class.getName()).log(Level.SEVERE, null, ex);
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
