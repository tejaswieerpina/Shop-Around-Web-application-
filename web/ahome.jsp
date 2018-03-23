<%-- 
    Document   : ahome
    Created on : Dec 14, 2015, 9:37:59 AM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div id="cart"> <!--<a href="login.jsp" class="cart-link">Your Shopping Cart</a>-->
      <div class="cl">&nbsp;</div>
     <!-- <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span>--> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
     <ul>
        <li><a href="main_home.jsp" >Home</a></li>
        <!--<li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp" class="active">Register</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>-->
    </div>
    <!-- End Navigation -->
    
  </div>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <div>
                <center>
                    <h1>Admin Login</h1>
                    <br><br>
                    
                    
                    <form action='alogin' method='post'>
                         <div>
                            <label>Username:</label>
                            <input type="text" name="uaname" >
                         </div><p>&nbsp;</p>
                         <div>
                            <label>Password:</label>
                            <input type="password" name="apwd" >
                        </div>
                        
                        <br><br>
                        <input type="submit" value="Login">
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
