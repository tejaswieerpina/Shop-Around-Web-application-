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
@WebServlet(urlPatterns = {"/cart"})
public class cart extends HttpServlet {

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
            String[] orders=new String[50];
            String order="";
            orders[0]=request.getParameter("mc1");
            orders[1]=request.getParameter("mc2");
            orders[2]=request.getParameter("mc3");
            orders[3]=request.getParameter("mc4");
            orders[4]=request.getParameter("mc5");
            orders[5]=request.getParameter("mc6");
            orders[6]=request.getParameter("vc1");
            orders[7]=request.getParameter("vc2");
            orders[8]=request.getParameter("vc3");
            orders[9]=request.getParameter("vc4");
            orders[10]=request.getParameter("vc5");
            orders[11]=request.getParameter("vc6");
            orders[12]=request.getParameter("cac1");
            orders[13]=request.getParameter("cac2");
            orders[14]=request.getParameter("cac3");
            orders[15]=request.getParameter("cac4");
            orders[16]=request.getParameter("cac5");
            orders[17]=request.getParameter("cac6");
            orders[18]=request.getParameter("cc1");
            orders[19]=request.getParameter("cc2");
            orders[20]=request.getParameter("cc3");
            orders[21]=request.getParameter("cc4");
            orders[22]=request.getParameter("cc5");
            orders[23]=request.getParameter("cc6");
            
            HttpSession session = request.getSession();
            if((session.getAttribute("currentSessionUser"))!= null)
            {
                for(int i=0;i<24;i++)
                {
                    
                    if(orders[i]!=null)
                    {
                         order+=orders[i];
                    }
                }
                
                        String url="jdbc:derby://localhost:1527/ecommerce";
                        String username="root";
                        String password="root";
                        Connection con=DriverManager.getConnection(url,username,password);   
                         Statement stmt = con.createStatement();
                         String user=(String)session.getAttribute("currentSessionUser");
                         String query = " insert into orders values('"+order+"','"+user+"')";
             int rs=stmt.executeUpdate(query);
             if(rs==1)    
             {
                 response.sendRedirect("home_d.jsp");
             }
            else
             {
                 response.sendRedirect("login.jsp");
             }
            }
            
           
            
            
        } 
        catch (SQLException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
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
