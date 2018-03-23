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

/**
 *
 * @author SUSHMA
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

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
            String urname=request.getParameter("urname");
            String rpwd=request.getParameter("rpwd");
            String street=request.getParameter("street");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String country=request.getParameter("country");
            String phoneno=request.getParameter("phoneno");
            
            String url="jdbc:derby://localhost:1527/ecommerce";
            String username="root";
            String password="root";
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt=con.createStatement();
            String query="insert into customers values('"+urname+"','"+rpwd+"','"+street+"','"+city+"','"+state+"','"+country+"','"+phoneno+"')";
            int rs=stmt.executeUpdate(query);
            if(rs==1)
            {
                response.sendRedirect("login.jsp");
            }
            else
            {
                response.sendRedirect("register.jsp");
            }
            
            /*String urname=request.getParameter("urname");
            String rpwd=request.getParameter("rpwd");
            String street=request.getParameter("street");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String country=request.getParameter("country");
            String phoneno=request.getParameter("phoneno");
            String url="jdbc:derby://localhost:1527/sushma";
            String username="root";
            String password="root";
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt = con.createStatement();
            
             String query = " insert into customers values('"+urname+"','"+rpwd+"','"+street+"','"+city+"','"+state+"','"+country+"','"+phoneno+"')";
             
             int rs=stmt.executeUpdate(query);
             out.println("sushma");
             if(rs==1)    
             {
                 
                 response.sendRedirect("login.jsp");
             }
            else
             {
                 response.sendRedirect("register.jsp");
             }
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        } catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
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
