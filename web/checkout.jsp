<%-- 
    Document   : checkout
    Created on : Dec 14, 2015, 11:07:10 AM
    
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javax.jms.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
    <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <script>
            function validate(){
                
                
                var cnum = document.getElementById('cno').value;
               
                var reg = new RegExp("^4[0-9]{6,}$");
                var reg1 = new RegExp("^5[0-9]{6,}$");
                var reg2 = new RegExp("^3[0-9]{6,}$");
                var reg3 = new RegExp("^6[0-9]{6,}$");

                if(reg.test(cnum))
                {
                    alert('Visa');
                    
                   
                }
                else if(reg1.test(cnum))
                    alert('Master Card');
                else if(reg2.test(cnum))
                    alert('American Express'); 
                else if(reg3.test(cnum))
                    alert('Discover');

            }
            </script>
    </head>
    <body>
         <div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="shoppingcart.jsp" class="cart-link">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
         <li><font color="white">Welcome <%= session.getAttribute("currentSessionUser")%></font></li>
        <li><a href="home_d.jsp" >Home</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact_d.jsp">Contact</a></li>
        <li><a href="profile.jsp">Profile</a></li>
        <li><a href="home.jsp">Logout</a></li>        
      </ul>
    </div>
    <!-- End Navigation -->
  </div><p>&nbsp;</p><p>&nbsp;</p>
        <div>
       <% 
       
       String url="jdbc:derby://localhost:1527/ecommerce";
                        String username="root";
                        String password="root";
                        Connection con=DriverManager.getConnection(url,username,password);   
                         
		 
		 /* PreparedStatement ps=con.prepareStatement("select * from orders where username='"+session.getAttribute("currentSessionUser")+"'");*/
                 PreparedStatement ps=con.prepareStatement("select i.item_id,i.item_desc,i.cost from"
                         + " INVENTORY i,ORDERS o where i.ITEM_ID=o.ORDER_ITEMS and o.USERNAME ="
                         + " '"+session.getAttribute("currentSessionUser")+"'");
                 
                         ResultSet rs=ps.executeQuery();
                  
                  out.print("<center>");
                  out.print("<h1> Items in the shopping cart</h1>");
                  out.print("<br><br>");
                  out.print("<b><h4>Username:"+session.getAttribute("currentSessionUser")+"</h4></b>");
                  out.print("<br>");
                  out.print("<h4>Items in the cart:</h4>");
                  out.print("<h4>"+session.getAttribute("itemid")+"</h4>");
                  out.print("<table border='1'  cellpadding='5'>");
                  out.print("<tr>");
                  out.print("<th>Item ID</th>");
                  out.print("<th>Item Name</th>");
                  out.print("<th>Item Cost</th>");
                  out.print("</tr>");
                  out.print("</center>");
                  StringBuilder str = new StringBuilder() ;	 
                  while(rs.next())
                  {	 
                        String items=rs.getString("item_id");
                        
                        Object obj = new Object();
                           str.append(" |"+items+"|");
                        
                        String idesc=rs.getString("item_desc");
                        String icost=rs.getString("cost");
                         out.print("<tr>");
                  out.print("<td><b>"+items+"</b></td>");
                  out.print("<th><b>"+idesc+"</b></td>");
                  out.print("<th><b>"+icost+"</b></td>");
                  out.print("</tr>");
                  //out.print("<tr>");
                       // out.println();
                        //out.print("</tr>");
                       /* out.println("<b>"+items+"</b>");
                        out.println("<b>"+idesc+"</b>");
                        out.println("<b>"+icost+"</b>");*/
                  }
                  session.setAttribute("itemid", str.toString());
                 /* out.print("<table border='1'  cellpadding='5'>");
                  out.print("<tr>");
                  out.print("<th>User</th>");
                  out.print("<th>Item ID</th>");
                  out.print("</tr>");
                  out.print("</center>");
                  while (rs.next ())
                   {
                        String name=rs.getString("username");
                        String items=rs.getString("order_items");
                       
                  out.print("<tr>");
                  out.print("<td><b>"+name+"</b></td>");
                  out.print("<th><b>"+items+"</b></td>");
                  out.print("</tr>");
                        out.print("<tr>");
                        out.println();
                        out.print("</tr>");  
                        
                    }*/
                  
                  out.println("<br><br>");
                  //Statement stmt = con.createStatement();
                   PreparedStatement ps1=con.prepareStatement("select SUM(i.cost) as total_cost from INVENTORY i,ORDERS o where i.ITEM_ID=o.ORDER_ITEMS and o.USERNAME = '"+session.getAttribute("currentSessionUser")+"'");
                  //ResultSet rs1=stmt.executeQuery("select SUM(i.cost) from INVENTORY i,ORDERS o where i.ITEM_ID=o.ORDER_ITEMS and o.USERNAME = '"+session.getAttribute("currentSessionUser")+"'");
                   ResultSet rs1=ps1.executeQuery();
                   while(rs1.next())
                  {
                      float totalcost=rs1.getFloat(1);
                      out.println("<center>");
                  out.println("<h2>Total cost:"+totalcost+"$</h2>");
                  out.println("</center>");
                  }
                  
                  
                   /*out.println("<a href=\"http://localhost:8080/Final_project/home_d.jsp\">Checkout</a>");
                  out.println("<br><br>");*/
%> 
        
        </div><p>&nbsp;</p><p>&nbsp;</p>
        <div>
             <center>
                    <h1>Make a Payment</h1>
                    <br><br>
                    <h4> Enter details for payment.</h4>
                    <br>
                    <form action='checkout' method='post'>
                         <div>
                            <label>Name on card:</label>
                            <input type="text" name="cname" >
                         </div><p>&nbsp;</p>
                                                
                        <div> 
                            <label>Card Number</label>
                            <input type="text" name="cno" id="cno" onchange="validate()">
                        </div><p>&nbsp;</p>
                        
                        
                        <div> 
                            <label>Security code</label>
                            <input type="password" name="scode" >
                        </div><p>&nbsp;</p>
                        <div> 
                            <label>Expiry date:</label>
                            <input type="text" name="exp" >
                        </div><p>&nbsp;</p>
                        
                        <div> 
                            <label>Phone number:</label>
                            <input type="text" name="phoneno" >
                        </div>
                        <br><br>
                        <input type="submit" value="Make payment"><br><br>
                    </form>
                </center>
        </div>
         </div>
    </body>
</html>
