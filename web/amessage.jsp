<%-- 
    Document   : amessage
    Created on : Dec 14, 2015, 9:52:50 AM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    </head>
    <body>
         <div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <!--<a href="shoppingcart.jsp" class="cart-link">Your Shopping Cart</a>-->
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
     <ul>
         <li><font color="white">Welcome <%= session.getAttribute("sessionUser")%></font></li>
       <!-- <li><a href=".jsp" >H</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact_d.jsp">Contact</a></li>-->
        <li><a href="main_home.jsp">Logout</a></li>
      </ul>-->
    </div>
    <!-- End Navigation -->
  </div><p>&nbsp;</p><p>&nbsp;</p>
        <div>
       <% 
       
       String url="jdbc:derby://localhost:1527/ecommerce";
                        String username="root";
                        String password="root";
                        Connection con=DriverManager.getConnection(url,username,password);   
                         Statement stmt = con.createStatement();
		 
		  PreparedStatement ps=con.prepareStatement("select * from message");
                  ResultSet rs=ps.executeQuery();
                  out.print("<center>");
                  out.println("<h1>Feedback from the customers</h1>");
                  out.println("<br>");
                  out.println("<br>");
                  out.print("<table border='1'  cellpadding='5'>");
                  out.print("<tr>");
                  out.print("<th>Username</th>");
                  out.print("<th>Item ID</th>");
                  out.print("<th>Description</th>");
                  out.print("<th>Experience</th>");
                  out.print("</tr>");
                  out.print("</center>");
                  while (rs.next ())
                   {
                        String name=rs.getString("username");
                        String item=rs.getString("itemname");
                        String desc=rs.getString("desciption");
                        String exp=rs.getString("exp");
                  out.print("<tr>");
                  out.print("<td><b>"+name+"</b></td>");
                  out.print("<th><b>"+item+"</b></td>");
                  out.print("<th><b>"+desc+"</b></td>");
                  out.print("<th><b>"+exp+"</b></td>");
                  
                  out.print("</tr>");
                        out.print("<tr>");
                        out.println();
                        out.print("</tr>");  
                        
                    }
                  //out.println("<a href=\"http://localhost:8080/Final_project/home_d.jsp\">Checkout</a>");
                  //out.println("<br><br>");
%> 
        
        </div>
         </div>
    </body>
</html>
