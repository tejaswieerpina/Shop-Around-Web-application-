<%-- 
    Document   : register
    Created on : Dec 13, 2015, 2:20:02 AM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
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
        <li><a href="home.jsp" >Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp" class="active">Register</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <div>
                <center>
                    <h1>Account Registration</h1>
                    <br><br>
                    <h4> Doesn't have an account? Then create a account to shop faster and to keep a track of the order history.</h4>
                    <br>
                    <form action='register' method='post'>
                         <div>
                            <label>Username:</label>
                            <div><input type="text" name="urname" ></div>
                         </div>
                         <div>
                            <label>Password:</label>
                            <div><input type="password" name="rpwd" ></div>
                        </div>
                        <div>
                            <label><b>Billing Address</b></label>
                        </div>
                        <div> 
                            <label>Street:</label>
                            <div><input type="text" name="street" ></div>
                        </div>
                        <div> 
                            <label>City:</label>
                            <div><input type="text" name="city" ></div>
                        </div>
                        <div> 
                            <label>State:</label>
                            <div><input type="text" name="state" ></div>
                        </div>
                        <div> 
                            <label>Country:</label>
                            <div><input type="text" name="country" ></div>
                        </div>
                        <div> 
                            <label>Phone number:</label>
                            <div><input type="text" name="phoneno" ></div>
                        </div>
                        <br><br>
                        <input type="submit" value="Register">
                    </form>
                </center>
            </div>
        </div>
    </body>
</html>
