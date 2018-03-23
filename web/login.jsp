
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
        <li><a href="login.jsp" class="active">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="checkout.jsp">Checkout</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
            <p>&nbsp;</p> <p>&nbsp;</p>
            
            <!--<div> 
                <div><center>
                <form action="login.java" method="post">
                   
 
                </form>
            
            </center>-->
            <center><h1>Account Login</h1></center>
            <p>&nbsp;</p> <p>&nbsp;</p>
            <div class="mainheading">
                <div class="logindiv">
                    <h2 class="heading2">Returning Customer </h2><p>&nbsp;</p>
                    <h4>I'm a returning customer</h4><p>&nbsp;</p>
                    
                    <form action='login' method='post'>
                        <div>
                            <label>Username:</label>
                            <div><input type="text" name="uname" ></div>
                        </div>
                         <div>
                            <label>Password:</label>
                            <div><input type="password" name="pwd" ></div>
                        </div>   
                        <br><br>
                        <input type="submit" value="Login">
                    </form>
                    
                    </div>
                <div class="logindiv">
                     <h2 class="heading2">New Customer </h2><p>&nbsp;</p>
                     <h4 > Register Account</h4><p>&nbsp;</p>
                     <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
              <br>
              <a href="register.jsp">Continue</a>
                </div>
            </div>
            <!--<div class="loginbox">
              <h4 class="heading4">I am a returning customer</h4>
              <form class="form-vertical" action="login.java" method="post" >
                <fieldset>
                  <div class="control-group">
                    <label  class="control-label">Login:</label>
                    <div class="controls">
                      <input type="text" name="username"  class="span3">
                    </div>
                  </div>
                  <div class="control-group">
                    <label  class="control-label"  >Password:</label>
                    <div class="controls">
                      <input type="password" name="password"  class="span3">
                    </div>
                  </div>
                  
                  <br>
                  <br>
                  
                  <input class="btn btn-success" type="submit" value="Login" >
                </fieldset>
               
              </form>
            </div>
                
                <div class="logindiv">
                    <h2 class="heading2">New Customer </h2>
            <div class="loginbox">
              <h4 class="heading4"> Register Account</h4>
              <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
              <br>
              <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
              <br>
              <br>
              <a href="inscription.jsp" class="btn btn-success">Continue</a>
            </div>
                </div>
            </div>
    -->
            
            
            
            
            
            
        </div>      
            
    </body>
</html>
      