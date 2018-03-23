<%-- 
    Document   : profile
    Created on : Dec 14, 2015, 5:27:19 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    </head>
    <body>
        <div class="shell">
        <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="login.jsp" class="cart-link">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
        <li><font color="white" weight="bold">Welcome <%= session.getAttribute("currentSessionUser")%></font></li>
        <li><a href="home_d.jsp">Home</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact_d.jsp">Contact</a></li>
        <li><a href="profile.jsp" class="active">Profile</a></li>
        <li><a href="home.jsp">Logout</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <div>
                <% String url="jdbc:derby://localhost:1527/ecommerce";
                        String username="root";
                        String password="root";
                        Connection con=DriverManager.getConnection(url,username,password);  
                        PreparedStatement ps=con.prepareStatement("select * from orders where username='"+session.getAttribute("currentSessionUser")+"'");
                        ResultSet rs=ps.executeQuery();
                        out.print("<table border='1'  cellpadding='5'>");
                  out.print("<tr>");
                  out.print("<th>Item ID</th>");
                  out.print("<th>Statue</th>");
                  
                  out.print("</tr>");
                  out.print("</center>");
                         while(rs.next())
                         {
                             String items=rs.getString("order_items");
                             out.print("<tr>");
                  out.print("<td><b>"+items+"</b></td>");
                  if(items==null)
                  {
                     out.print(""); 
                  }
                  else
                  {
                  out.print("<td><b> Ordered</b></td>");
                  }
                  out.print("</tr>");
                             
                         }
                         
                             
%>           
 </div>
    </body>
</html>
